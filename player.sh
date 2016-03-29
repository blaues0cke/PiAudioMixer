#!/bin/bash

. /home/pi/jgs/config.cfg

audio_device=$3
gpio_pin=$1
group=$4
sound_file=$2

echo "Running player..."

while true; do
    button_state=$(gpio read $gpio_pin)

    if [ $button_state -eq 0 ]; then
        kill_pattern="mpg321 -a ${audio_device}"
        pkill -f "${kill_pattern}"

        audio_file_path="${jgs_usb_path}${sound_file}"

        mpg321 -a $audio_device $audio_file_path -l 1
    fi

    sleep 0.12
done

echo "... done!"
