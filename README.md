I've been using this to test RPi boards + Nerves + Scenic, as well as InputEvent. Notes so far are in notes.txt.

It should also work to verify whether Scenic is working with your pi.

You should need to do the following inside the project for the pi3:

```
export MIX_TARGET=pi3
mix deps.get
mix firmware
# Make sure you have your SD card ready in the reader
mix firmware.burn
```

With the official pi touchscreen connected properly this should show the sysinfo scene on that.

If you unplug that and run it on HDMI instead, the scene should show up on HDMI.

