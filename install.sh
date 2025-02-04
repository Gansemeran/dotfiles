#!/usr/bin/env bash

for d in */; do
	stow "$d" -vv $1
done
