#!/sbin/sh

# Find XML files containing conflicting entries
conflict_files=$(find /data/adb -iname "*.xml" -exec grep -l 'allow-in-power-save package="com.google.android.gms"' {} + 2>/dev/null)

# Remove conflicting entries from identified XML files
for file in $conflict_files; do
    sed -i '/allow-in-power-save package="com.google.android.gms"/d; /allow-in-data-usage-save package="com.google.android.gms"/d' "$file"
done