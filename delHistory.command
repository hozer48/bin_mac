#!/bin/bash

delHistory() {
    start=$1
    end=$2
    count=$(( end - start ))
    while [[ $count -ge 0 ]] ; do
        history -d "$start" 
        ((count--))
    done
}

delHistory "$1" "$2"
