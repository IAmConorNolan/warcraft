#!/usr/bin/env bash
set -e

XCCONFIG=$(cat Warcraft.xcconfig)

function extractValue() {
  VERSION_KEY=$1
  sed -e "s#.*$VERSION_KEY=\(\)#\1#" <<< $XCCONFIG | cut -f1 -d ' ' | xargs
}

WARCRAFT_VERSION_NUMBER=$(extractValue WARCRAFT_VERSION_NUMBER)
echo "WARCRAFT_VERSION_NUMBER=${WARCRAFT_VERSION_NUMBER)}" >> $GITHUB_ENV

declare -a VERSIONS=(
    $WARCRAFT_VERSION_NUMBER
)
