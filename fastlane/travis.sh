#!/bin/sh

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
 	# Travis CI fetches a shallow clone. We use commit count until HEAD for build number. In order to assure that the count is correct we have to unshallow the clone.
 	git fetch --unshallow
 	fastlane test
	fastlane beta
	exit $?
fi