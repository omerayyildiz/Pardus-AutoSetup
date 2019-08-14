#!/bin/bash
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(pwd)/|g" setupXFCE.sh
cd sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
bash parXfce.sh

