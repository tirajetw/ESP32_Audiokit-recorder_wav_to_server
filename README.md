# Recording WAV file and upload to HTTP Server

By using the [Rec] button on the audio board, when the button is pressed, it will record and upload data to HTTP Stream, and when the button is released, it will stop recording, server will write all data to .wav file.

## Usage

Prepare the Server:
- Require python 2.7 or higher.
- Run `python2 server.py` - place the file `server.py` at root of this example, and make sure this directory is writable.

Prepare the computer to flash this program and monitor for ESP32-Audio-Kit

1 Setup toolchain

- Download file
https://dl.espressif.com/dl/xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz

- Extract file to ~/esp 
	$	mkdir -p ~/esp
	$	cd ~/esp
	$	tar -xzf ~/Downloads/xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz

- Add PATH environment
	$	export PATH=$HOME/esp/xtensa-esp32-elf/bin:$PATH


2 Install ESP-IDF

- Clone GitHub project
	$	cd ~/esp
	$	git clone -b v3.3.1 --recursive https://github.com/espressif/esp-idf.git

- Add PATH environment 
	$	export IDF_PATH=~/esp/esp-idf
	$	printenv IDF_PATH


3 Install ESP-ADF

- Clone GitHub project
	$	cd ~/esp
	$	git clone --recursive https://github.com/espressif/esp-adf.git

- Add PATH environment
	$	export ADF_PATH=~/esp/esp-adf
	$	printenv ADF_PATH



Configure the example:

- Select compatible audio board in `menuconfig` > `Audio HAL`.
- Set up the Wi-Fi connection by running `menuconfig` > `Example Configuration` and filling in `WiFi SSID` and `WiFi Password`.
- In the same menu set up server URI, for example `http://192.168.0.248:8000/upload` where `http://192.168.0.248` is the server LAN IP address.

Load and run the example:

- Speak to the board once prompted on the serial monitor.
- After finish, retrieve recorded file from directory where server is located.
- To stop the pipeline press [Mode] button on the audio board.
