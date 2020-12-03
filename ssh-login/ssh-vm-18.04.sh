#!/bin/bash - 

expect -c "
spawn ssh dev@10.211.55.12
expect -nocase \"password:\" {send \" \r\"; interact}
";

