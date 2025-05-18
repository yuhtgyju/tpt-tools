#!/bin/zsh

cmd="$1"

function get() {
	git clone https://github.com/yuhtgyju/tpt-tools.git
	chmod +x ./tpt-tools/tptreq.sh
}

echo "This is to download my custom tools."

if [[ -z "$cmd" ]]; then
    echo "Usage: $0 get"
    exit 1
fi

if [[ "$cmd" == "get" ]]; then
    get
else
    echo "Unknown command: $cmd"
    echo "Available commands: get"
    exit 1
fi

