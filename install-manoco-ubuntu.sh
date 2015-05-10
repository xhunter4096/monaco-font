###
# Install Monaco font automatically on Ubuntu(including Mint/Kali)
#

#!/bin/sh

echo "Downloading manaco"
wget -c https://github.com/hack4096/monaco-font/blob/master/monaco.ttf

# Also the font can be installed in ~/.fonts
echo "Installing font"
if [ ! -d "/usr/share/fonts/truetype/custom" ]; then
	sudo mkdir -p /usr/share/fonts/truetype/custom
fi
sudo mv monaco.ttf /usr/share/fonts/truetype/custom/

echo "Updating font cache"
sudo fc-cache -f -v

echo "Done"
