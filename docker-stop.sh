#!/bin/bash

#script to stop app(phpfpm) and web(nginx) containers

#to make this script file executable, type:
#chmod +x docker-stop.sh

docker-compose down --volumes