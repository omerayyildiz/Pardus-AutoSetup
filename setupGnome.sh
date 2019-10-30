#!/bin/bash
sed -i "s|/h/Pardus-AutoSetup/|$(pwd)/|g" setupGnome.sh
cd sh
sed -i "s|/h/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/h/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
bash parGnome.sh

