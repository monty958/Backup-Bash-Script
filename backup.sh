#!/bin/bash
echo "What would you like to backup?"
read -p "File or Folder: " asource
dest="/home"
currentDir="$(pwd)"
date=$(date +'%d-%m-%y')

if [[ $asource == "File" || $asource == "file" ]]
then
	echo "You chose $asource"
	read -p "Please type your $asource name with its extension: " fileName
	read -p "Is $fileName in the $currentDir: " yesORno
	if [[ $yesORno == "Yes" || $yesORno == "yes" ]]
	then
		if [[ -f "$fileName" ]]
		then
			echo "$fileName exists in $currentDir."
			read -p "How would you like the file to be backup? (compressed or no): " compression
			if [[ $compression == "compressed" || $compression == "Compressed" ]]
			then
				echo "You chose $compression"
				echo "Copying in Progress..."
				tar -cvzpf $dest/$fileName-$date.tar.gz $currentDir/$fileName
				echo "Backup Success"
				echo "Your file is $fileName-$date.tar.gz inside $dest"
			elif [[ $compression == "no" || $compression == "No" ]]
			then
				echo "You chose $compression compression"
				echo "Copying in Progress..."
				cp -r $currentDir/$fileName $dest/$fileName
				echo "Backup Success"
				echo "Your file is $fileName inside $dest"
			fi
		else
			echo "$fileName does not exist."
			while [[ ! -f "$fileName" ]]
			do
				read -p "$fileName does not exist, try again: " fileName
			done
			echo "$fileName found in $currentDir"
			read -p "How would you like the file to be backup? (compressed or no): " compression
                        if [[ $compression == "compressed" || $compression == "Compressed" ]]
                        then
                                echo "You chose $compression"
				echo "Copying in Progress..."
                                tar -cvzpf $dest/$fileName-$date.tar.gz $currentDir/$fileName
                                echo "Backup Success"
                                echo "Your file is $fileName-$date.tar.gz inside $dest"

                        elif [[ $compression == "no" || $compression == "No" ]]
                        then
                                echo "You chose $compression compression"
			       	echo "Copying in Progress..."
                                cp -r $currentDir/$fileName $dest/$fileName
                                echo "Backup Success"
                                echo "Your file is $fileName inside $dest"

                        fi
		fi
	elif [[ $yesORno == "no" || $yesORno == "No" ]]
	then
		echo "Go to the directory first then run the program again"
	fi
fi


if [[ $asource == "Folder" || $asource == "folder" ]]
then
	echo "You chose $asource"
        read -p "Please type your $asource name: " folderName
        read -p "Is $folderName in the $currentDir: " yesORno
        if [[ $yesORno == "Yes" || $yesORno == "yes" ]]
       	then
               	if [[ -d "$currentDir/$folderName" ]]
               	then
                       	echo "$folderName exists in $currentDir."
                       	read -p "How would you like the file to be backup? (compressed or no): " compression
                       	if [[ $compression == "compressed" || $compression == "Compressed" ]]
                       	then
                               	echo "You chose $compression"
				echo "Copying in Progress..."
                                tar -cvzpf $dest/$folderName-$date.tar.gz $currentDir/$folderName
                               	echo "Backup Success"
                               	echo "Your file is $folderName-$date.tar.gz inside $dest"
                       	elif [[ $compression == "no" || $compression == "No" ]]
                       	then
                               	echo "You chose $compression compression"
                               	echo "Copying in Progress..."
                               	cp -r $currentDir/$folderName $dest/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName inside $dest"
                        fi
                else
                        echo "$folderName does not exist."
                        while [[ ! -d "$currentDir/$folderName" ]]
                        do
                                read -p "$folderName does not exist, try again: " folderName
                        done
                        echo "$folderName found in $currentDir"
                        read -p "How would you like the file to be backup? (compressed or no): " compression
                        if [[ $compression == "compressed" || $compression == "Compressed" ]]
                        then
                                echo "You chose $compression"
                                echo "Copying in Progress..."
                                tar -cvzpf $dest/$folderName-$date.tar.gz $currentDir/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName-$date.tar.gz inside $dest"

                        elif [[ $compression == "no" || $compression == "No" ]]
                        then
                                echo "You chose $compression compression"
                                echo "Copying in Progress..."
                                cp -r $currentDir/$folderName $dest/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName-$date inside $dest"

                        fi
                fi
	elif [[$yesORno == "No" || $yesORno == "no"]]
	then
                echo "Go to the directory first then run the program again"
	fi

fi

read -p "Would you like to backup anything else? (yes or no) :" backupQ

