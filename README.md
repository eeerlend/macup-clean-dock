# macup-clean-dock

A [macup](https://github.com/eeerlend/macup) module that will clean up your dock.

## Installation
Run the following command to add it to your repo

```bash
npm install eeerlend/macup-clean-dock --save
```

## Configuration
Add your own bundle identifiers to be removed from the dock...

```bash
# All default items bundled with macOS Mojave
macup_clean_dock_items+=(
  com.apple.Safari
	com.apple.siri.launcher
	com.apple.launchpad.launcher
	com.apple.mail
	com.apple.AddressBook
  com.apple.iCal # Calendar
	com.apple.Notes
	com.apple.reminders
	com.apple.Maps
	com.apple.Photos
  com.apple.iChat # Messages
	com.apple.FaceTime
	com.apple.iTunes
	com.apple.AppStore
	com.apple.systempreferences
)
```
