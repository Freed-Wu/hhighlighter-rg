#!/usr/bin/env bash

help() {
	echo 'Usage: PROGRAM | h [OPTS] ARGS...

  Options from rg (ripgrep):
  -i                search case-insensitively
  -w                only show matches surrounded by word boundaries
  -F                treat pattern as literal string
  -P                enable matching with PCRE2

  -C COLOR_FORMAT   highlight color format
  -n                dry run
  -h                print this help message
  -V                print version information
  '
}

version() {
	echo "$0" v0.1.0
}

main() {
	[ -t 0 ] && help && exit

	local opts='' command='' dry_run='' _colors=''
	while getopts 'VhnC:iwFP' opt; do
		case $opt in
		V)
			version
			exit
			;;
		C)
			_colors="$OPTARG"
			;;
		n)
			readonly dry_run=1
			;;
		[wiFP])
			opts=$opts$opt
			;;
		[h\?])
			help
			exit
			;;
		esac
	done

	shift "$((OPTIND - 1))"

	if [ -n "$opts" ]; then
		opts=-"$opts"
	fi
	opts="$opts --color=always"

	if [ -n "$_colors" ]; then
		for color in $_colors; do
			colors=("${colors[@]}" "$color")
		done
	else
		colors=(
			red
			green
			yellow
			blue
			magenta
			cyan
		)
	fi

	i=0
	for keyword in "$@"; do
		command=$command"rg --colors='match:fg:${colors[$i]}' $opts '$keyword' |"
		i=$((i + 1))
	done
	command=${command%?}
	if [ -n "$dry_run" ]; then
		echo -n "$command"
	else
		cat - | eval "$command"
	fi
}

main "$@"
