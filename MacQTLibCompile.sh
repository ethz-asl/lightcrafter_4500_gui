#!/bin/sh
otool -L LightCrafter4500.app/Contents/MacOS/LightCrafter4500
mkdir LightCrafter4500.app/Contents/Frameworks
cp -R /Users/pedro/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtCore.framework LightCrafter4500.app/Contents/Frameworks/
cp -R /Users/pedro/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtGui.framework LightCrafter4500.app/Contents/Frameworks/
install_name_tool -id @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore LightCrafter4500.app/Contents/Frameworks/QtCore.framework/Versions/4/QtCore
install_name_tool -id @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui LightCrafter4500.app/Contents/Frameworks/QtGui.framework/Versions/4/QtGui
install_name_tool -change /Users/pedro/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore LightCrafter4500.app/Contents/MacOS/LightCrafter4500
install_name_tool -change /Users/pedro/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtGui.framework/Versions/4/QtGui @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui LightCrafter4500.app/Contents/MacOS/LightCrafter4500
install_name_tool -change /Users/pedro/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore LightCrafter4500.app/Contents/Frameworks/QtGui.framework/Versions/4/QtGui
