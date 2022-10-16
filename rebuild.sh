
#!/bin/sh
make clean -C ./st/st/
make clean -C ./dmenu/dmenu/
make clean -C ./dwm/dwm/

make -C ./st/st/
make -C ./dmenu/dmenu/
make -C ./dwm/dwm/

sudo make install -C ./st/st/
sudo make install -C ./dmenu/dmenu/
sudo make install -C ./dwm/dwm/
killall dwm
