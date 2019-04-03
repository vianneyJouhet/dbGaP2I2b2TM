#!/usr/bin/env bash
$path = $1
$krt_file = $2
$key = $3

echo "path is $path"
vdb-config --import $path/$key
$working_dir = ls -d /root/ncbi/*
echo "working directory is $working_dir"
#
# echo "Downloading files from $krt_file"
# sh -c prefetch $krt_file
#
# mv /root/ncbi/$working_dir /
