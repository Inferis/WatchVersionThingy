#!/bin/sh

S=$(date "+%S")
M=$(date "+%M")
D=$(date)

SRCROOT=${SRCROOT:-.}

echo "// Generated: ${D}" > "${SRCROOT}/Version.xcconfig"
echo "GENERATED_BUNDLE_VERSION = ${S}" >> "${SRCROOT}/Version.xcconfig"
echo "GENERATED_BUNDLE_SHORTVERSION = ${S}.${M}" >> "${SRCROOT}/Version.xcconfig"

echo "SRCROOT = ${SRCROOT}"
echo "GENERATED_BUNDLE_VERSION = ${S}, GENERATED_BUNDLE_SHORTVERSION = ${S}.${M}"
