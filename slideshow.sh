#!/bin/bash

# This script continuously runs a slideshow of images located in the ~/Desktop/Pictures directory.

while true; do
    # Starts the slideshow using the 'feh' image viewer.
    # -Yq: Suppresses file information and errors.
    # --randomize: Displays images in a random order.
    # --recursive: Includes images in subdirectories.
    # --slideshow-delay 4: Sets the time each image is displayed to 4 seconds.
    # --auto-zoom: Zooms images to fit the screen without changing aspect ratio.
    # --fullscreen: Displays images in fullscreen mode.
    feh -Yq --randomize --recursive --slideshow-delay 4 --auto-zoom --fullscreen --auto-rotate ~/Desktop/Pictures
    
    # Pauses the script for 3600 seconds (1 hour) after the slideshow starts.
    sleep 3600
    
    # Terminates the 'feh' process to restart the slideshow (useful if new images are added).
    pkill feh
done
