#!/bin/sh
if [ -z "$1" ]; then
        echo "usage: data-url file" >&2
        exit 1
fi
echo "enter target filename"
read target
mimetype=$(file -bN --mime-type "$1")
content=$(base64 < "$1")
echo "data:$mimetype;base64,$content" > $target
