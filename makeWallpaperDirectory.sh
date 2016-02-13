#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make main directory for wallpapers
mkdir $DIR/wallpapers

# Create direcctories for each 2 hour succession
for ((hour = 0; hour <= 22; hour += 2)); do
     mkdir $DIR/wallpapers/$hour
done

