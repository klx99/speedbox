#!/bin/bash - 

expect -c "
spawn ssh mengxk@3.21.117.115
expect -nocase \"password:\" {send \"xiaokun@ELASTOS\r\"; interact}
";

