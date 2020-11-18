#!/bin/bash
open bezeq_google.command
osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {100, 100, 320, 300}'
open bezeq_il.command
osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {320, 100, 540, 300}'
open hot_google.command
osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {540, 100, 760, 300}'
open hot_il.command
osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {760, 100, 980, 300}'
open hot_wifi.command
osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {980, 100, 1200, 300}'