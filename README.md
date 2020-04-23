# BTT_NightShiftSlider
 
A simple BetterTouchTool touch bar widget that can change the color temperature of your screen with a slider.

## Instruction
Tap on the icon to toggle Night Shift, the color of icon is switched between white and orange based on current status.
![off](screenshots/off.png)
![on](screenshots/on.png)

Hold the icon to activate the slider, the number on the right is the color temperature in Kelvin.
![slider1](screenshots/slider1.png)
![slider2](screenshots/slider2.png)

## How does it work?
This widget is written in AppleScript-ObjC, using macOS private framework **CoreBrightness**, you can check the code in `\source` folder, refer to [Apple-Runtime-Headers](https://github.com/LeoNatan/Apple-Runtime-Headers/blob/master/macOS/PrivateFrameworks/CoreBrightness.framework/CBBlueLightClient.h) for more information.

## How to install?
Download `NightShiftSlider.bttpreset`, double click to import to BTT.

## Note
You cannot replace assigned action of the icon with BTT's built-in Night Shift toggle action, otherwise, the code cannot detect the status change.

You may experience Night Shift flicking, or the icon color is not match with current status, try restart BTT.