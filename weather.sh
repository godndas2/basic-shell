#! /bin/bash
# weather.sh

program=Weather
version=1.1
year=2020
dev=computer-geek64

case $1 in
-h | --help)
    echo "$program $version"
    echo "Copywright $year $dev. All rights reserved"
    echo
    echo "Usage: weater [Options]"
    echo "Option        Long Option         Description"
    echo "-h            --help              Show the help screen"
    echo "-l [location] --location [location] Specifies the location"
    ;;
-l | --location)
    curl https://wttr.in/$2
    ;;
*)
    curl https://wttr.in
    ;;
esac