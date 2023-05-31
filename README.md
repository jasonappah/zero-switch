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
    - using google/bumble for bluetooth stuff and im honestly in way over my head, will need to do some more reading lol
    - apparently bluez is the more common linux bluetooth stack? so maybe I use that instead?
- useful links... people seem to have done similar ish stuff before:
    - https://github.com/4ndrej/hidclient/tree/master
    - https://impythonist.wordpress.com/2014/02/01/emulate-a-bluetooth-keyboard-with-the-raspberry-pi/
    - https://github.com/AnesBenmerzoug/Bluetooth_HID
    - https://gist.github.com/ukBaz/a47e71e7b87fbc851b27cde7d1c0fcf0