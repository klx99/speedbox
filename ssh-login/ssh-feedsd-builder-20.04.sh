#!/bin/bash - 

expect -c "
spawn ssh mengxk@144.202.70.153
expect -nocase \"password:\" {send \"xiaokun@ELASTOS\r\"; interact}
";

