
#!/bin/bash


cat todos.psv |awk -F "|" '{print $7}'|grep -v "<BR>"| tr -s '[:upper:]' '[:lower:]' | tr -d ".," | tr " \t" "\n"| sed '/^[[:space:]]*$/d' | sort | uniq -c | sort -n -r |head -n 10
