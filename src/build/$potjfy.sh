#!/bin/bash
# $potjfy build
source src/build/utils.sh

# Download requirements
dl_gh "revanced-patches revanced-cli" "revanced" "latest"

# Patch $potjfy:
get_patches_key "$potjfy-revanced"
get_apkure "com.spotify.music" "$potjfy" "spotify-music-and-podcasts-for-android/com.spotify.music" "Bundle_extract"
split_editor "youtube" "youtube"
patch "$potjfy" "revanced" "inotia"
