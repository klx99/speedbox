#!/bin/bash

set -o errexit
set -o nounset

print_usage()
{
	echo '
NAME
       upload-library-to-nexus

SYNOPSIS
       upload-library-to-nexus [options]

DESCRIPTION
       Upload library to nexus.
			 Example: ./upload-library-to-nexus.sh --username=usr --password=pwd --pom-file=/xxx/android/repositories/com/facebook/react/react-native/0.39.0-qc14/react-native-0.39.0-qc14.pom

OPTIONS
       -u, --username=(username)
                 Required. remote maven repo username.

       -w, --password=(password)
                 Required. remote maven repo password.

       -p, --pom-file=(path)
                 Required. pom file path.

       --url=(url)
                 Optional. remote maven repo url.
                 If unspecified, use ['$MAVEN_URL'] as default.

       --lib-file=(path)
                 Optional. The upload library file path. If unspecified, use [pom-file].{lib} as default.

       --lib-type=(aar, jar, ...)
                 Optional. The upload library file type. If unspecified, use aar as default.

       --debug
                 Optional. Print debug verbose.

       -h, --help
                 Optional. Print help infomation and exit successfully.';
}

parse_options()
{
	cmd_getopt="getopt";
	if [ "$KERNEL_NAME" == "Darwin" ]; then
		cmd_getopt="/usr/local/Cellar/gnu-getopt/*/bin/getopt";
	fi

	options=`$cmd_getopt -o u:w:p:h \
			 --long username:,password:,pom-file:,url:,lib-file:,lib-type:,debug,help \
			 -n 'upload-library-to-nexus' -- "$@"`;
	eval set -- "$options"
	while true; do
		case "$1" in
			(-u | --username)
				MAVEN_USERNAME=$2;
				shift 2;
				;;
			(-w | --password)
				MAVEN_PASSWORD=$2;
				shift 2;
				;;
			(-p | --pom-file)
				POM_FILE_PATH=$2;
				shift 2;
				;;
			(--url)
				MAVEN_URL=$2;
				shift 2;
				;;
			(--lib-file)
				LIB_FILE_PATH=$2;
				shift 2;
				;;
			(--lib-type)
				LIB_FILE_TYPE=$2;
				shift 2;
				;;
			(--debug)
				DEBUG_VERBOSE=true;
				shift 1;
				;;
			(-h | --help)
				print_usage;
				exit 0;
				;;
			(- | --)
				shift;
				break;
				;;
			(*)
				echo "Internal error!";
				exit 1;
				;;
		esac
	done
}

logdbg()
{
	if [[ $DEBUG_VERBOSE == false ]]; then
		return;
	fi

	echo -e " [d]: $@";
}

logtrace()
{
	echo -e "\033[1;34m [-]: $@ \033[00m";
}

loginfo()
{
	echo -e "\033[1;32m [+]: $@ \033[00m";
}

logwarn()
{
	echo -e "\033[1;33m [!]: $@ \033[00m";
}

logerr_and_exit()
{
	echo -e "\033[1;31m [x]: $@ \033[00m";
	exit 1;
}

