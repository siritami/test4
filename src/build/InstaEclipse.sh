#!/bin/bash
# InstaEclipse build
source src/build/utils.sh

# Download requirements
dl_gh "InstaEclipse" "ReSo7200" "latest"
dl_gh "LSPatch" "JingMatrix" "latest" "manager.apk"

# Patch Instgram Arm64-v8a
#get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram" "arm64-v8a" "nodpi"
lspatch "instagram-arm64-v8a" "InstaEclipse"
