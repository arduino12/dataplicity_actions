source /home/pi/Public/dataplicity_actions/camera/common.sh

if [ "$#" -eq 1 ]; then
    echo "$1" > "$VIDEO_LENGTH_PATH"
	echo "[[[ReturnOK]]]"
else
	echo "[[[ReturnOK:$(get_global $VIDEO_LENGTH_PATH 5)]]]"
fi
