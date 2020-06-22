#!/usr/bin/env sh

set -e

script_dir=$(dirname "$0")
cd $script_dir/..
base_dir=$(pwd)
tag_file="$base_dir"/tags


grep -riIn "tags:" ./notes | while read line; do
    file=$(echo $line | cut -d: -f1)
    tags=$(echo $line | cut -d: -f4)
    IFS=,
    echo "" > $tag_file
    for tag in $tags; do
        echo "$tag	$file	1" >> $tag_file
    done
done
