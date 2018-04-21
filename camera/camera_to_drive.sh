source /home/pi/Public/dataplicity_actions/camera/common.sh

PICTURE_PATH=/tmp/pi_camera_picture.png
VIDEO_PATH=/tmp/pi_camera_video.h264
FOLDER_ID="..."

case $1 in
	picture)
		set_status "taking picture..."
		raspistill -n -o "$PICTURE_PATH"
		UPLOAD_PATH="$PICTURE_PATH"
        ;;
	video)
		set_status "taking video..."
		IFS=x read w h <<< "$(get_global $VIDEO_SIZE_PATH 640x480)"
		raspivid -w "$w" -h "$h" -t "$((1000 * $(get_global $VIDEO_LENGTH_PATH 5)))" -o "$VIDEO_PATH"
		# MP4Box -add "$VIDEO_PATH" /tmp/camera_video.mp4
		UPLOAD_PATH="$VIDEO_PATH"
        ;;
    *)
		echo "[$0] Incorrect argument ($1) - \"picture\" or \"video\" expected."
		exit 1
		;;
esac

set_status "uploading to google..."
gdrive upload --no-progress --delete -p "$FOLDER_ID" "$UPLOAD_PATH"

set_status "done!"
