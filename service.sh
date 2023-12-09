#!/system/bin/sh

wait_until_login() {
    while [[ "$(getprop sys.boot_completed)" -ne 1 && -d "/sdcard" ]]; do
        sleep 2
    done

    local test_file="/sdcard/.PERMISSION_TEST"
    touch "$test_file"
    while [ ! -f "$test_file" ]; do
        touch "$test_file"
        sleep 2
    done

    rm "$test_file"
}

wait_until_login

# Log Location
LOG="/data/adb/modules/STRPxDOZE/strpxdoze-latestart.log"

# If log exists, remove it
[[ -e "$LOG" ]] && rm "$LOG"

# If folder exists, create .log file
if [[ -d "/data/adb/modules/STRPxDOZE" ]]; then
    touch "$LOG"
else
    # If folder does not exist, create folder first, then create .log file
    mkdir -p "/data/adb/modules/STRPxDOZE"
    touch "$LOG"
fi

# Logging Success
echo "" >> "$LOG"
echo "▌▰▰ Initialize STRP x DOZE Late Start Service..." >> "$LOG"
echo "" >> "$LOG"

# Thanks to Gloeyisk & CrazyBytesVE for Partial Stuffs in here.

sleep 25

cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.gms.location.history RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.gm RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.xiaomi.finddevice RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.miui.analytics RUN_ANY_IN_BACKGROUND ignore

echo "$(date)" >> "$LOG"
echo "▰ Late Start Service Run With Success!" >> "$LOG"
echo "" >> "$LOG"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" >> "$LOG"
echo "" >> "$LOG"