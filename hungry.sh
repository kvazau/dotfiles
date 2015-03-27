#!/bin/bash

if [ $# == 0 ]
then
    echo "No arguments or flags provided. Try '-u <username>'."
    exit 1
fi

while getopts ":u:" opt
do
    case $opt in 
        u)
            ssh "$OPTARG@45.55.166.17"
            ;;
        \?)
            echo "Invalid option -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done
