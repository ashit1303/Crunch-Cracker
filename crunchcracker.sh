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

#### CONFIG ####################################################################

DUMP="Wordlist"

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

mkdir $DUMP_PATH Wordlist


#**** SET LANGUAGE ****

function setting {

	conditional_clear

if [ "$CC_AUTO" =  "1" ];then 
	english; setinterface

else 

     while true; do
	
	top

	echo
	echo -e "" $R"["$Y"i"$R"]"$W" Select your language"
	echo 
	echo -e "
	$G 1)$W English
	$G 2)$W French     
	$G 3)$W Spanish "

                
	echo 
	read -p" Choice: " choix
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
	Choice=" Choice"
	YES="yes"
	NO="no"
	MAKE="$W""C$GR""re$W""AT$GR""e a$W W$GR""o$W""RDL$GR""is$W""T "
	ENTER="ENTER"
	Exit="$R""Exit   "
	Return="$W""RE$GR""tu$W""RN"

#~~~~ EXIT ~~~~
	CLOSE="$W C L O S I N G..."
	OFF=" Thank you for using Crunch-Cracker"

#~~~~ INFO ~~~~
	INFBAR="╔═════════════════════════════════════════╗"
	INFBAR2="╚═════════════════════════════════════════╝"
	INFNAME="$G Name:$W.......Crunch-Cracker            "
	INFVER="$G Version:$W....1.1                       "
	INFLNG="$G Language:$W...[ENG, FR, ESP]            "
	INFDATE="$G Date:$W.......04/23/2017                "
	INFAUTH="$G Author:$W.....KURO                      "
	INFTYPE="$G Type:$W.......Simple Wordlist generator "
	INFDEV="$G Dev:$W........Shell                     "
	INFUPDATE="$Y  Cracker function in development "

#~~~~ SET LIST ~~~~
	SETLIST_INFMIN=" Enter a minimum number of characters "
	SETLIST_INFMAX=" Enter a maximum number of characters "
	SETLIST_INFCHAR=" Enter the characters of your choice"
	SETLIST_IN=" Characters"
	SETLIST_NAMELIST=" Enter a name for the wordlist"
	SETLIST_WAIT=" Please wait..."
	SETLIST_FINISH="$G Your list is complete$W "
	SETLIST_FOLDERLIST=" [$R!$W]$G Folder:$Y (/$DUMP/$Nom.txt)$W [$R!$W]"

#~~~~ COMPRESS ~~~~
	COMPRESS_MSG=" Do you want to compress the list?"
	COMPRESS_INFO="(Back to main menu)"
	COMPRESS_WAITC=" Compression... Please wait... "
	COMPRESS_OK=" [$G""OK""$W]$Y Compression Finished! "
	COMPRESS_SUPP="$W [$G""OK""$W]$Y Del $Nom.txt."
}


