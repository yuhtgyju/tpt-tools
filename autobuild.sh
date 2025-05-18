#!/bin/zsh
set -e

cmd="$1"

function build() {
	if [[ ! -d build-debug ]]; then
		meson setup build-debug
	fi
	if [[ "${PWD##*/}" != "build-debug" ]]; then
		cd build-debug
	fi
	meson compile
	./powder
}


echo "This is to auto build TPT. if you havent downloaded the requirements for TPT then this wont work."

if [[ -z "$cmd" ]]; then
	echo "Usage: $0 build"
	exit 1
fi

if [[ "$cmd" == "build" ]]; then
	build
	exit 0
else
	echo "Unknown command: $cmd"
	echo "Available commands: build"
	exit 1
fi

