#!/bin/sh
echo "$(cat $@)" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
