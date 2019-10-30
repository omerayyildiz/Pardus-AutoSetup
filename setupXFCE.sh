#!/bin/bash
sed -i "s|/h/Pardus-AutoSetup/|$(pwd)/|g" setupXFCE.sh
cd sh
sed -i "s|/h/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/h/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
bash parXfce.sh