trim() {
	local var="$*"
	var="${var#"${var%%[![:space:]]*}"}"   # remove leading whitespace characters
	var="${var%"${var##*[![:space:]]}"}"   # remove trailing whitespace characters
	echo -n "$var"
}

print_input_log()
{
	logtrace "*********************************************************";
	logtrace " Input infomation";
	logtrace "    maven url        : $MAVEN_URL";
	logtrace "    maven username   : $MAVEN_USERNAME";
	logtrace "    maven password   : $MAVEN_PASSWORD";
	logtrace "    library type     : $LIB_FILE_TYPE";
	logtrace "    library file     : $LIB_FILE_PATH";
	logtrace "    pom file         : $POM_FILE_PATH"
	logtrace "    debug verbose    : $DEBUG_VERBOSE";
	logtrace "*********************************************************";
}

prepare_env()
{
	if [[ -z "$POM_FILE_PATH"
	|| -z "$MAVEN_USERNAME"
	|| -z "$MAVEN_PASSWORD" ]]; then
		print_input_log;
		logerr_and_exit "arguments is not correct. use -h or --help for prompt.";
	fi

	if [ -z "$LIB_FILE_PATH" ]; then
		LIB_FILE_PATH="${POM_FILE_PATH%.*}.$LIB_FILE_TYPE";
	fi

	NEED_INSTALL=;
	if [[ -z $(which xmllint) ]]; then
		NEED_INSTALL+=" libxml2-utils";
	fi
	if [[ -z $(which mvn) ]]; then
		NEED_INSTALL+=" maven";
	fi
	if [[ "$NEED_INSTALL" != "" ]]; then
		sudo apt install -y $NEED_INSTALL;
	fi
}

get_xml_linenum_byxpath()
{
	FUNCTION_RETVAL=;
	local xmlfile="$1";
	local expression="$2";
	local cmd="$3";

	local match=$(xmllint --xpath "$expression" "$xmlfile" 2>/dev/null |$cmd -n 1);
	if [[ -z "$match" ]]; then
		FUNCTION_RETVAL=-1;
		return;
	fi

	local linenum=$(grep -n "$match" "$xmlfile" |cut -f1 -d:);
	if [[ -z "$linenum" ]]; then
		FUNCTION_RETVAL=-1;
		return;
	fi

	FUNCTION_RETVAL=$linenum
	return;
}

get_xmlhead_linenum_byxpath()
{
	FUNCTION_RETVAL=;
	local xmlfile="$1";
	local expression="$2";

	get_xml_linenum_byxpath "$xmlfile" "$expression" "head"
	#FUNCTION_RETVAL=$FUNCTION_RETVAL

	return;
}

get_xmltail_linenum_byxpath()
{
	FUNCTION_RETVAL=;
	local xmlfile="$1";
	local expression="$2";

	get_xml_linenum_byxpath "$xmlfile" "$expression" "tail"
	#FUNCTION_RETVAL=$FUNCTION_RETVAL

	return;
}

make_pom_xml()
{
	sed -n '1h;1!H;${;g;s/<distributionManagement>.*<\/distributionManagement>//g;p;}' \
		 "$POM_FILE_PATH" > "$FINAL_POM_PATH.tmp"; #过滤掉原来的distributionManagement

	local expression="/*[name()='project']";
	get_xmltail_linenum_byxpath "$FINAL_POM_PATH.tmp" "$expression";
	linenum_tail_project=$FUNCTION_RETVAL;
	if [[ "$linenum_tail_project" < 0 ]]; then
		logerr_and_exit "can't find </project> node";
	fi

	head -n $(($linenum_tail_project - 1)) "$FINAL_POM_PATH.tmp" > "$FINAL_POM_PATH";
	echo "  <distributionManagement>"                           >> "$FINAL_POM_PATH";
	echo "    <repository>"                                     >> "$FINAL_POM_PATH";
	echo "      <id>releases</id>"                              >> "$FINAL_POM_PATH";
	echo "      <url>$MAVEN_URL</url>"                          >> "$FINAL_POM_PATH";
	echo "    </repository>"                                    >> "$FINAL_POM_PATH";
	echo "  </distributionManagement>"                          >> "$FINAL_POM_PATH";
	echo "</project>"                                           >> "$FINAL_POM_PATH";

	echo '<?xml version="1.0" encoding="UTF-8"?>'               >  "$FINAL_SETTINGS_PATH";
	echo "<settings>"                                           >> "$FINAL_SETTINGS_PATH";
	echo "  <servers>"                                          >> "$FINAL_SETTINGS_PATH";
	echo "    <server>"                                         >> "$FINAL_SETTINGS_PATH";
	echo "      <id>releases</id>"                              >> "$FINAL_SETTINGS_PATH";
	echo "      <username>$MAVEN_USERNAME</username>"           >> "$FINAL_SETTINGS_PATH";
	echo "      <password>$MAVEN_PASSWORD</password>"           >> "$FINAL_SETTINGS_PATH";
	echo "    </server>"                                        >> "$FINAL_SETTINGS_PATH";
	echo "  </servers>"                                         >> "$FINAL_SETTINGS_PATH";
	echo "</settings>"                                          >> "$FINAL_SETTINGS_PATH";

}

maven_depot()
{
	local param=" -Dpackaging=$LIB_FILE_TYPE";
	param+=" -DrepositoryId=releases";
	param+=" -Durl=$MAVEN_URL";
	param+=" -DpomFile=$FINAL_POM_PATH";
	param+=" -Dfile=$LIB_FILE_PATH";

	maven_cmdline="mvn deploy:deploy-file --settings $FINAL_SETTINGS_PATH $param";
	echo "$maven_cmdline";
	$maven_cmdline; # execute
}

FUNCTION_RETVAL=;
KERNEL_NAME=$(uname -s);
MAVEN_URL="http://nexus.cluster.qcast.cn/repository/maven-releases/";
FINAL_POM_PATH="/tmp/upload-library-to-nexus.pom";
FINAL_SETTINGS_PATH="/tmp/upload-library-to-nexus.settings.xml";
MAVEN_USERNAME=;
MAVEN_PASSWORD=;
POM_FILE_PATH=;
LIB_FILE_PATH=;
LIB_FILE_TYPE="aar";
DEBUG_VERBOSE=false;

main_run()
{
	loginfo "parsing options";
	parse_options $@;

	loginfo "preparing environment";
	prepare_env;

	print_input_log;

	make_pom_xml;

	maven_depot;

	loginfo "DONE !!!";
}

main_run $@;
