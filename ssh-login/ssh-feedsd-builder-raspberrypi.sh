#!/bin/bash - 

expect -c "
spawn ssh pi@192.168.1.103
expect -nocase \"password:\" {send \" \r\"; interact}
";

