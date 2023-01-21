#!/bin/bash

echo $(date +"%Y%m%d-%H%M%S")
echo $(grep '/bin/tcsh' /etc/passwd | wc -l )/$(cat /etc/passwd | wc -l ) | tee ilu-$(date +"%Y%m%d-%H%M%S")
