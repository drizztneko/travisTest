#!/bin/sh

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
 	fastlane test
	exit $?
fi

if [[ $TRAVIS_BRANCH == 'master' ]]; then
	fastlane beta
	exit $?
fi