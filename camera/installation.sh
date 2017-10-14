
sudo ln -s -t /home/dataplicity /home/pi/Public/dataplicity_actions/camera/dataplicity.actions.conf
sudo chmod +x /home/pi/Public/dataplicity_actions/camera/*.sh
sudo usermod -a -G video dataplicity
echo "needs to reboot!"

# google_drive mkdir pi05
# google_drive mkdir -p ... camera
# FOLDER_ID=0B6lBiNVMidPINllaRGVPOTA1M1U
# google_drive share $FOLDER_ID
# google_drive info $FOLDER_ID
# google_drive share --role writer --type user --email mada.drive1@gmail.com $FOLDER_ID
