b0VIM 8.0      {�]�� �.  root                                    matrix-nfs-2                            /home/rladmin/MatrixSetup/MatrixInstaller.sh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 utf-8U3210    #"! U                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 tp           `                     ��������L       a              ��������D       �                     9       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ad  -   �     `       �  �  �  �  �  �  �  �  �  ~  q  o  \      �  �  �  �  �  �  �  4  1  �  �  �  �  �  �  �  �  �  ~  K     �  �  �  i  c       �  �  �  �  �  $    �
  �
  �
  �
  }
  T
  K
  
  �	  �	  "	  �  	  �  �  �  �  ~  n  7  �  �  �  j  _  )  "    �  �  �  �  �  �  �    �  �  �    L  F  E    �  �  �                                                       echo  "You have selected to install to..."         lb     elif (( REPLY > 0 && REPLY <= ${#newInstall[@]} )) ; then  	exit     if (( REPLY == 1 + ${#newInstall[@]} )) ; then select matrixPath in "${newInstall[@]}" "Abort Install" ; do PS3="$newInstallPath " lb newInstallPath="Select a path to install your new Matrix Node:" newInstall=( $(df -h | grep /dev/ | grep -v "100%" | grep -v "tmpfs" | awk '$4 >= 150 {print}' | awk '$4 !~/M/ {print}' | awk 'length($4) >= 4 {print}' | awk '{print $6}') ) { function newStandalone() 	 } done     fi 	echo "Invalid option. Please try again."     else 	break         echo "Type gmanMatrix to start your new node"         lb         curl https://raw.githubusercontent.com/disarmm/MatrixSetup/master/completedBanner         clear         source ~/.bashrc         echo -e "alias gmanMatrix=/$gmanPath/gmanRunScript.sh" >> ~/.bashrc         echo -e "if [ ! -f "$gmanPath/firstRun" ]; then\n      touch $gmanPath/firstRun && $gmanPath/gman --datadir $gmanPath/chaindata --networkid 1 --debug --verbosity 1 --port 50505 --manAddress $manWallet --entrust $gmanPath/entrust.json --gcmode archive --outputinfo 1 --syncmode full --loadsnapfile "TrieData1405031"\nelse\n    $gmanPath/gman --datadir $gmanPath/chaindata --networkid 1 --debug --verbosity 1 --port 50505 --manAddress $manWallet --entrust $gmanPath/entrust.json --gcmode archive --outputinfo 1 --syncmode full\nfi" > $gmanPath/gmanRunScript.sh 	read manWallet 	echo "Please enter your wallet B address to create startup script" 	lb 	banner 	clear 	mv $gmanPath/keystore $gmanPath/chaindata/keystore         wget https://raw.githubusercontent.com/MatrixAINetwork/GMAN_CLIENT/master/MAINNET/1022/MANGenesis.json -O $gmanPath/MANGenesis.json         wget https://github.com/MatrixAINetwork/GMAN_CLIENT/raw/master/MAINNET/1022/linux/gman -O $gmanPath/gman && chmod a+x $gmanPath/gman 	wget www2.matrixainetwork.eu/snapshots/1405031.tar.gz -O $gmanPath/1405031.tar.gz && tar -zxvf $gmanPath/1405031.tar.gz -C $gmanPath/ 	rm -rf $gmanPath/chaindata $gmanPath/snapdir 	mv $gmanPath/chaindata/keystore $gmanPath/keystore 	rm $gmanPath/gman $gmanPath/MANGenesis.json $gmanPath/firstRun 	sleep 2 	echo "Downloading and install files..." 	kill -9 $(pgrep gman) 	lb 	pause '	   Press [Enter] again to confirm or Ctrl+C to abort' 	sleep 1 	echo "This will also stop your node if it is still running" 	dline 	echo "WARNING: This will erase your existing chaindata and replace it with the 1405031 snapshot" 	lb 	pause 'If this is correct, press [Enter] to confirm, or Ctrl+C to abort installation' 	lb 	echo $gmanPath 	echo "You have selected to update..." 	lb     elif (( REPLY > 0 && REPLY <= ${#existingInstall[@]} )) ; then 	exit     if (( REPLY == 1 + ${#existingInstall[@]} )) ; then select gmanPath in "${existingInstall[@]}" "Abort Install" ; do PS3="$existingInstallPath " lb existingInstallPath="Please confirm your current masternode install path:" existingInstall=( $(find / -name gman ! -type d) ) { function updateStandalone() # Define install functions  lb banner clear pause 'Press [Enter] key to continue...' lb echo "PLEASE READ EVERY PROMPT CAREFULLY TO AVOID DATA LOSS" lb echo "This installer will help you install your Matrix Node to any hard drive partition that has at least 150 GB of free space." | fold -s lb banner clear  } 	echo "-----------------------------------" function dline(){ } 	curl https://raw.githubusercontent.com/disarmm/MatrixSetup/master/banner function banner(){ } 	printf "\n" function lb(){ } 	read -p "$*" function pause(){ # functions for later use  set -e #set script to exit on any errors  #!/bin/bash ad  �  �     9       �  �  �  \  �  L  0  �  Q    �
  �
  �
  w
  A
  3
  *
   
  �	  �	  �	  �	  �	  �	  �	  �	  a	  =	  	  �  �  �  �  �  j  h  ]  8  �  �  �  Y  <  '  %  $  �  w  c  :  (  �  �  �  �  �  �  �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            done     esac         Docker ) dockerUpdatePrompt; exit;;         Standalone ) standaloneUpdatePrompt; exit;;     case $type in select type in "Standalone" "Docker"; do PS3="$installType " upgradePrompt="Are you updating your existing node or deploying a new node?" installType="Is this a single node(Standalone) or will you be using docker for multiple nodes?"  }                 done                         esac                                 Updating ) updateDocker; exit;;                                 New ) newDocker; exit;;                         case $ug in                 select ug in "New install" "Updating existing"; do                 PS3="$upgradePrompt"         lb { function DockerUpdatePrompt()  }                 done                         esac                                 Updating ) updateStandalone; exit;;                                 New ) newStandalone; exit;;                         case $ug in                 select ug in "New install" "Updating existing"; do                 PS3="$upgradePrompt" 	lb { function standaloneUpdatePrompt()  } done     fi         echo "Invalid option. Try again."     else         break         echo "Type gmanMatrix to start your new node"         lb         curl https://raw.githubusercontent.com/disarmm/MatrixSetup/master/completedBanner         clear         source ~/.bashrc         echo -e "alias gmanMatrix=/$matrixPath/gmanRunScript.sh" >> ~/.bashrc         echo -e "if [ ! -f "$matrixPath/matrix/firstRun" ]; then\n      touch $matrixPath/matrix/firstRun && $matrixPath/matrix/gman --datadir $matrixPath/matrix/chaindata --networkid 1 --debug --verbosity 1 --port 50505 --manAddress $manWallet --entrust /$matrixPath/matrix/entrust.json --gcmode archive --outputinfo 1 --syncmode full --loadsnapfile "TrieData1405031"\nelse\n    $matrixPath/matrix/gman --datadir $matrixPath/matrix/chaindata --networkid 1 --debug --verbosity 1 --port 50505 --manAddress $manWallet --entrust $matrixPath/matrix/entrust.json --gcmode archive --outputinfo 1 --syncmode full\nfi" > $matrixPath/matrix/gmanRunScript.sh         echo -e "$matrixKeystore" > $matrixPath/matrix/chaindata/keystore/wallet.file         read matrixKeystore         echo "Open your downloaded UTC wallet file with wordpad or notepad++ and copy/paste the contents below"         $matrixPath/matrix/gman --datadir $matrixPath/matrix/chaindata aes --aesin $matrixPath/matrix/signAccount.json --aesout $matrixPath/matrix/entrust.json         pause '         Press [Return] to continue]'         lb         sleep 1         echo "Note: Please choose a different password than your Wallet B password" 