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



# Remove conflicting files
rm -rf "OOT+MM COMBO/THE LEGEND OF ZELDA/Hacks"
rm -rf "OOT+MM COMBO/ZELDA MAJORA'S MASK/MLE/iQue"

rm -f "OOT+MM COMBO/ZELDA MAJORA'S MASK/MLE/HUD/Items/Debug/unavailable/Bottle Items/OOT+MM COMBO#4A31427C#0#3_all.png"
rm -f "OOT+MM COMBO/ZELDA MAJORA'S MASK/MLE/HUD/Items/Debug/unavailable/Bottle Items/OOT+MM COMBO#6AD4EB1F#0#3_all.png"
rm -f "OOT+MM COMBO/ZELDA MAJORA'S MASK/Nerrel/UI/Items/Bottle Items/OOT+MM COMBO#9F2D21F6#0#3_all.png"
rm -f "OOT+MM COMBO/ZELDA MAJORA'S MASK/Nerrel/UI/Items/Bottle Items/OOT+MM COMBO#FD5C926E#0#3_all.png"
rm -f "OOT+MM COMBO/ZELDA MAJORA'S MASK/Nerrel/Objects/Bottles/OOT+MM COMBO#0FF0A253#4#1_all.png"
