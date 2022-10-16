
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

sudo make install -C ./st/st/
sudo make install -C ./dmenu/dmenu/
sudo make install -C ./dwm/dwm/
sudo make install -C ./slock/src/
sudo make install -C ./surf/src/
sudo make install -C ./quark/src/

killall rsblocks
killall dwm
