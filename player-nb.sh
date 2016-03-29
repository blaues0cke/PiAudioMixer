#!/bin/bash

. /home/pi/jgs/config.cfg

audio_device=$3
gpio_pin=$1
gpio_mode="falling"
group=$4
lock_time=500
mode="wav"
sound_file=$2

current_ms=$(date +%s%3N)
lock_file="/home/pi/jgs/lock_${group}.lock"
locked_until=0

if [ -f $lock_file ]; then
    echo "Lock file found, reading content"
    
    locked_until=$(cat $lock_file)
fi

if [ "${locked_until}" -gt "${current_ms}" ]; then
    echo "Lock found, aborting"

    exit
fi

echo "Configuring pins"

gpio mode $gpio_pin in
gpio mode $gpio_pin up
gpio edge $gpio_pin $gpio_mode

echo "Running player..."

while true; do
    current_ms=$(date +%s%3N)
    new_locked_until=$(($current_ms + $lock_time))

    echo "${new_locked_until}" > $lock_file

    gpio wfi $gpio_pin falling
    echo "pin ${gpio_pin} ${gpio_mode}" >> /home/pi/jgs/log
    kill_pattern="mpg321 -a ${audio_device}"
    pkill -f "${kill_pattern}"

    audio_file_path="${jgs_usb_path}${sound_file}"

#    if [ "${mode}" == "wav" ]; then
#        aplay -D $audio_device $audio_file_path 
#    else
        mpg321 -a $audio_device $audio_file_path -l 1
 #   fi


    sleep 0.12
done

echo "... done!"
