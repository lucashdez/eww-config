#!/bin/bash

if [[ "$1" == "true" ]]; then
	eww update kb_es=false
	hyprctl switchxkblayout "at-translated-set-2-keyboard" next
	hyprctl switchxkblayout "2.4g-rf-keyboard-&-mouse" next
elif [[ "$1" == "false" ]]; then
	eww update kb_es=true
	hyprctl switchxkblayout "at-translated-set-2-keyboard" next
	hyprctl switchxkblayout "2.4g-rf-keyboard-&-mouse" next
fi

