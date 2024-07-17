#!/bin/bash

if [ -e /tmp/quack ]; then
	assocoptions[01quack]="Disable Quacking"
	assocfunctions[01quack]="disable_quack"
else
	assocoptions[01quack]="Enable Quacking"
	assocfunctions[01quack]="enable_quack"
fi

enable_quack() {
	touch /tmp/quack
}

disable_quack() {
	rm -f /tmp/quack
}

