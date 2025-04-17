#!/bin/bash
# $potjfy build
source src/build/utils.sh

# Download requirements
dl_gh "revanced-patches revanced-cli" "revanced" "latest"

# Patch Spotjfy:
patch_Spotjfy() {
	get_patches_key "Spotjfy-revanced"
	local j="i"
	version="9.0.38.129"
	get_apkpure "com.spot"$j"fy.music" "Spotjfy" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music" "Bundle_extract"
	split_editor "spotjfy" "spotjfy"
	patch "spotjfy" "revanced"
}
patch_Spotjfy
