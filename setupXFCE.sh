#!/bin/bash
# Change all directory path in project files.
sed -i "s|/h/Pardus-AutoSetup/|$(pwd)/|g" setupXFCE.sh
cd sh
sed -i "s|/h/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/h/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
bash parXfce.sh #run main file

