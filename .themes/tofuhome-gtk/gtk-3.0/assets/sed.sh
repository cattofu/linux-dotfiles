#!/bin/sh
sed -i \
         -e 's/#d4cd9f/rgb(0%,0%,0%)/g' \
         -e 's/#091b2c/rgb(100%,100%,100%)/g' \
    -e 's/#46423a/rgb(50%,0%,0%)/g' \
     -e 's/#857c64/rgb(0%,50%,0%)/g' \
     -e 's/#fcedc5/rgb(50%,0%,50%)/g' \
     -e 's/#091b2c/rgb(0%,0%,50%)/g' \
	"$@"
