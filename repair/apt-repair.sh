#!/bin/bash
echo e | sudo apt --fix-broken install
echo e | sudo apt update
echo e | sudo apt upgrade
echo e | sudo apt autoremove
echo e | sudo apt clean