while [[ $backupQ == "yes" ]]
do
	echo "What would you like to backup?"
	read -p "File or Folder: " asource
	dest="/home"
	currentDir="$(pwd)"
	date=$(date +'%d-%m-%y')
	if [[ $asource == "File" || $asource == "file" ]]
	then
        	echo "You chose $asource"
        	read -p "Please type your $asource name with its extension: " fileName
      		read -p "Is $fileName in the $currentDir: " yesORno
        	if [[ $yesORno == "Yes" || $yesORno == "yes" ]]
        	then
                	if [[ -f "$fileName" ]]
                	then
                	        echo "$fileName exists in $currentDir."
                	        read -p "How would you like the file to be backup? (compressed or no): " compression
                	        if [[ $compression == "compressed" || $compression == "Compressed" ]]
                	        then
                	                echo "You chose $compression"
                	                echo "Copying in Progress..."
                	                tar -cvzpf $dest/$fileName-$date.tar.gz $currentDir/$fileName
                	                echo "Backup Success"
                	                echo "Your file is $fileName-$date.tar.gz inside $dest"
                	        elif [[ $compression == "no" || $compression == "No" ]]
                	        then
                	                echo "You chose $compression compression"
                	                echo "Copying in Progress..."
                	                cp -r $currentDir/$fileName $dest/$fileName
                	                echo "Backup Success"
                	                echo "Your file is $fileName inside $dest"
                	        fi
                	else
                	        echo "$fileName does not exist."
                	        while [[ ! -f "$fileName" ]]
                	        do
                	                read -p "$fileName does not exist, try again: " fileName
                	        done
                	        echo "$fileName found in $currentDir"
                	        read -p "How would you like the file to be backup? (compressed or no): " compression
                	        if [[ $compression == "compressed" || $compression == "Compressed" ]]
                	        then
                	                echo "You chose $compression"
                	                echo "Copying in Progress..."
                	                tar -cvzpf $dest/$fileName-$date.tar.gz $currentDir/$fileName
                	                echo "Backup Success"
                	                echo "Your file is $fileName-$date.tar.gz inside $dest"
	
		                elif [[ $compression == "no" || $compression == "No" ]]
                        	then
                                	echo "You chose $compression compression"
                                	echo "Copying in Progress..."
                                	cp -r $currentDir/$fileName $dest/$fileName
                                	echo "Backup Success"
                                	echo "Your file is $fileName inside $dest"
                        	fi
            	    	fi
		elif [[ $yesORno == "no" || $yesORno == "No" ]]
        	then
                	echo "Go to the directory first then run the program again"
        	fi
	fi
	if [[ $asource == "Folder" || $asource == "folder" ]]
then
        echo "You chose $asource"
        read -p "Please type your $asource name: " folderName
        read -p "Is $folderName in the $currentDir: " yesORno
        if [[ $yesORno == "Yes" || $yesORno == "yes" ]]
        then
                if [[ -d "$currentDir/$folderName" ]]
                then
                        echo "$folderName exists in $currentDir."
                        read -p "How would you like the file to be backup? (compressed or no): " compression
                        if [[ $compression == "compressed" || $compression == "Compressed" ]]
                        then
                                echo "You chose $compression"
                                echo "Copying in Progress..."
                                tar -cvzpf $dest/$folderName-$date.tar.gz $currentDir/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName-$date.tar.gz inside $dest"
                        elif [[ $compression == "no" || $compression == "No" ]]
                        then
                                echo "You chose $compression compression"
                                echo "Copying in Progress..."
                                cp -r $currentDir/$folderName $dest/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName inside $dest"
                        fi
                else
                        echo "$folderName does not exist."
                        while [[ ! -d "$currentDir/$folderName" ]]
                        do
                                read -p "$folderName does not exist, try again: " folderName
                        done
                        echo "$folderName found in $currentDir"
                        read -p "How would you like the file to be backup? (compressed or no): " compression
                        if [[ $compression == "compressed" || $compression == "Compressed" ]]
                        then
                                echo "You chose $compression"
                                echo "Copying in Progress..."
                                tar -cvzpf $dest/$folderName-$date.tar.gz $currentDir/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName-$date.tar.gz inside $dest"

                        elif [[ $compression == "no" || $compression == "No" ]]
                        then
                                echo "You chose $compression compression"
                                echo "Copying in Progress..."
                                cp -r $currentDir/$folderName $dest/$folderName
                                echo "Backup Success"
                                echo "Your file is $folderName inside $dest"

                        fi
                fi
		elif [[$yesORno == "No" || $yesORno == "no"]]
        	then
                	echo "Go to the directory first then run the program again"
        	fi

	fi
	echo "Would you like to backup anything else? (yes or no)"
	read backupQ
done
