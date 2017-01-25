#!/bin/sh

if [ -z "${1}" ]; then
    echo "You need to promulgate something !"
    exit 1
fi;

convert                            \
  -background '#0000'              \
  -fill black                      \
  -geometry +665+250                   \
  -size 210x290 caption:"${1}" \
  -rotate -354 \
   static/trump.jpg                 \
  +swap                            \
  -composite                       \
   out.jpg
