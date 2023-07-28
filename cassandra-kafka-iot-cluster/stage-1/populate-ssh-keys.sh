for ipend in 167 124 32 195 82 29
do
  sshpass -f orange-pi-password.txt sudo ssh-copy-id -o StrictHostKeyChecking=no orangepi@192.168.132.${ipend}

done
for index in 1 2 3
do
	for type in a w
	do
		sshpass -f raspi-password.txt ssh-copy-id -o StrictHostKeyChecking=no pi@nodebotanist-cluster-${type}${index}.local
	done
done
