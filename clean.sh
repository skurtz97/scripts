#! /bin/bash
# A script to clean the system.
# This script cleans the pacman cache, removes orphan packages, and cleans the home cache.

# Clean the package cache
sudo pacman -Scc

# Find orphaned packages and remove them
sudo pacman -Rns $(pacman -Qtdq)

# Clean the home cache
sudo rm -rf ~/.cache/*