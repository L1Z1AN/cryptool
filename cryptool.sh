#!/bin/bash
#
#install ccrypt
#
#-------LiziaN-------#
#
function cryp {
echo -e "\033[1;33m       CrypTool \033[0m"
echo -e "\033[1;32m--------------------------\033[0m"
echo -e "\033[0;36m encrypt carpeta    (C)   \033[0m"
echo -e "\033[0;36m encrypt file       (F)   \033[0m"
echo -e "\033[1;32m--------------------------\033[0m"
echo -e "\033[0;36m desencrypt carpeta (DC)  \033[0m"
echo -e "\033[0;36m desencrypt file    (DF)  \033[0m"
echo -e "\033[1;32m--------------------------\033[0m"
 read -p '? -> ' opcion
}
cryp
if [ $opcion = C ];
 then
  clear
echo -e "\033[0;35m [+] Done... \033[0m\n"
read -p 'ruta -> ' rut
 sleep 1
echo -e "\033[0;35mEstablece un Password\033[0m"
  sleep 1
 ccrypt -e -r $rut
echo -e "\033[0;35mencryptando carpeta\033[0m"
 sleep 2
echo -e "\033[0;35m [+] Done... \033[0m\n"
 elif [ $opcion = F ];
   then
     clear
echo -e "\033[0;35mIntroduce la Ruta del archivo\033[0m"
read -p 'ruta -> ' ruut
  sleep 1
echo -e "\033[0;35mEstablece un Password\033[0m"
 sleep 1
  ccrypt -e $ruut
echo -e "\033[0;35mencryptando archivo\033[0m"
 sleep 2
echo -e "\033[0;35m [+] Done... \033[0m\n"
  elif [ $opcion = DC ];
    then
     clear
echo -e "\033[0;35mIntroduce la Ruta de la carpeta\033[0m"
read -p 'ruta -> ' ruuut
  sleep 1
echo -e "\033[0;35mIntroduce el Pasword\033[0m"
 sleep 1
  ccrypt -d -r $ruuut
echo -e "\033[0;35mdesencryptando Carpeta\033[0m"
 sleep 2
echo -e "\033[0;35m [+] Done... \033[0m\n"
  elif [ $opcion = DF ];
   then
     clear
echo -e "Introduce la Ruta de la Carpeta"
read -p 'ruta -> ' ruuuut
  sleep 1
echo -e "\033[0;35mIntroduce el Pasword\033[0m"
 sleep 1
  ccrypt -d  $ruuuut
echo -e "\033[0;35mDesencryptando Archivo\033[0m"
 sleep 2
echo -e "\033[0;35m [+] Done... \033[0m\n"
 else
 printf "\n"
 echo -e "\033[1;35mCommand no Found\033[0m"
 printf "\n"
fi