grim -g "$(slurp -o -r -c '#ff0000ff')" - | satty --filename - --fullscreen --copy-command wl-copy --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png
