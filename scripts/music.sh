get_song() {
	song=`mpc -f %name% current`

	if [[ -z "$song" ]]; then
		song=`mpc | awk 'NR == 1 {print}' | cut -b 1-100`
		echo "$song"
	else
		echo "Offline"
	fi
}

if [[ "$1" == "--song" ]]; then
	get_song
fi
