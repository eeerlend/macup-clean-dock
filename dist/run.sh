#!/bin/bash

# TIP:
# Run the following command to list all available options:
#  defaults read com.apple.dock persistent-apps | grep bundle-identifier

function remove_app_from_dock {
	# Index of the application in the "persistent-apps" array
	dlocaction=$(defaults read com.apple.dock persistent-apps | grep bundle-identifier | awk "/${1}/ {printf NR}")
	dlocaction=$(($dlocaction-1))

	if [ $dlocaction -gt -1 ]; then
		report_from_package "Removing $1 from Dock"
		sudo -u "$USER" /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dlocaction" ~/Library/Preferences/com.apple.dock.plist
	else
		report_from_package "$1 already removed from Dock"
	fi
}

# todo: check if array is declared up front!
# shellcheck disable=SC2154
for ((i=0; i<${#macup_clean_dock_items[@]}; ++i)); do
	remove_app_from_dock "${macup_clean_dock_items[i]}"
done

killall Dock
#killall cprefsd
