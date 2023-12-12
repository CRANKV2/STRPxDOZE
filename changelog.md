# STRPxDOZE Module v2.3 Update Changelog

- **Binary Transfer:** 
  - Added automatic transfer of jq and curl binaries to /system/bin during module updates. This ensures their availability for the new update checker and will be a standard practice for all future updates.

- **Convenient Update Command:** 
  - Introduced `su -c strp-update` command for users to easily update the module to the latest version.

- **Enhanced Update Checker:** 
  - The updated module features an advanced update checker that notifies users on every reboot. It indicates whether the current module version matches the latest version or if a new version is available.

- **Latestart Service Improvements:**
  - Optimized latestart service in service.sh for smoother execution.
  - Modified appops set commands to allow the script to continue even if certain lines fail.

- **Logging Enhancements:**
  - Improved logging format for doze mode and latestart service.

- **Miscellaneous Improvements:** Various enhancements have been made to improve overall functionality and user experience.

Thank you for being a valuable part of STRP x UNIVERSE!

------

# STRP x DOZE Changelog

## Version 2.2 (Release Date: 2023-12-10)

## Table of Contents
- [Main Changes](#main-changes)
- [Enhancements](#enhancements)
- [Performance](#performance)
- [Log File Location](#log-file-location)
- [User Interaction](#user-interaction)
- [Error Handling](#error-handling)
- [Formatting and Readability](#formatting-and-readability)
- [Documentation](#documentation)

---

## Main Changes

- Enhanced the visual appeal of the main banner in the script menu.
- Addressed various issues in the script code to improve functionality and stability.
- Introduced additional configurable values for increased customization options.
- Improved overall performance and execution speed of the script.
- Fixed the default location of the log file to: `/data/adb/modules/STRPxDOZE/strpxdoze.log`.
- Streamlined user prompts and choices for smoother interaction.
- Enhanced error handling to provide clearer messages in unexpected scenarios.
- Adjusted formatting and layout for better readability.
- Updated documentation to reflect the latest changes and provide usage instructions.

## Enhancements

- Enhanced initialization process for STRP Main GMS Doze Script.
- Optimized the disabling of collective device administrators.
- Streamlined the removal of GMS process from battery optimization whitelist.
- Improved screen timeout duration reduction process.
- Enhanced vibrate on touch disabling.
- Improved background app closure process.
- Streamlined the disabling of location services when not in use.
- Refined the renice process for better performance.
- Added an option to auto-add GMS into the battery using the restricted list.

## Performance

- Improved overall performance and execution speed of the script.

## Log File Location

- Fixed the default location of the log file to: `/data/adb/modules/STRPxDOZE/strpxdoze.log`.

## User Interaction

- Streamlined user prompts and choices for smoother interaction.

## Error Handling

- Enhanced error handling to provide clearer messages in unexpected scenarios.

## Formatting and Readability

- Adjusted formatting and layout for better readability.

## Documentation

- Updated documentation to reflect the latest changes and provide usage instructions.

---

*Enjoy the enhanced features and improved stability with STRP x DOZE v2.2!*

If you have any questions or encounter issues, feel free to reach out.
------
# v2.0 Stable Build
Changelog:
------
Version v2.0 - Date 2023-08-09
------
- Updated the main banner in the script menu to improve visual appeal.
- Fixed various issues in the script code to enhance functionality and stability.
- Added new configurable values to provide more customization options.
- Significantly improved the overall performance and execution speed of the script.
- Changed the default location of the log file to: /data/adb/modules/STRPxDOZE/strpxdoze.log.
- Introduced additional placebo changelogs to keep users entertained while reading.
- Streamlined user prompts and choices for a smoother interaction.
- Enhanced error handling to provide clearer messages in case of unexpected scenarios.
- Adjusted formatting and layout for better readability.
- Updated documentation to reflect the latest changes and usage instructions.
------
Your feedback and suggestions are highly appreciated. Feel free to reach out if you encounter any issues or have ideas for further improvements.
-------
# v1.8 (180)
- Supporting now Android 13
- Completly Reworked Script
- Reworked .log (/sdcard/#STRP/strpxdoze.log)
- SDK check before script execute (min. SDK > 26 | Android 8 Oreo)
-> ADDED
- Patching GMS </> IMS - XML files..
- Moving, rename and remove files, then replace them with Modified .xml ones..
- Disabling collective device administrators
- Removing GMS Process from Battery Optimization Whitelist
- Reduce screen timeout duration (can be changed at anytime in settings Manually)
- Turning off vibrate on touching (can be changed at anytime in settings Manually)
- Closing all apps in Background where not in use
- Disabling location services when not in use
- STRP exclusive Google Services Battery Drain Fix
- Disabling GMS, IMS and some other Battery Fuckers running on Device Startup
-> ADDED (YES/NO) CHOICES
- Auto Add GMS Into Battery Using Restricted List ?
- Fix Notification Delay Automatically ?
- Clean Play Cache Too ?
- Enable Adaptive Battery ?
- Run STRP GMS Doze Checker End of script if needed ?
-----
# v1.7 (170)
- Removed Collective Device Administrators
- Removed gms from whitelist
- Added scissor and Gl Preload thanks to @Saitama
- Removed several values causing notifications issues
- Whitelisted Broadcast Receiver and some others
- If incoming messages still delays then you can use this manual fix
- ( i have already added it inside doze code but just in case here the fix)
- Command-line for fix delayed incoming messages issue:
- Code:
> su
> cd /data/data
> find . -type f -name '*gms*' -delete
> Hit enter and wuala.. The Problem is Fixed
------
# v1.6 (160)
- Reworked Values
- Added Abbility to enable & disable manually
- Termux Commands ...
- Enable = su -c dozeon
- Disable = su -c dozeoff
- Adjusted main script
- fixed navigation & google play issue
-----
# v1.5 (150)
- Added various analytics to disable
- Added new ultimate doze values to squash many abttery out of GMS as possible
- Will now Loop all of them trough every 'user' on device
- reworked script
- fixed many bugs incl. location, maps and more
- huge improvment made to reduce much battery consumption as possible
- various code bugs fixed and merged
-------
# v1.4 (140)
- Added chimera
- fixed GMS problem from v1.3 (sorry for that lmao)
- fixed gmail, chrome, playstore and other stuff
- removed doze tester, no more needed
- minor bug fixes and Improvments 
------
# v1.3 (130)
- Added Many doze option to get maximum out of Battery Drain while in Daily using
- script run auto after 45 sec. after boot
- huge Improvments made for best battery backup
- fixed gms issue
- minor bug fixes and Improvments
-------
# v1.2 (120)
- Added new doze values .. many of them..
- Script auto Loads after boot wait 30-40 sec to apply itself.
- u can see now what getting Dozed when run Script manual 
- su -c dailygms 
- don't scare about many process, all that get doze'd 
- minor changes, bug fixes and Improvments made.
------
# v1.1 (110)
- Fixed Gmail issue
- added some facebook and other useless sozial media drainer
- Initializing now 40 sec. after boot
------
# v1.0 ( 100 ) Initial Release
- Script will AUTO execute after boot!
- You can check with STRP checker if it's Successfully Applied!
- just use su -c STRPC to start checker..
------
