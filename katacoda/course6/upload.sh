#!/bin/bash
clear

PS3='Choose your GZ Upload Method you want to (type 1, 2 Enter): '
foods=("Transfer-sh" "Google-Drive")
select fav in "${foods[@]}"; do
    case $fav in
        "Transfer-sh")
            echo "Your GZ file are uploading... Take up to 5-10m."
            curl -k --upload-file ./WindowsCustom.gz https://transfer.sh/WindowsCustom.gz
            echo " "
            echo "Upload done !!!"
            break
            ;;
        "Google-Drive")
            gdrive upload WindowsCustom.gz
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
