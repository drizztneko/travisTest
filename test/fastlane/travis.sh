#!/bin/sh

if [[ "$TRAVIS_PULLREQUEST" != "false"]]; then
	fastlane test
	exit $?
fi