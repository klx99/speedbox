#!/bin/bash - 

path_file="autoload-path"
if [ "$1" == "" ]; then
	printf "Building cscope files..."
	find . -name "*.h" -o -name "*.c" -o -name "*.hpp" -o -name "*.cpp" -o -name "*.cc" > cscope.files
	cscope -bkq -i cscope.files && printf " OK\n" 

	#printf "Building tags file..."
	#ctags -R && printf " OK\n"

	printf "Building workspace path file..."
	echo "/usr/include/**" > $path_file
	echo `pwd`"/**" >> $path_file
	printf " OK\n"
elif [ "$1" == "clear" ]; then
	echo "rm cscope* tags autoload-path"
	rm -f cscope* tags autoload-path
fi
