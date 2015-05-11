#!/bin/sh

S=$(date "+%S")
M=$(date "+%M")
D=$(date)

GENERATED_BUNDLE_VERSION=${S}
GENERATED_BUNDLE_SHORTVERSION=${M}.${S}

SRCROOT=${SRCROOT:-.}

echo "// Generated: ${D}" > "${SRCROOT}/Version.xcconfig"
echo "GENERATED_BUNDLE_VERSION = ${GENERATED_BUNDLE_VERSION}" >> "${SRCROOT}/Version.xcconfig"
echo "GENERATED_BUNDLE_SHORTVERSION = ${GENERATED_BUNDLE_SHORTVERSION}" >> "${SRCROOT}/Version.xcconfig"

echo "Generated: ${GENERATED_BUNDLE_VERSION} & ${GENERATED_BUNDLE_SHORTVERSION}"

# finishing touch
find "$SRCROOT" -name Info.plist -exec touch "{}" \;
sleep 0.5