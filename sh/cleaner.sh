echo e | sudo apt-get autoremove
sudo du -sh /var/cache/apt
sudo apt-get autoclean
sudo apt-get clean
sudo du -sh ~/.cache/thumbnails
rm -rf ~/.cache/thumbnails/*