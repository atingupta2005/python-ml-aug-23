# Setup Ubuntu 22.0.4 LTS

## Update OS
```
sudo apt update && sudo apt upgrade -y
sudo reboot
```

## Install utilities
```
sudo apt -y install tree git openssl software-properties-common curl wget
```

## Setup multiple users in Ubuntu
- For each participant, we need to setup login accounts
```
sudo groupadd docker
for ((i=1;i<=9;i++)); do
	export username="u0$i"
	sudo useradd -m -p "p2" $username;sudo usermod -aG sudo $username;sudo usermod -aG docker $username;echo $username:p | sudo /usr/sbin/chpasswd;sudo chown -R  $username:root /home/$username
done
for ((i=10;i<=50;i++)); do
	export username="u$i"
	sudo useradd -m -p "p2" $username;sudo usermod -aG sudo $username;sudo usermod -aG docker $username;echo $username:p | sudo /usr/sbin/chpasswd;sudo chown -R  $username:root /home/$username
done
```

- Customize linux prompt
```
cat ~/.bashrc
echo 'export PS1="\e[0;31m\e[50m\u@\h\n\w \e[m\n$ "'   >> ~/.bashrc
cat ~/.bashrc
exit
```

## Install JDK
```
java -version
sudo apt install default-jre -y
java -version
sudo apt install default-jdk -y
java -version
```

## Install Python VENV
```
sudo su -
python3 --version
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt install python3-pip -y
sudo apt install python3-venv -y
python3 -m venv ~/python_env
source ~/python_env/bin/activate
```

## Install Jupyter Notebook
```
source ~/python_env/bin/activate
pip install jupyter
```

### Start Jupyter Notebook
```
source ~/python_env/bin/activate
mkdir -p ~/work_dir
cd ~/work_dir
nohup jupyter notebook --ip=0.0.0.0 --port=80 --allow-root &> ~/nohup_1.out &
tail -f ~/nohup_1.out
```

## Hit URL
- http://172.190.40.220/tree

## Password:
```
Rps@485269#Tr
```
