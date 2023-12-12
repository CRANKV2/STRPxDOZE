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
LOG="/data/adb/modules/STRPxDOZE/Doze-latestart.log"

# Function to log message with timestamp
log_message() {
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] $1" >> "$LOG"
}

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
log_message "▌▰▰ Initialize STRP x DOZE Late Start Service..."
# Thanks to Gloeyisk & CrazyBytesVE for Partial Stuffs in here.

sleep 10
log_message ""
# Log the result of each appops command
log_message "Setting appops for com.google.android.gms..."
cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore || true
cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore || true
cmd appops set com.google.android.gms.location.history RUN_ANY_IN_BACKGROUND ignore || true
cmd appops set com.google.android.gm RUN_ANY_IN_BACKGROUND ignore || true

log_message "Setting appops for com.google.android.ims..."
cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore || true
cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore || true

log_message "Setting appops for com.xiaomi.finddevice..."
cmd appops set com.xiaomi.finddevice RUN_ANY_IN_BACKGROUND ignore || true

log_message "Setting appops for com.miui.analytics..."
cmd appops set com.miui.analytics RUN_ANY_IN_BACKGROUND ignore || true
log_message ""
# Log the result of the update_checker
log_message "Running update_checker..."
update_checker_doze
log_message "Successfully executed Update Checker ( Check you're Notifications! )"
log_message ""
# Log the success of Late Start Service
log_message "Late Start Service Run With Success!"
log_message "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"