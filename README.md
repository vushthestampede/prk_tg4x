# prk_tg4x

keymap.rb for TG4x v2.1 keyboard on PRK for French guy :)

---
# keymap.rb pour RP2040 sur PRK
- Suivez ce tuto : https://github.com/picoruby/prk_firmware/wiki/Tutorial
- Micro-controlleur RP2040 (Raspberry Pi Pico)
- "Blok" (Boardsource) : https://kbd.news/Blok-controller-1469.html
- Datasheet : https://peg.software/docs/blok
- Source code pour TG4x : https://github.com/MythosMann/tg4x
- Pins TG4x : https://github.com/MythosMann/tg4x/blob/master/Schematic.png
- QMK keycodes : https://docs.qmk.fm/#/keycodes
- Contrairement à QKM, plus besoin de compiler, ni flasher !

---
PRK Firmware 0.9.20 (20221226 revision ac04670)

Welcome to PRK Firmware!

Usage:
- Drag and drop your `keymap.rb` into this directory
- Then, your keyboard will be automatically rebooted. That's all!

Notice:
- Make sure you always have a backup of your `keymap.rb`
  because upgrading prk_firmware-*.uf2 will remove it from flash

https://github.com/picoruby/prk_firmware
