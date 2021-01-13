# OrangePI-Volumio-pydPiper
install.sh - revised script for installing pydpiper on OrangePi PC board. The basic instruction is here - https://github.com/dhrone/pydPiper

Examples for pydpiper.service file for different displays.It is imperative to specify I2C port 0, since the default is port 1 (for RaspberryPi).

# HD44780 LCD 20x4 display with I2C interface on address 0x27
ExecStart=/usr/bin/docker run --network=host --privileged -v /var/log:/var/log:rw  dhrone/pydpiper:latest python /app/pydPiper.py --volumio --driver hd44780_i2c  --width 100 --height 32 --i2caddress 0x27 --i2cport 0 --timezone 'Europe/Kiev' --temperature fahrenheit --pages pages_lcd_20x4.py

# OLED display SSD1306 (128x64 pixel) with I2C interface on address 0x3C
ExecStart=/usr/bin/docker run --network=host --privileged -v /var/log:/var/log:rw  dhrone/pydpiper:latest python /app/pydPiper.py --volumio --driver ssd1306_i2c  --width 128 --height 64 --i2caddress 0x3C --i2cport 0 --timezone 'Europe/Kiev' --temperature fahrenheit --pages pages_ssd1306.py

Forum - https://community.volumio.org/t/volumio-2-on-orange-pi-boards/8353/181
