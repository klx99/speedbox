#!/bin/bash - 

expect -c "
spawn ssh pi@192.168.1.108
expect -nocase \"password:\" {send \" \r\"; interact}
";

