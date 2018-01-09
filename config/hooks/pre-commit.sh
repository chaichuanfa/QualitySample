#!/usr/bin/env bash

echo "start checkstyle and pmd task"

SCRIPT_DIR=$(dirname "$0")
SCRIPT_ABS_PATH=`cd "$SCRIPT_DIR"; pwd`
$SCRIPT_ABS_PATH/../../gradlew  -PcheckCommit="true" checkstyle pmd
if [ $? -eq 0   ]; then
    echo "checkstyle and pmd OK"
else
	echo "checkstyle or pmd fail, for details see /build/reports/"
    exit 1
fi