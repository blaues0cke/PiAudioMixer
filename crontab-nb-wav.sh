# USB 
@reboot root sh /home/pi/jgs/init-usb.sh

# Group 1
@reboot root sh /home/pi/jgs/player-nb.sh 26 1/1.wav plughw:1 group1 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 27 1/2.wav plughw:1 group1 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 28 1/3.wav plughw:1 group1 --aggressive 
@reboot root sh /home/pi/jgs/player-nb.sh 29 1/4.wav plughw:1 group1 --aggressive

# Group 2
@reboot root sh /home/pi/jgs/player-nb.sh 22 2/1.wav plughw:2 group2 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 23 2/2.wav plughw:2 group2 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 24 2/3.wav plughw:2 group2 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 25 2/4.wav plughw:2 group2 --aggressive

# Group 3
@reboot root sh /home/pi/jgs/player-nb.sh 15 3/1.wav plughw:3 group3 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 16 3/2.wav plughw:3 group3 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 1 3/3.wav plughw:3 group3 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 4 3/4.wav plughw:3 group3 --aggressive

# Group 4
@reboot root sh /home/pi/jgs/player-nb.sh 7 4/1.wav plughw:4 group4 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 8 4/2.wav plughw:4 group4 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 9 4/3.wav plughw:4 group4 --aggressive
@reboot root sh /home/pi/jgs/player-nb.sh 0 4/4.wav plughw:4 group4 --aggressive







