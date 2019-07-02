#!/bin/bash
echo ""
echo ""
echo "   $(tput setaf 6) ____  _____     ____      _________    _____    "
echo "   $(tput setaf 6)|_   \|_   _|  .'    '.    _   ___  |  |_   _|   "
echo "   $(tput setaf 6)  |   \ | |   /  .--.  \    | |_  \_|    | |     "
echo "   $(tput setaf 6)  | |\ \| |   | |    | |    |  _|  _     | |   _ "
echo "   $(tput setaf 6) _| |_\   |_  \  '--'  /   _| |___/ |   _| |__/ |"
echo "   $(tput setaf 6)|_____|\____|  '.____.'   |_________|  |________|"
echo "			Open-source, multipurpose Discord bot coded in C#."
echo ""
echo ""
echo "$(tput setaf 7)Welcome to $(tput setaf 6)Noel $(tput setaf 7)linux launcher."
echo ""
choice=4
	echo "[1] Download"
	echo "[2] Launch"
	echo "[3] Exit"
	echo -n "Choose $(tput setaf 3)[1] $(tput setaf 7)to Download $(tput setaf 6)Noel, $(tput setaf 7)choose $(tput setaf 3)[2] $(tput setaf 7)to Launch $(tput setaf 6)Noel $(tput setaf 7)or $(tput setaf 3)[3] $(tput setaf 7)to $(tput setaf 1)Exit$(tput setaf 7)"
	echo ""
while [ "$choice" = "4" ]; do
read choice
if [ $choice -eq 1 ]; then \

	echo "$(tput setaf 3)[1] Download"
	echo ""
	echo "$(tput setaf 7)Starting download.."
	sleep 5s
	git clone git://github.com/Kwothsei/Noel.NET
	echo ""
	echo "Done!"
else
	if [ $choice -eq 2 ]; then \
		echo "$(tput setaf 3)[2] Launch"
		echo ""
		echo "$(tput setaf 7)Building.."
		cd Noel.NET || exit
		cd Noel.NET.Core || exit
		sleep 5s
		dotnet build
		echo "Done"
		echo "Starting.."
		sleep 5s
		dotnet run
	else
		if [ $choice -eq 3 ]; then \
			echo "$(tput setaf 3)[3] Exit"
			echo "$(tput setaf 1)Exiting..$(tput setaf 7)"
			break
		else
			clear
			echo "[1] Download"
			echo "[2] Launch"
			echo "[3] Exit"
			echo -n "Choose [1] to Download Noel, choose [2] to Launch Noel or [3] to Exit."
			choice=4
		fi
	fi
fi
done
exit 0
