# WiringNP
This is a GPIO access library for Armbian NanoPi. It is based on the WiringOP for Orange PI which is based on original WiringPi for Raspberry Pi.

Currently supported boards:  
NanoPi NEO Core  
  
# Installation

## Install WiringNP 
Log into your nano board via SSH, open a terminal and install the WiringNP library by running the following commands:
```
git clone https://github.com/friendlyarm/WiringNP
cd WiringNP/
chmod 755 build
./build
```

# Verify WiringNP
The WiringNP library contains a set of gpio commands. Users can use them to access the GPIO pins on a nano board. You can verify your WiringNP by running the following command:
```
gpio readall
```
If your installation is successful the following messages will show up. Here is the message list for NanoPi NEO Core:
```   
root@FriendlyARM:~# gpio readall
  +-----+-----+----------+------+---+-NanoPi-NEO-Core--+------+----------+-----+-----+
 | BCM | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | BCM |
 +-----+-----+----------+------+---+----++----+---+------+----------+-----+-----+
 |     |     |     3.3v |      |   |  1 || 2  |   |      | 5v       |     |     |
 |  12 |   8 |  GPIOA12 | ALT5 | 0 |  3 || 4  |   |      | 5v       |     |     |
 |  11 |   9 |  GPIOA11 | ALT5 | 0 |  5 || 6  |   |      | 0v       |     |     |
 | 203 |   7 |  GPIOG11 |  OUT | 1 |  7 || 8  | 0 | ALT5 | GPIOG6   | 15  | 198 |
 |     |     |       0v |      |   |  9 || 10 | 0 | ALT5 | GPIOG7   | 16  | 199 |
 |   0 |   0 |   GPIOA0 |  OUT | 0 | 11 || 12 | 1 | OUT  | GPIOA6   | 1   | 6   |
 |   2 |   2 |   GPIOA2 |  OFF | 0 | 13 || 14 |   |      | 0v       |     |     |
 |   3 |   3 |   GPIOA3 |  OFF | 0 | 15 || 16 | 0 | OFF  | GPIOG8   | 4   | 200 |
 |     |     |     3.3v |      |   | 17 || 18 | 0 | ALT2 | GPIOG9   | 5   | 201 |
 |  64 |  12 |   GPIOC0 | ALT4 | 0 | 19 || 20 |   |      | 0v       |     |     |
 |  65 |  13 |   GPIOC1 | ALT4 | 0 | 21 || 22 | 1 | OUT  | GPIOA1   | 6   | 1   |
 |  66 |  14 |   GPIOC2 | ALT4 | 0 | 23 || 24 | 1 | OUT  | GPIOC3   | 10  | 67  |
 +-----+-----+----------+------+---+----++----+---+------+----------+-----+-----+
 | BCM | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | BCM |
 +-----+-----+----------+------+---+-NanoPi-NEO-Core--+------+----------+-----+-----+

 +-----+-----+----------+---- NanoPi-NEO-Core USB/Audio ----+----------+-----+-----+
 | BCM | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | BCM |
 +-----+-----+----------+------+---+----++----+---+------+----------+-----+-----+
 |     |     |       5v |      |   | 25 || 26 | 0 | ALT4 | GPIOA15  | 22  | 15  |
 |     |     |     USB1 |      |   | 27 || 28 | 0 | ALT4 | GPIOA16  | 23  | 16  |
 |     |     |     USB1 |      |   | 29 || 30 | 0 | ALT4 | GPIOA14  | 21  | 14  |
 |     |     |     USB2 |      |   | 31 || 32 | 0 | ALT4 | GPIOA13  | 20  | 13  |
 |     |     |     USB2 |      |   | 33 || 34 |   |      | Mic      |     |     |
 |     |     |       IR |      |   | 35 || 36 |   |      | Mic      |     |     |
 |  17 |  19 |  GPIOA17 |  OFF | 0 | 37 || 38 |   |      | Audio    |     |     |
 |     |     |      I2S |      |   | 39 || 40 |   |      | Audio    |     |     |
 |     |     |      I2S |      |   | 41 || 42 | 0 | ALT5 | GPIOA5   | 18  | 5   |
 |     |     |      I2S |      |   | 43 || 44 | 0 | ALT5 | GPIOA4   | 17  | 4   |
 |     |     |      I2S |      |   | 45 || 46 |   |      | 5V       |     |     |
 |     |     |       0v |      |   | 47 || 48 |   |      | 0v       |     |     |
 +-----+-----+----------+------+---+----++----+---+------+----------+-----+-----+
 | BCM | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | BCM |
 +-----+-----+----------+------+---+-NanoPi-NEO-Core--+------+----------+-----+-----+

 +-----+-----+----------+---- NanoPi-NEO-Core Network ----+----------+-----+-----+
 | BCM | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | BCM |
 +-----+-----+----------+------+---+----++----+---+------+----------+-----+-----+
 |     |     |      Eth |      |   | 49 || 50 |   |      | Eth      |     |     |
 |     |     |      Eth |      |   | 51 || 52 |   |      | Eth      |     |     |
 |     |     |      Eth |      |   | 53 || 54 |   |      | Eth      |     |     |
 |     |     |       NC |      |   | 55 || 56 |   |      | NC       |     |     |
 |     |     |       NC |      |   | 57 || 58 |   |      | NC       |     |     |
 |     |     |       0v |      |   | 59 || 60 |   |      | 0v       |     |     |
 |     |     |     USB3 |      |   | 61 || 62 | 0 | OFF  | GPIOA7   | 24  | 7   |
 |     |     |     USB3 |      |   | 63 || 64 |   |      | GPIOE12  |     |     |
 |     |     |       5v |      |   | 65 || 66 |   |      | GPIOE13  |     |     |
 |     |     |       5v |      |   | 67 || 68 |   |      | 3.3v     |     |     |
 +-----+-----+----------+------+---+----++----+---+------+----------+-----+-----+
 | BCM | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | BCM |
 +-----+-----+----------+------+---+-NanoPi-NEO-Core--+------+----------+-----+-----+
```
