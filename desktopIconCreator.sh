#!/bin/bash

echo "Enter app name:"
read APP_NAME
echo "Enter app description:"
read APP_DESC
echo "Enter path to executable file of the app:"
read APP_PATH_EXEC
echo "Enter path to app icon:"
read APP_PATH_ICON
echo "Enter DESKTOP file name:"
read DESKTOP_FILE_NAME

DESKTOP_FILE_PATH="/usr/share/applications/$DESKTOP_FILE_NAME.desktop"

echo "Created DESKTOP file in /usr/share/applications/ dir"

cat > $DESKTOP_FILE_PATH << EOL
[Desktop Entry]
Name=$APP_NAME
Comment=$APP_DESC
Exec=$APP_PATH_EXEC
Icon=$APP_PATH_ICON
Terminal=false
Type=Application
Categories=Utility;
EOL

sudo chmod +x $DESKTOP_FILE_PATH

sudo cp $DESKTOP_FILE_PATH /home/artem/Desktop/

echo "Success!"
exit 0

