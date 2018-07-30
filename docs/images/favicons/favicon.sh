#!/bin/bash
# Converts an image in a multi-resolution favicon
# Requires Imagemagick
# @link https://gist.github.com/lavoiesl/4113857

if [[ "$#" != "2" ]]; then
    echo "Usage: $0 input.png output.ico" >&2
    exit 1
fi

input="$1"
output="$2"
sizes="16 36 48 57 60 64 72 76 96 128 144 152 192 256"
# tmp_dir=$(mktemp -d /tmp/favicon.XXXXXXXXXX)
tmp_dir=$PWD
files=""

for size in $sizes; do
    file="$tmp_dir/favicon-$size.png"
    convert "$input" -depth 8 -background transparent -flatten -resize "${size}x${size}" "$file"
    files="$files $file"
done

convert $files $output
