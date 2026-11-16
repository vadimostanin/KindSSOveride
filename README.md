# KindScreenSaver

## Overview

KindScreenSaver is KUAL extension for replacing system screensaver images to user images.

Tested only at Kindle PW2 6th gen, FW 5.12.2.2

## Prerequisites
- Kindle is jailbreaked;
- KUAL is installed
- "/usr/share/blanket/screensaver/" is available, can be checked by "KTerm" extension.
- - If no "/usr/share/blanket/screensaver/" then try find folder that contains files "bg_ss00.png" by "KTerm" command "find / -name bg_ss00.png"
- - Replace found system folder at "extensions\kindscreensaver\bin\enable.sh" for variable "SYSTEMFOLDER="

## How to Install

1. Grab the zip [GitHub repository](https://github.com/vadimostanin/KindSSOveride/archive/refs/heads/main.zip), unpack on /mnt/us/extensions as any other extension.
2. Create folder "/mnt/us/screensaver"
4. Copy images to "/mnt/us/screensaver", check that image size compatible with your device (for Kindle PW2 - 758x1024)
5. Launch via KUAL menu "KindleScreensaverOverride" -> "Enable".

## Preparing images:
1. Adjust images size using:
- Online editor "https://e-ink.me/en/tools/kindle-screensaver"
- Or tutorial [3 Steps to Create a Kindle Screensaver: Open, Adjust, and Save](https://en.bookfere.com/post/create-kindle-screensaver.html)
- Or any image editor

2. Rename all images by template "bg_ssXX".png, where XX are number from 00 to 99
