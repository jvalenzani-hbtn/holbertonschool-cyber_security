#!/bin/bash
IPREGEXP="[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+"
grep -o ${IPREGEXP} $1 | sort | uniq -c | sort -br | head -1 | tr -s ' ' | cut -d ' ' -f 3
