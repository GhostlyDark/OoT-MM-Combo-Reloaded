#!/usr/bin/env bash
set -ex



# Working directory
mkdir -p "OOT+MM COMBO"



# Download textures if needed
if [ ! -d "OoT-Reloaded" ]; then
    git clone --depth 1 https://github.com/GhostlyDark/OoT-Reloaded OoT-Reloaded
fi

if [ ! -d "MM-Reloaded" ]; then
    git clone --depth 1 https://github.com/GhostlyDark/MM-Reloaded MM-Reloaded
fi



# Copy textures to working directory if needed
if [ ! -d "OOT+MM COMBO/THE LEGEND OF ZELDA" ]; then
    cp -R "OoT-Reloaded/THE LEGEND OF ZELDA" "OOT+MM COMBO/THE LEGEND OF ZELDA"
fi

if [ ! -d "OOT+MM COMBO/ZELDA MAJORA'S MASK" ]; then
    cp -R "MM-Reloaded/ZELDA MAJORA'S MASK" "OOT+MM COMBO/ZELDA MAJORA'S MASK"
fi



# Rename files
find "OOT+MM COMBO/THE LEGEND OF ZELDA" -name *.png -exec rename "THE LEGEND OF ZELDA" "OOT+MM COMBO" {} \;
find "OOT+MM COMBO/ZELDA MAJORA'S MASK" -name *.png -exec rename "ZELDA MAJORA'S MASK" "OOT+MM COMBO" {} \;
