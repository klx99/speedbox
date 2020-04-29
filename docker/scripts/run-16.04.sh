#!/bin/bash

set -o nounset                              # Treat unset variables as an error

docker run  -v $HOME/workspace:/opt/workspace -it ubuntu:16.04;
