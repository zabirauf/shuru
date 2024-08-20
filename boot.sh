set -e

ascii_art='  _____ _
 / ____| |
| (___ | |__  _   _ _ __ _   _
 \___ \| \'_ \| | | | \'__| | | |
 ____) | | | | |_| | |  | |_| |
|_____/|_| |_|\__,_|_|   \__,_|
'

echo -e "$ascii_art"
echo "=> Shuru is for fresh Ubuntu 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Shuru..."
rm -rf ~/.local/share/shuru
git clone https://github.com/zabirauf/shuru.git ~/.local/share/shuru >/dev/null
if [[ $OMAKUB_REF != "master" ]]; then
	cd ~/.local/share/shuru
	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/shuru/install.sh