#!/bin/bash

# *************************
# * Crunch-Cracker V 1.0b *
# *************************
# Date: 10/10/2016
# Dev: Shell
# BY: KURO CODE

#### Configuration ################################################################################

DUMP="Wordlist"
mkdir $DUMP_PATH Wordlist

#### Colors #######################################################################################

blanc="\033[1;37m"
gris="\033[0;37m"
rouge="\033[1;31m"
vert="\033[1;32m"
jaune="\033[1;33m"

### txt ###

nar=" Choisissez une option "
Titre=" Crunch-Cracker v1.0b "

###################################################################################################

#### INTRO ########################################################################

function PRE {

	clear
    echo
	sleep 0.5
	echo -e "$vert		8eeee8 "
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
	
	echo -e "$rouge	     8eeee8"                                      
	echo -e "	     8    i eeeee  eeeee eeee e   e  eeee eeeee"  
	echo -e "	     8e     8   8  8   8 8  8 8   8  8    8   8 " 
	echo -e "	     88     8eee8e 8eee8 8e   8eee8e 8eee 8eee8e "
	echo -e "	     88   e 88   8 88  8 88   88   8 88   88   8 "
	echo -e "	     88eee8 88   8 88  8 88e8 88   8 88ee 88   8"
	sleep 0.5
	echo
	echo -e "$blanc	    	      Wordlist Générator$vert By$jaune KU$rouge""RO "
	sleep 3
	main

}



#### Menu 1 ######################

function main {

	clear

	echo

	top

	echo
	echo
	echo -e " $blanc$nar"
	echo -e " 
		  $vert 1)$blanc Info
		  $vert 2)$blanc Creation de wordlist
		  $rouge 0)$blanc Fermer le programme "
	echo
	read -p " Choix: " choix
		case $choix in
			1) information;;
			2) Crunchmenu;;
			0) EXITMENU;;
			*) echo -e "$Blanc [$rouge ERREUR$blanc ]" && sleep 3
		esac
	
main
}

### INFO #####################################################################################

function information {

	clear

	echo

	top

	echo	
	echo -e "$vert	Nom:$blanc......Crunch-Cracker"
	sleep 0.2
	echo -e "$vert	Version:$blanc..1.0 Beta"
	sleep 0.2
	echo -e "$vert	Langue:$blanc.........[FR]"
	sleep 0.2
	echo -e "$vert	Date:$blanc.....10/10/2016"
	sleep 0.2
	echo -e "$vert	Auteur:$blanc...KURO CODE"
	sleep 0.2
	echo -e "$vert	Type:$blanc.....Simple générateur de Wordlist"
	sleep 0.2
	echo -e "$vert	Dev:$blanc......Shell "
	echo
	echo -e $jaune "[Fonction cracker en développement]"
	echo
	sleep 0.5 
	echo -e "$blanc Faire$rouge [ENTREE]"
	read pause		 
main
}

##################################################################################################

#### MENU CRUNCH #################################################################################

function Crunchmenu {

	clear

	echo

	top

	echo

	echo -e " $nar "
	echo -e "
	$vert	1)$blanc Créer une liste
	$vert	2)$blanc Retour
	$rouge	0)$blanc Sortir"
	read -p " Choix: " choix
		case $choix in
			1) LST;;
			2) main;;
			0) EXITMENU;;
			*) echo -e "$Blanc [$rouge ERREUR$blanc ]" && sleep 3
		esac
Crunchmenu
}


function LST {

	clear

	top

	echo
	echo -e " Entrez un nombre de caractères minimun "
	echo
	read -p "Nombre Min: " nummin
	clear
	echo
	top
	echo
	echo -e " Entrez un nombre de caractères maximum "
	echo
	read -p " Nombre Max: " nummax
	clear 
	echo
	top
	echo
	echo -e " Entrez les caratères de votre choix"
	echo
	read -p " Caracteres: " char
	clear
	echo
	top
	echo
	echo -e " Donnez un nom à votre wordlist"
	echo
	read -p " Nom: " Nom
		sleep 1
		clear
		echo
		top
		echo
		echo -e " Création de la liste, veuillez patienter un instant..."
		echo
		sleep 1
		crunch $nummin $nummax $char -o $DUMP/$Nom.txt
		echo 
		top
		echo
		echo -e "$vert Votre Wordlist est terminé$blanc "
		echo -e " [$rouge!$blanc]$vert Dossier d'enregistrement$jaune (/Wordlist/$Nom.txt)$blanc [$rouge!$blanc]"
		echo
		echo -e "$white Faire $rouge[ENTREE]$white"
		read pause
compress
}

#### COMPRESSION #################################################################################

function compress {
		clear
		echo
		top
		echo
		echo -e " Voulez-vous compresser la liste?"
		echo
		echo -e "
		$vert  1)$blanc Oui
		$vert  2)$blanc Non (Retour au menu principal)
		$rouge  0)$blanc Fermeture du programme"
		read -p " Choix: " choix
		case $choix in
			1) echo
			   echo -e " Compression... patientez un instant. "
			   cd $DUMP &&
			   tar cvzf $Nom.tar $Nom.txt
				rm -f $Nom.txt
			   clear
			   echo
			   top
			   echo
			   echo -e " [$vert""OK""$blanc]$jaune Compression terminée! "
			   sleep 1
			   echo -e "$blanc [$vert""OK""$blanc]$jaune Suppression de $Nom.txt."
			   sleep 3 ;;

			2) main;;
			0) EXITMENU;;
			*) echo -e "$Blanc [$rouge ERREUR$blanc ]" && sleep 3 compress;;
		esac

main

}

##################################################################################################

##### Fonction Top ########################################################################

function top {

	clear
	echo
	sleep 0.1 
	echo -e " $blanc~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 
	echo -e " $rouge 	C$blanc R U N C H $rouge C$blanc R A C K E R$gris  v$vert 1.0 " 
	echo -e " $blanc~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	sleep 0.5
	echo

}


##### FERMETURE DU PROGRAMME ###############################################################

function EXITMENU {

	clear
	echo
	top
	echo -e "$blanc Fermeture du programme..."
	sleep 0.5
	echo
	echo -e " [$rouge*$blanc] $vert Merci d'avoir utiliser Crunch-Cracker$blanc [$rouge*$blanc]"
	sleep 3
	clear
	exit
}

### Fonction Cracker #############################################################################

### Fonction Cracker fin #########################################################################

####################################### START ####################################################

PRE