function fr {

#~~~~ MENU ~~~~    	
	OPT="$W  O$GR""p$W""T$GR""i$W""O$GR""n"
	NAME_WL=" Nom"
    	error="ERREUR"
    	Choice=" Choix"
	YES="oui"
	NO="non"
	MAKE="$W""C$GR""ré$W""ER U$GR""ne $W""WO$GR""r$W""DL$GR""i$W""ST"
	ENTER="ENTREE"
    	Exit="$R""Fermer "
	Return="$W""RE$GR""to$W""U$GR""r"

#~~~~ EXIT ~~~~
	CLOSE="$W F E R M E T U R E..."
	OFF="Merci d'avoir utilisé Crunch-Cracker"

#~~~~ INFO ~~~~
	INFBAR="╔═══════════════════════════════════════════╗"
	INFBAR2="╚═══════════════════════════════════════════╝"
	INFNAME="$G Nom:$W......Crunch-Cracker		    "
	INFVER="$G Version:$W..1.1 			    "
	INFLNG="$G Langue:$W...[ENG, FR, ESP]		    "
	INFDATE="$G Date:$W.....23/04/2017		    "
	INFAUTH="$G Auteur:$W...KURO			    "
	INFTYPE="$G Type:$W.....Simple générateur de Wordlist "
	INFDEV="$G Dev:$W......Shell 			    "
	INFUPDATE="$Y Fonction Cracker en développement"

#~~~~ SET LIST ~~~~
	SETLIST_INFMIN=" Entrez un nombre de caractères minimun "
	SETLIST_INFMAX=" Entrez un nombre de caractères maximum "
	SETLIST_INFCHAR=" Entrez les caratères de votre choix"
	SETLIST_IN=" Caractères"
	SETLIST_NAMELIST=" Donnez un nom à votre wordlist"
	SETLIST_WAIT=" Création de la liste, veuillez patienter un instant..."
	SETLIST_FINISH="$G Votre Wordlist est terminé$W "
	SETLIST_FOLDERLIST=" [$R!$W]$G Dossier d'enregistrement$Y (/$DUMP/$Nom.txt)$W [$R!$W]"

#~~~~ COMPRESS ~~~~
	COMPRESS_MSG=" Voulez-vous compresser la liste?"
	COMPRESS_INFO="(Retour au menu principal)"
	COMPRESS_WAITC=" Compression... patientez un instant. "
	COMPRESS_OK=" [$G""OK""$W]$Y Compression terminée! "
	COMPRESS_SUPP="$W [$G""OK""$W]$Y Suppression de $Nom.txt."
}

function span {

#~~~~ MENU ~~~~
	OPT="$W O$GR""pc$W""I$GR""o$W""n "
	NAME_WL=" Nombre"
    	error="ERROR"
    	Choice=" Seleccion"
	YES="si"
	NO="no"
	MAKE="$W""C$GR""re$W""A$GR""r $W""U$GR""n$W""A LI$GR""st$W""A   "
	ENTER="ENTRAR"
    	Exit="$R""Cerrar "
	Return="Volver"

#~~~~ EXIT ~~~~
	CLOSE="$W C I E R R E..."
	OFF="Gracias por usar Crunch-Cracker"

#~~~~ INFO ~~~~
	INFBAR="╔═══════════════════════════════════╗"
	INFBAR2="╚═══════════════════════════════════╝"
	INFNAME="$G Nombre:$W...Crunch-Cracker        "
	INFVER="$G Version:$W..1.1 	            "
	INFLNG="$G Lengua:$W...[ENG, FR, ESP]        "
	INFDATE="$G Fecha:$W....23/04/2017            "
	INFAUTH="$G Autor:$W....KURO                  "
	INFTYPE="$G Tipo:$W.....Generador de Wordlist "
	INFDEV="$G Dev:$W......Shell 	            "
	INFUPDATE="$Y Funcion Cracker en el desarrollo "

#~~~~ SET LIST ~~~~
	SETLIST_INFMIN=" Entroduzca un mumero minimo de caracteres "
	SETLIST_INFMAX=" Entroduzca un mumero maximo de caracteres "
	SETLIST_INFCHAR=" Entroducir los caracteres de su eleccion"
	SETLIST_IN=" Caracteres"
	SETLIST_NAMELIST=" Dar un nombre a tu wordlist"
	SETLIST_WAIT=" Crear lista, espere un momento..."
	SETLIST_FINISH="$G Su lista esta terminado$W "
	SETLIST_FOLDERLIST=" [$R!$W]$G Carpeta$Y (/$DUMP/$Nom.txt)$W [$R!$W]"

#~~~~ COMPRESS ~~~~
	COMPRESS_MSG=" Que desea comprimir la lista?"
	COMPRESS_INFO="(Volver at menu principal)"
	COMPRESS_WAITC=" Compresion, espere un momento... "
	COMPRESS_OK=" [$G""OK""$W]$Y Compresion termino! "
	COMPRESS_SUPP="$W [$G""OK""$W]$Y Supresion $Nom.txt."
}


#**** SET LANGUAGE END ****

##### CONFIG FIN ###################################################################


#### INTRO ########################################################################

