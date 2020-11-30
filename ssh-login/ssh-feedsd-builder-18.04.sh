#!/bin/bash - 

expect -c "
spawn ssh mengxk@149.28.247.11
expect -nocase \"password:\" {send \"xiaokun@ELASTOS\r\"; interact}
";

