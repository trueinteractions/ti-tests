#!/bin/sh

export RUNTIME=../Runtime/src/out/Release/Runtime.app/Contents/MacOS/Runtime

echo "Canvas 2D Test Launching, this should test the animation capabilities of the canvas2d"
$RUNTIME 2dcanvas/

echo "Canvas 2D Transparency Test Launching, this should show the 2d canvas on a transparent background."
echo " - Make sure mouse click hit tests work"
echo " - Ensure its clearing the background."
$RUNTIME 2dcanvas-transparent

echo "3D Transformations tests with CSS3/transform CSS property"
echo " - No popping scrollbar"
echo " - Animation fully renders (no partial textures)"
$RUNTIME 3dtransforms

echo "3D Transformations tests with CSS3/transform CSS property as transparent"
echo " - No scrollbar on right"
echo " - Animation fully renders (no partial textures)"
echo " - Mouse hit tests work"
$RUNTIME 3dtransforms-transparent

echo "Hello World Tests for Standard Functionality"
echo " - Ensure Remove From Dock removes window from dock."
echo " - Ensure Show In Dock shows the window in dock."
echo " - Ensure if we remove Quit from window modifier the application does not respond to CMD+Q/CTNL+Q"
$RUNTIME HelloWorld

echo "Application Menu Tests"
echo " - Ensure the launched window has an application menu with New and Open"
$RUNTIME appmenu
