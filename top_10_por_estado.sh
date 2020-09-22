#!/bin/bash

cat todos.psv | cut -d $'|' -f4 | grep -v "<BR>"| sort  | uniq -c | sort -n -r | head -n 10
