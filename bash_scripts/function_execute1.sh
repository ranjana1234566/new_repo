#!/bin/bash

greeting() {
  local name="$1"
  local upper_name="${name^^}"
  local name_length=${#name}
  echo "Hello ,$upper_name! (Your Name has $name_length characters)"

}

echo "Scripting initiated"

NAMES=("Jerry" "Jai" "Ram")

for NAME in "${NAMES[@]}"; do
  echo $NAME
  greeting "$NAME"
done
