#!/bin/bash

if test -z "$1"; then
  echo "No file specified"
  exit 1
fi

echo $1 > brainfuck.argv
vwntconsole -console -noherald -nosound -=brainfuck.im
