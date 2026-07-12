# bin/bash

ARR=("gluetun" "lidarr" "prowlarr" "qbittorrent" "radarr" "sonarr" "seerr")

FOLDER=("movie" "tv" "music" "downloads")

sudo apt install figlet

echo "----------------------------------------------------------------------"

figlet .env

if [ ! -f ".env" ]; then
    echo "Enter API key from VPN:"
    read API_KEY
    
    echo API_KEY=$API_KEY > .env
    echo ".env created with api key..."
else 
    echo ".env already created..."
fi

echo ""

echo "----------------------------------------------------------------------"

figlet config file

for item in ${ARR[@]}
do
    if [ ! -d "./config-$item" ]; then
        mkdir "config-$item"
        echo "config-$item created..."
    else
        echo "config-$item already created..."
    fi
done

echo "----------------------------------------------------------------------"

echo ""

figlet data file


for item in ${ARR[@]}
do
    if [ ! -d "./data-$item" ]; then
        mkdir "data-$item"
        echo "data-$ created..."
    else
        echo "data-$item already created..."
    fi
done 

echo "----------------------------------------------------------------------"

echo ""

    figlet media file

    if [ ! -d "./media" ]; then
        mkdir "./media/"
        echo "media folder created..."

            for item in ${FOLDER[@]}
            do 
                if [ ! -d "./media/$item" ]; then
                    mkdir "./media/$item"
                    echo "/media/$item created..."
                else 
                    echo "/media/$item already created..."
                fi
        done
    else 
        echo "media folder aleady created..."
    fi

    echo "----------------------------------------------------------------------"

echo ""

figlet docker compose

# docker compose up --build