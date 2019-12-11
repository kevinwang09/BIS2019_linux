#!/bin/bash

## docker run -e PASSWORD=pushu -e ROOT=TRUE -p 8787:8787 532cb5cec05a
apt-get update
apt-get -y install ssh nano samtools wget

mkdir /home/data/
wget https://storage.googleapis.com/scp_data/linux_workshop_data.tar -P /home/data/


## Set-up users
sudo groupadd trainees

for((userIndex = 1; userIndex <= 50; userIndex++))
  do
{
  userID=user${userIndex}
  sudo useradd -g trainees -d /home/$userID -m -s /bin/bash $userID
  echo $userID:2019 | sudo chpasswd
}
done