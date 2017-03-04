#!/bin/bash

#boje
blue='\e[0;34m'
red='\e[1;31m'
green='\e[1;32m'
lgreen='\033[0;32m'
cyan='\033[0;36m'
yellow='\033[0;33m'

#za ip itd..
DEFAULT_ROUTE=$(ip route show default | awk '/default/ {print $3}')
IFACE=$(ip route show | awk '(NR == 2) {print $3}')
MYIP=$(ip route show | awk '(NR == 2) {print $9}')
VERSION="0.1"

#prva strana
echo -e $green"				    Floki $VERSION"
echo "	 			Made by Stratimo 			"
echo -e $red"				  ..:::::::::..		"
echo "			    ..:::aad8888888baa:::..	"
echo "			  .::::d:?88888888888?::8b::::.	"
echo "  	 	        .:::d8888:?88888888??a888888b:::.	"
echo "   		       .:::d8888888a8888888aa8888888888b:::.	"
echo "   		      ::::dP::::::::88888888888::::::::Yb::::	"
echo "   		     ::::dP:::::::::Y888888888P:::::::::Yb::::	"
echo "   		    ::::d8:::::::::::Y8888888P:::::::::::8b::::	"
echo "   		   .::::88::::::::::::Y88888P::::::::::::88::::.	"
echo "   		   :::::Y8baaaaaaaaaa88P:T:Y88aaaaaaaaaad8P:::::	"
echo "   		   :::::::Y88888888888P::|::Y88888888888P:::::::	"
echo "   		   ::::::::::::::::888:::|:::888::::::::::::::::	"
echo "   		    :::::::::::::::8888888888888b::::::::::::::	"
echo "   		    :::::::::::::::88888888888888::::::::::::::	"
echo "   		     :::::::::::::d88888888888888::::::::::::: 	"
echo "   		      ::::::::::::88::88::88:::88::::::::::::	"
echo "   		        ::::::::::88::88::88:::88::::::::::	"
echo "   		          ::::::::88::88::P::::88::::::::	"
echo "   		            ::::::88::88:::::::88::::::	"
echo "   		                :::::::::::::::::::	"
echo "   		                     ::::::::: 	"

#funkcije1 stratimo / exit
stratimo () {
	echo -e $red''
	echo "   #     #                     "
	echo "   ##   ##   ##   #####  ######"
	echo "   # # # #  #  #  #    # #     "
	echo "   #  #  # #    # #    # ##### "
	echo "   #     # ###### #    # #     "
	echo "   #     # #    # #    # #     "
	echo "   #     # #    # #####  ######"      
	echo -e $blue''
	echo "			 #####  #   #    "
	echo "			 #    #  # #     "
	echo "			 #####    #      "
	echo "			 #    #   #      "
	echo "			 #    #   #      "
	echo "			 #####    #      "
	echo -e $green''
	echo "			  #####                                            "
	echo "			 #     # ##### #####    ##   ##### # #    #  ####  "
	echo "			 #         #   #    #  #  #    #   # ##  ## #    # "
	echo "			  #####    #   #    # #    #   #   # # ## # #    # "
	echo "			       #   #   #####  ######   #   # #    # #    # "
	echo "			 #     #   #   #   #  #    #   #   # #    # #    # "
	echo "			  #####    #   #    # #    #   #   # #    #  ####  "  
}

#funkcija3 TheFatRat
TheFatRat () {
echo ""
echo -e "Da li zelis da preuzmes TheFatRat ? ($red Y$green /$red N $green)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo ""
		echo -e "$red [+] $green Preuzimanje TheFatRat-a !"
		git clone https://github.com/Screetsec/TheFatRat.git
		echo -e "$red [ ✔ ] $green Zavrsena Instalacija TheFatRat-a ! $red [ ✔ ] $green"		
	else
		echo ""
		echo -e "$red [-] $green OK, mozda kasnije !"
	fi	
}

#funkcija4 Ddos
Ddos () {
echo ""
echo -e "Da li zelis da preuzmes Ddos ? ($red Y$green /$red N $green)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo ""
		echo -e "$red [+] $green Preuzimanje Ddos-a !"
		git clone https://github.com/FreelancePentester/ddos-script.git
		echo -e "$red [ ✔ ] $green Zavrsena Instalacija Ddos-a ! $red [ ✔ ] $green "		
	else
		echo ""
		echo -e "$red [-] $green OK, mozda kasnije !"
	fi	
}

#funkcija5 pauza
pause () {
   echo ""
   read -sn 1 -p "Pritisni bilo sta za povratak u glavni meni...."
}

#funkcija6 precica lakodoposla terminal
lakodoposla () {
path=`pwd`
echo "#!/bin/bash" > /usr/local/sbin/floki
scrp="cd $path && bash floki.sh"
echo $scrp >> /usr/local/sbin/floki
}

#funkcija7 sudo
FUNC1=$(declare -f lakodoposla)

#funkcija8 chmod
ch="chmod +x /usr/local/sbin/floki"

#funkcija9 osvezi me
osvezime () {
git clone https://github.com/stratimo/Floki.git
cp -R Floki/* `pwd`
rm -r -f Floki
rm -r -f .git
}

#funkcija10 mainmenu
mainmenu () {
clear
echo -e $cyan"
################################################################################
|                                                                              |
|                                  $green Floki $VERSION$cyan                                  |
|                              $green Script by Stratimo$cyan                             |
|______________________________________________________________________________|
|                                                                              |
|                    Facebook: www.facebook.com/stratimo                       |
|									       |
|         Youtube: www.youtube.com/channel/UCGHr9v-O8ZOsxh-HtJNqQJA            |
|									       |
|                    Donacije: www.paypal.me/Stratimo/5                        |
|									       |
|                                   [ OK ]                                     |
|______________________________________________________________________________|
$green                                        
                      Lokacija Scripte : $red $0 $green  
                          Informacije o netu :
        Gateway: $red$DEFAULT_ROUTE$green Interface: $red$IFACE$green My LAN Ip: $red$MYIP$green
$cyan###############################################################################"$green

select menusel in "TheFatRat" "Ddos" "Pogledaj ovo :D" "Precica(root)" "Osvezi me" "Izadji iz programa"; do
case $menusel in
	"TheFatRat")
		TheFatRat
		pause
		mainmenu
		clear ;;
	
	"Ddos")
		Ddos
		pause
		mainmenu
		clear ;;

	"Pogledaj ovo :D")
		firefox https://www.paypal.me/Stratimo/5 https://www.facebook.com/stratimo https://www.youtube.com/channel/UCGHr9v-O8ZOsxh-HtJNqQJA 
		pause
		mainmenu
		clear ;;

	"Precica(root)")
		sudo bash -c "$FUNC1; lakodoposla; $ch"
		echo ""
		echo -e "$red [ ✔ ] $green Instalacija zavrsena!$red [ ✔ ] $green"
		echo -e "Bilo gde u terminalu da ukucas$red floki$green otvorice ti scriptu"
		sleep 5
		pause
		mainmenu
		clear ;;

	"Osvezi me")
		osvezime
		echo "Upravo si me osvezio"
		pause
		mainmenu
		clear ;;
	
	"Izadji iz programa")
		stratimo
		sleep 2
		clear && exit 0 ;;
		
	* )
		screwup
		clear ;;
esac

break

done
}

echo -n -e $blue"Da li zelis da udjes u glavni meni ?$red (D)a$blue$green (N)e$blue : "
	read input
		if [[ $input == "D" || $input == "d" ]]; then
			clear
			mainmenu
		else
			stratimo
			sleep 3
			clear && exit 0
fi


