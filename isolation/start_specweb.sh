#!/bin/bash

cd /opt/SPECweb2005
java specwebclient &> /dev/null 2>&1
java specweb > /root/specweb-`date +%F-%T`.log 2>&1 
