# Device tree for Beeline Pro 5 (A451).

# Help wanted!
I don't have much time and experience fixing stuff on MediaTek phones, I find myself running into walls. 
If you have any experience with this sort of stuff, and want to help, find me on Discord.
---

## Tested to a reasonable degree that it works:
* Bootup / UI
* Flashlight
* FM Radio

## Not working / issues:
* GPS not working
* LiveDisplay not working
* Video Recording does not work
* Devices fail to connect to the Wi-Fi hotspot
* 'Corrupted SD card' errors for each partition

## Not fully tested or not tested at all:
* Telephony (Calls, Messages)
* Bluetooth (File transfer, headset)
* Sensors (Accelerometer, Light, Proximity)
* Sound (Headphones, Speakers, Microphone)
* Brightness control (Adaptive brightness not fully tested)
* Offline charging
* Wi-FI (speed not tested, hotspot probably broken)
* USB (MTP and ADB)
* Camera (resolutions and etc)
* Anything else you don't see listed above.

---

## Instructions
Downloading sources: (This will take a while)
```
repo init -u git://github.com/LineageOS/android.git -b cm-14.1
mkdir .repo/local_manifests/
curl https://raw.githubusercontent.com/Kyuunex/android_device_beeline_a451/cm-14.1/local_manifest.xml > .repo/local_manifests/local_manifest.xml
repo sync
```

After that, we need to apply some patches.
```
cd device/beeline/a451/patches
source apply-patches.sh
```

And finally, we actually build it: (This will take a while)
```
source build/envsetup.sh
brunch a451
```

If it can't find the project files, edit `build/core/product_config.mk` and add the text bellow before line 248:
```makefile
current_product_makefile := /location/to/your/device/beeline/a451/lineage.mk
```

[Here is the device tree I used as a template](https://github.com/darklord4822/android_device_lenovo_P1m)
