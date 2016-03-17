#!/bin/bash

. /home/pi/jgs/config.cfg

echo "Initializing gpio ports"

gpio mode 0  in
gpio mode 1  in
gpio mode 3  in
gpio mode 4  in
gpio mode 5  in
gpio mode 6  in
gpio mode 7  in
gpio mode 8  in
gpio mode 9  in
gpio mode 10 in
gpio mode 11 in
gpio mode 12 in
gpio mode 13 in
gpio mode 14 in
gpio mode 15 in
gpio mode 16 in

echo "... done!"
