#!/bin/bash
# Change all directory path in project files.
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(pwd)/|g" setupGnome.sh
cd sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
bash parGnome.sh #run main file