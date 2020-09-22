#!/bin/bash


cat todos.psv| cut -d$'|' -f 5 | grep -v -i -E "oval|circle|sphere" | sort | uniq -c | sort -n -r | head -n 5

