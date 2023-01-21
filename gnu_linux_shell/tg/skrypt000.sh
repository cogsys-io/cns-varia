#!/bin/bash
mkdir dir01 dir02 dir03
head /etc/passwd > dir01/f01.txt
tail /etc/passwd > dir02/f02.txt
grep "^fu.*ing$" /usr/share/dict/words > dir03/f03.txt
tar --help
