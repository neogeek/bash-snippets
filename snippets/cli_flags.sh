#!/bin/bash

args=("${@// /}")

for arg in "${args[@]}"
do

    case $arg in

        -v | --version ) echo "Version flag."; exit;;
        -h | --help ) echo "Help flag."; exit;;

        ?* ) printf "Invalid option %s\n\n" "${arg}"; exit;;

    esac

done
