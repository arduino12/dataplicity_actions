source /home/pi/Public/dataplicity_actions/camera/common.sh

if [ "$#" -eq 1 ]; then
    echo "$1" > "$VIDEO_SIZE_PATH"
	echo "[[[ReturnOK]]]"
else
	echo "[[[ReturnOK:$(get_global $VIDEO_SIZE_PATH 640x480)]]]"
fi
