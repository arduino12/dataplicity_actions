shopt -s expand_aliases
source /home/pi/.bash_aliases

STATUS_PATH=/tmp/status
VIDEO_LENGTH_PATH=/tmp/video_length
VIDEO_SIZE_PATH=/tmp/video_size


set_status() {
	echo "$1" > "$STATUS_PATH"
}

get_global() {
	[[ -f "$1" ]] && cat "$1" || echo "$2"
}
