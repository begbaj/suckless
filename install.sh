#!/bin/sh
make clean -C ./st/src/
make clean -C ./dmenu/src/
make clean -C ./dwm/src/
make clean -C ./slock/src/
make clean -C ./surf/src/
make clean -C ./quark/src/

make -C ./st/st/
make -C ./dmenu/dmenu/
make -C ./dwm/dwm/
make -C ./slock/src/
make -C ./surf/src/
make -C ./quark/src/

sudo make install -C ./st/src/
sudo make install -C ./dmenu/src/
sudo make install -C ./dwm/src/
sudo make install -C ./slock/src/
sudo make install -C ./surf/src/
sudo make install -C ./quark/src/

mkdir ~/.local/bin/
sudo cp dwm/dwm.desktop /usr/share/xsessions/dwm.desktop
cp dwm/scripts/startdwm ~/.local/bin/startdwm

killall rsblocks
killall dwm

while [[ $# -gt 0 ]]; do
	key="$1"
	case $key in
		--clean)
			arg_foo="$2"
			shift # Consume the argument value
			make clean -C ./st/src/
			make clean -C ./dmenu/src/
			make clean -C ./dwm/src/
			make clean -C ./slock/src/
			make clean -C ./surf/src/
			make clean -C ./quark/src/
		;;
		*)
			echo "Unknown option: $key" >&2
			exit 1
		;;
	esac
	shift # Consume the option or argument
done

