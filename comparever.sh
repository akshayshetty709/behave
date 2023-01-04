#!/bin/bash
VERSION=$1
VERSION2=$2
version_gt() { test "$(echo "$@" | tr [:space:] "\n" | sort -V | head -1)" != "$1"; }
version_lt() { test "$(echo "$@" | tr [:space:] "\n" | sort -rV | head -1)" != "$1"; }
if version_gt $VERSION $VERSION2; then
echo "$VERSION is newer version than $VERSION2"
fi
if version_lt $VERSION $VERSION2; then
echo "$VERSION is older version than $VERSION2"
fi