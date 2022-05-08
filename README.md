![logo](img/logo.png)
# Realtek 8192FU Linux USB (MONITOR MODE WORKING BUT NO VIF Support)
Forked from [BlightX](https://github.com/BrightX) Github

Original Source Code: [Internet Archive](https://archive.org/details/realtek-8192fu)  <br />

Direct Download：[Download](https://ia801706.us.archive.org/zip_dir.php?path=/18/items/realtek-8192fu.zip) <br />
** **
# Install
**Debian via Make** <br />
sudo apt install -y linux-headers-$(uname -r) <br />
sudo apt install make gcc bc <br />
cd rtl8192fu <br />
make -j$(nproc) <br />
sudo make install <br />
sudo modprobe 8192fu <br />

**Debian via dkms** <br />
sudo apt install -y linux-headers-$(uname -r) <br />
sudo apt install make gcc bc build-essential dkms -y <br />
cd rtl8192fu/ <br />
sudo chmod a+x ./dkms-* <br />
sudo ./dkms-install.sh <br />
sudo modprobe 8192fu <br />

** **
**LED will not blink or flash on the Adapter. You must run iwconfig and lsusb to verify if driver is working properly.** <br />
*iwconfig* <br />
![iwconfig](img/iwconfig.png)

*usb-devices | grep "Vendor=0bda ProdID=f192" -B2 -A5* <br />
![usb](img/usb.png)
  
# Uninstall
**Via Make** <br />
sudo modprobe -r 8192fu <br />
cd rtl8192fu/ <br />
sudo make uninstall <br />

**Via dkms** <br />
sudo modprobe -r 8192fu <br />
sudo ./dkms-remove.sh <br />

