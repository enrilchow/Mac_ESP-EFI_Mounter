echo -e "# \033[34mMac ESP(EFI) Mounter by EnrilChow on Github.\033[0m"
echo -e "# \033[33mThe procedure will need root permission.\033[0m"
volumeid=`diskutil list | grep EFI | awk '{print $6}'`
if [ ! $volumeid ]
then
    echo -e "# \033[31mAborted:\033[0m Counldn't find EFI partition."
else
    sudo mkdir /Volumes/EFI
    sudo mount -t msdos "/dev/${volumeid}" /Volumes/EFI
    echo -e "# \033[32mFinished:\033[0m Mounted as volume: EFI."
    echo -e "# \033[35m:)\033[0m Hope you give me a star on github if this helps."
fi
