#!/bin/bash

# See these questions for more info:
#
# - [Wine Converted App (Fox Weiqi) Not Showing Chinese (or CJK) Characters](https://unix.stackexchange.com/a/785322/364698)
# - [Adding a Wine `.lnk` Program to Rofi](https://unix.stackexchange.com/a/784808/364698)

cd "${HOME}/foxweiqi/drive_c/Program Files (x86)/foxwq/foxwq"

WINEPREFIX=~/foxweiqi wine foxwq.exe
