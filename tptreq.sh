#!/bin/zsh

function tpt() {
	echo "Cloning..."
	git clone https://github.com/The-Powder-Toy/The-Powder-Toy
	cd ./The-Powder-Toy/
}
function ins() {
	sudo apt update
	sudo apt install -y g++ git python3 meson ninja-build ccache pkg-config libluajit-5.1-dev libcurl4-openssl-dev libssl-dev libfftw3-dev zlib1g-dev libsdl2-dev libbz2-dev libjsoncpp-dev libpng-dev
}
function rem() {
	sudo apt autoremove -y meson ninja-build ccache libluajit-5.1-dev libcurl4-openssl-dev libssl-dev libfftw3-dev zlib1g-dev libsdl2-dev libbz2-dev libjsoncpp-dev libpng-dev
}

print "TPT Requirements Installer"

cmd="$1"

if [[ -z "$cmd" ]]; then
    print "Use args \"ins\" to install and \"rem\" to uninstall.\nUse \"tpt\" to clone the tpt repository."
    exit 0
fi

if [[ "$cmd" == "ins" ]]; then
    print "Installing..."
	ins
	exit 0
fi

if [[ "$cmd" == "rem" ]]; then
    print "Uninstalling..."
	rem
    exit 0
fi

if [[ "$cmd" == "tpt" ]]; then
	print "Cloning..."
	tpt
	exit 0
fi
# Not a valid command
print "Unknown command: $cmd\nUse either \"ins\", \"rem\", or \"tpt\"."
exit 1
