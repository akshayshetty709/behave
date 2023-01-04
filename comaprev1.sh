#!/bin/bash
old_version=$1
new_version=$2
update_version()
{
version=$(echo "$@" | tr [:space:] "\n" | sort -rV | head -1)
echo "newer version is ${version}"
}
update_version $1 $2