RUN() {

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
	echo -e "	     88eee8 88   8 88  8 88e8 88   8 88ee 88   8$GR"" v 1.1"
	sleep 0.5
	echo
	echo -e "$W	    	      Wordlist Generator$G By$Y KU$R""RO "
	sleep 3
	setting

}

#### INTRO FIN #####################################################################################


#~~~~ Menu 1 ~~~~

main() {

	clear

	echo

	top

	echo -e "
  $GR╔════════════════════╗
  ║$W     $OPT $GR      ║
  ╚═╦══════════════════╝
    ║   ╔═══╦═════════════════╗
    ║   ║$G 1 $GR║$W I$GR""n$W""FO$GR            ║
    ╚═══╣$G 2 $GR║$W CR$GR""un$W""CH-C$GR""ra$W""CK$GR""e$W""R $GR ║
	║$R 0 $GR║$W $Exit   $GR      ║
	╚═══╩═════════════════╝$W"
	echo
	read -p " $Choice: " choix
		case $choix in
			1) information;;
			2) Crunchmenu;;
			0) EXITMENU;;
			*) echo -e "$W [$R $error$W ]" && sleep 3
		esac
	
main
}

#~~~~ INFO ~~~~

information() {

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
	echo -e "
  ╔════════════════════════════════════╗
  ║ $INFUPDATE$GR ║
  ╚════════════════════════════════════╝$W"
	echo
	sleep 0.5 
	echo -e "$W $Return$R [$ENTER]"
	read pause		 
main
}

#### INFO FIN ######################################################################

#### MENU CRUNCH ###################################################################

Crunchmenu() {

	clear

	echo

	top

	echo -e "
  $GR╔════════════════════╗
  ║$W     $OPT $GR      ║
  ╚═╦══════════════════╝
    ║   ╔═══╦════════════════════╗
    ║   ║$G 1 $GR║ $MAKE$GR ║
    ╚═══╣$G 2 $GR║ $Return $GR        	 ║
	║$R 0 $GR║ $Exit   $GR         ║
	╚═══╩════════════════════╝$W"
	echo
	read -p " $Choice: " choix
		case $choix in
			1) LST;;
			2) main;;
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
	echo -e "$SETLIST_INFMIN "
	echo
	read -p " Min: " nummin
	clear
	echo
	top
	echo
	echo -e "$SETLIST_INFMAX "
	echo
	read -p " Max: " nummax
	clear 
	echo
	top
	echo
	echo -e "$SETLIST_INFCHAR"
	echo
	read -p " $SETLIST_IN: " char
	clear
	echo
	top
	echo
	echo -e "$SETLIST_NAMELIST"
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
		echo -e " $SETLIST_FOLDERLIST"
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
		echo -e "$COMPRESS_MSG"
		echo
		echo -e "
		$G 1)$W $YES
		$G 2)$W $NO $COMPRESS_INFO
		$G 0)$W $Exit$W"
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
			   echo -e " [$COMPRESS_OK"
			   sleep 1
			   echo -e "$COMPRESS_SUPP"
			   sleep 3 ;;

			2) main;;
			0) EXITMENU;;
			*) echo -e "$W [$R $error$W ]" && sleep 3 compress;;
		esac

main

}

#####################################################################################

##### Fonction Top ##################################################################

top() {

	clear
	echo
	sleep 0.1 
	echo -e " $W╔═════════════════════════════════════════════╗" 
	echo -e " ║$R  	C$W R U N C H $R C$W R A C K E R$GR  v$G 1.1$W      ║" 
	echo -e " $W╚═════════════════════════════════════════════╝"
	sleep 0.5
	

}


##### EXIT #######################################################################################

function EXITMENU {

	clear
	echo
	top
	echo
	echo -e "$W $CLOSE"
	sleep 0.5
	echo
	echo -e " [$R*$W] $G $OFF $W [$R*$W]"
	sleep 3
	clear
	exit
}

######################################## END ######################################

####################################### START #####################################

RUN



