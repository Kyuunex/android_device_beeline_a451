# Device tree for Beeline Pro 5 (A451).

# Help wanted!
I don't have much time and experience fixing stuff on MediaTek phones, I find myself running into walls. 
So if you have any experience with this sort of stuff, hit me up.
---

## What I know works:
* Brightness control
* Offline charging
* Wi-FI
* USB (MTP and ADB)
* Camera
* Flashlight

## Issues:
* FM Radio not working
* GPS not working
* LiveDisplay not working
* Wrong resolutions in Camera
* Video Recording does not work
* Devices fail to connect to the Wi-Fi hotspot

## What I have not tested:
* Telephony (Calls, Messages)
* Bluetooth
* Sensors (Accelerometer, Light, Proximity)
* Sound (Headphones, Speakers, Microphone)
* Whatever you don't see listed above.

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
