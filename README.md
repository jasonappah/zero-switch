# zero-switch
⚡ wirelessly share your wired keyboard and mouse between multiple devices with a pi zero

notes for self:
- web server 
    - allows for config at runtime
        - pairing/(dis-)connecting bt devices
        - later: configuring which hid devices to use
        - later: toggle power to devices
            - can i do this?? would be neat if i could...
            - for this to work optimally the pi would basically need to always be on, but my kb + mouse have leds that are annoying at night
            - would be sick if i could turn peripherals off after an hr or 2 of inactivity
    - persist in sqlite db w/ sqlalchemy (? is that rly necessary... i kinda wanna just pickle a dict and call it a day, wont be storing too much anyway 🙈)
- frontend
    - i want to have a physical interface ideally
    - i have small oled display + encoder and other hw for control which i could run off the zero
    - i also have an esp32 devkit, maybe i run interface off of that (for no reason, would just be fun to play with)
        - can i just pull 5v off of the pi onto the esp32? idk investigate later ig
- the interesting stuffs
    - using evdev to read keystrokes and eventually mouse movements which we'll forward over bt to host devices, seems simple enough
    - ~~using google/bumble for bluetooth stuff and im honestly in way over my head, will need to do some more reading lol~~
    - going to use the normal linux bluetooth stack instead (bluez)
- useful links... people seem to have done similar ish stuff before:
    - https://github.com/4ndrej/hidclient/tree/master
        - written in c :/
    - https://impythonist.wordpress.com/2014/02/01/emulate-a-bluetooth-keyboard-with-the-raspberry-pi/
        - python 2.7, old, has dead links to code :/
    - https://github.com/AnesBenmerzoug/Bluetooth_HID (⭐)
        - has a good amount of code I can steal for mouse AND keyboard
    - https://gist.github.com/ukBaz/a47e71e7b87fbc851b27cde7d1c0fcf0
        - similar to above, but has good explanations too
    - https://novelbits.io/bluetooth-hid-devices-an-intro/
        - good reference, more specific to bt hid
    - https://cdn.sparkfun.com/datasheets/Wireless/Bluetooth/RN-HID-User-Guide-v1.0r.pdf
        - more specifics on bt hid
    - looking through these links and it looks like this will be really easy if i just want to copy code and get this working...
    - https://www.bluetooth.com/bluetooth-resources/bluetooth-for-linux/ (⭐)
        - guide specific to dev with bluez, contains a pretty good overview of bluetooth specifics too
        - https://www.bluetooth.com/wp-content/uploads/2022/05/The-Bluetooth-LE-Primer-V1.1.0.pdf