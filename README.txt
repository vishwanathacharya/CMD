du -sh fileorfoldername.zip


sudo find / -type f -name "techyon-server.conf" 2>/dev/null


grep "$(date +"%b %e %H:%M" --date="today 15:00:00")" /var/log/syslog | awk '$3 >= "15:00:00" && $3 <= "15:59:00"'
grep "$(date +"%b %e %H:%M" --date="today 14:50:00")" /var/log/syslog | awk '$3 >= "14:50:00" && $3 <= "14:59:00"'
grep "$(date +"%b %e %H:%M" --date="today 14:30:00")" /var/log/syslog | awk '$3 >= "14:30:00" && $3 <= "14:59:00"'
grep "$(date +"%b %e %H:%M" --date="today 14:*")" /var/log/syslog | awk '$3 >= "14:48:00" && $3 <= "14:55:00"'
grep "$(date +"%b %e %T" --date="today 14:30:00")" /var/log/apache2/error.log | awk '$3 >= "14:30:00" && $3 <= "14:55:00"'


bin/magento module:disable Magento_TwoFactorAuth
bin/magento module:status
bin/magento module:disable Magento_AdminAdobeImsTwoFactorAuth


grep "$(date +"%b %e %H:%M" --date="today 13:28")" /var/log/syslog | awk '$3 >= "013:00:00" && $3 <= "14:00:00"'

grep "/home/magento234/www/thuraa/" /var/log/apache2/access.log | grep "error"
awk '/error/' /path/to/syslog/file

#Retrieve information about the IAM user who has configured the AWS CLI on a particular machine.
aws sts get-caller-identity




#INSTALL CODE DEPLOY AGENT
apt --fix-broken install
apt-get install -y ruby
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start
systemctl enable codedeploy-agent
systemctl status codedeploy-agent
dpkg --list | grep codedeploy
//*chkconfig codedeploy-agent on

# My Linux Commands Repository

This repository is dedicated to storing useful Linux commands that I frequently use. It serves as a reference for myself and potentially others who are interested in Linux command-line operations.

**Command**
#################################################################################################################
sudo su

//`sudo su` ek Linux/Unix command hai jo superuser (root) ke taur par kisi user ko switch karne ke liye istemal hoti hai.
`sudo`: Ye command root ke level tak access dene ke liye hota hai. "sudo" ka matlab hai "superuser do". Jab aap kisi command ke pehle "sudo" likhte hain, toh wo command superuser (root) ke permissions ke sath execute hoti hai.
`su`: "su" ka matlab hai "switch user". Iska istemal kisi aur user ke roop mein switch karne ke liye hota hai.
Jab aap `sudo su` likhkar enter karte hain, toh aap apne current user ko root user ke taur par switch kar lete hain. Iske baad, aapko root ke permissions mil jate hain aur aap system par koi bhi command run kar sakte hain, jo normal user ke liye allowed nahi hoti. 
Dhyan rahe ki root user ke permissions ke sath kaam karna risk yukt ho sakta hai, isliye iska istemal hoshiyari se karna chahiye. Aapko root access sirf jab zarurat ho tab hi istemal karna chahiye.//
##################################################################################################################



sudo -i


//`sudo -i` bhi ek Linux/Unix command hai, jo `sudo` ke saath istemal hoti hai. Ye command sudo ke madhyam se root user (superuser) banane ke liye istemal hoti hai. Yahan ek vyakhya di gayi hai:
- `sudo`: Iska matlab hai "superuser do". Ye command normal users ko temporary taur par superuser (root) ke permissions ke saath kisi command ko run karne ki anumati deta hai.
- `-i`: Ye option sudo ke saath istemal hoti hai aur ise "login shell" ke taur par execute karne ke liye kahte hain. Jab aap `-i` option ke saath `sudo` ka istemal karte hain, toh aap root user ke login shell mein switch ho jaate hain. Iska matlab hai ki aap root user ke taur par kaam karne ke liye ek naya shell start kar rahe hain.
Jab aap `sudo -i` likhkar enter karte hain, toh aap temporary taur par root user ban jaate hain aur root user ke taur par ek naya shell start hota hai. Is shell mein aap root ke permissions ke saath commands run kar sakte hain.
Dhyan rahe ki `sudo -i` ka istemal hoshiyari se karna chahiye, kyun ki root user ke permissions ke saath kaam karna system ke security ko kamzor kar sakta hai. Root access sirf jab zarurat ho tab hi istemal karna chahiye.//
#################################################################################################################


usermod -aG $groupname $username


//`usermod -aG $groupname $username` ek Linux/Unix command hai, jise user ko ek ya multiple groups mein add karne ke liye istemal kiya jata hai. Yahan ek vyakhya di gayi hai:
- `usermod`: Ye command user ke attributes ko modify karne ke liye hota hai. Isse user ko existing groups mein add kiya ja sakta hai.
- `-aG`: Ye options `usermod` ke saath istemal hote hain. 
  - `-a`: Is option ka istemal user ko ek naye group mein add karne ke liye hota hai.
  - `-G`: Is option se specify kiya jata hai ki kaun se groups mein user ko add karna hai.
- `$groupname`: Is jagah aapko us group ka naam dena hoga jisme aap user ko add karna chahte hain. 
- `$username`: Is jagah aapko us user ka naam dena hoga jise aap specified group mein add karna chahte hain.
Jaise ki agar aapko user "john" ko group "developers" mein add karna hai, toh aap is tarah se command likhenge:
```bash
sudo usermod -aG developers john
```
Yahan `sudo` ka istemal kyun kiya gaya hai, isliye ki group mein kisi ko add karte waqt administrative permissions ki zarurat hoti hai.
Dhyan rahe ki changes ko apply karne ke liye aapko user ko logout aur fir login karna padega ya phir `su - $username` command ka istemal karke ek naye shell start karna padega.//
###################################################################################################################



ps -p 6093 u

//`ps -p 6093 u` ek Linux/Unix command hai jo ek specific process ki information ko display karne ke liye istemal hoti hai. Yahan ek vyakhya di gayi hai:
- `ps`: Ye command running processes ki information ko dekhne ke liye istemal hota hai. "ps" ka matlab hai "process status."
- `-p`: Is option ka istemal process ID (PID) specify karne ke liye hota hai. Yahan `6093` PID hai.
- `6093`: Ye ek example PID hai. Actual PID aapke system par chal rahe processes ke hisab se alag ho sakta hai.
- `u`: Is option se user-oriented format mein information display hoti hai. Isse aapko process ke user se related details milte hain.
Jab aap `ps -p 6093 u` likhkar enter karte hain, toh ye command aapko specific PID `6093` ke process ke baare mein information provide karegi. Isme aapko user, PID, %CPU, %MEM, VSZ (virtual memory size), RSS (resident set size), TTY (controlling terminal), STAT (process status), START (start time), TIME (cumulative CPU time), and COMMAND (command name/arguments) jaise details mil sakti hain.
Example output:
```
USER       PID  %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
username  6093  0.0  0.5 123456 7890 ?        S    Jan01   0:00 /path/to/your/process
```
Yahan "username" aapke process ko run karne wale user ka naam hai aur "6093" us process ka PID hai. "COMMAND" column mein aapko process ka naam aur arguments dikhega.//
####################################################################################################################


pgrep -u vishwanath.acharya



//`pgrep -u vishwanath.acharya` ek Linux/Unix command hai jo ek user ke dwara chalaye gaye processes ke IDs (PIDs) ko display karta hai. Yahan ek vyakhya di gayi hai:
- `pgrep`: Ye command process IDs (PIDs) ko dhoondhne ke liye istemal hota hai. Isse kisi specific criteria ke mutabiq processes ko dhoondha ja sakta hai.
- `-u`: Is option se user ko specify kiya jata hai jiske chalaye gaye processes ki IDs dhoondhi ja rahi hain.
- `vishwanath.acharya`: Yahan aapko user ka naam dena hota hai jiska chalaye gaye processes ki IDs dhoondhni hain.
Jab aap `pgrep -u vishwanath.acharya` likhkar enter karte hain, toh ye command aapko user `vishwanath.acharya` ke dwara chalaye gaye processes ke PIDs ko display karegi.
Example output:
```
1234
5678
9012
```
Yahan "1234," "5678," "9012" aise PIDs hain jo user `vishwanath.acharya` ke dwara chalaye gaye hain.
Dhyan rahe ki yeh sirf PIDs ko dikhaata hai, actual process information ke liye aap `ps` command ka istemal kar sakte hain.//
#################################################################################################################



awk '{print $1}' /var/log/odoo/odoo-server.log | sort -u | wc -l
awk '{print $1}' /var/log/nginx/odoo.access.log | sort -u | wc -l
awk '{print $1}' /path/to/nginx/access.log | sort -u | wc -l
awk '{print $1}' /path/to/access.log | sort -u | wc -l



//Ye command Linux me use hoti hai. Niche diye gaye hai is command ke kuch parts:
- `awk '{print $1}' /var/log/odoo/odoo-server.log`: Yeh command `/var/log/odoo/odoo-server.log` file se har line ki pehli field ko print karega.
- `sort -u`: Yeh command input ko sort karega aur duplicate lines ko remove karega, sirf unique lines ko output dega.
- `wc -l`: Yeh command lines ki count karega.
Is puri command ka matlab hai, `/var/log/odoo/odoo-server.log` file se pehle field ko nikal kar use sort karega aur phir unqiue lines ki count dega.//
##################################################################################################################



grep "your_date" /path/to/access.log | awk '{print $1}' | sort -u | wc -l
grep '2024-01-18' /path/to/access.log | awk '{print $1}' | sort -u | wc -l

//The command "grep 'your_date' /path/to/access.log | awk '{print $1}' | sort -u | wc -l" is a Unix command that is used to perform the following operations:
1. **grep 'your_date' /path/to/access.log**: This part of the command searches for the specified date ('your_date') in the '/path/to/access.log' file and displays the lines containing the date.
2. **awk '{print $1}'**: It extracts the first column from the output of the grep command. In this context, it might be used to extract IP addresses or specific data from the log file.
3. **sort -u**: It sorts the output of the previous command and removes any duplicate lines, displaying only unique lines.
4. **wc -l**: It counts the number of lines in the output.
So, the entire command is essentially counting the number of unique occurrences of the first field (such as IP addresses) in the log file that contain the specified date.
Please note that "your_date" and "/path/to/access.log" are placeholders and should be replaced with actual values.//
################################################################################################################




grep "$(date +'%d/%b/%Y')" /path/to/access.log | awk '{print $1}' | sort -u | wc -l
grep "$(date +'%d/%b/%Y')" /var/log/nginx/odoo.access.log  | awk '{print $1}' | sort -u | wc -l
awk '{print $1}' /path/to/access.log | sort -u | wc -l
awk '{print $1}' /path/to/access.log | sort | uniq -c | sort -nr
awk '{print $1}' /var/log/nginx/odoo.access.log | sort | uniq -c | sort -nr
grep "$(date +'%d/%b/%Y')" /var/log/odoo/odoo-server.log  | awk '{print $1}' | sort -u | wc -l
awk '{print $1}' /var/log/nginx/odoo.access.log | sort | uniq -c | sort -nr
grep "$(date +'%d/%b/%Y')" /var/log/nginx/odoo.access.log  | awk '{print $1}' | sort -u | wc -l




#################################################################################################################
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version


#################################################################################################################



awk '/ServerName|DocumentRoot/ {print}' /etc/apache2/sites-enabled/default-ssl.conf
sed -n -E '/ServerName|DocumentRoot/p' /etc/apache2/sites-enabled/default-ssl.conf
grep -E -A 1 'ServerName|DocumentRoot' /etc/apache2/sites-enabled/default-ssl.conf
grep -E 'ServerName|ServerAlias' /etc/apache2/sites-enabled/default-ssl.conf

apachectl -S


truncate -s 0 odoo-server.log 


du -h / | sort -rh | head -n 20
du -h /path/to/directory | sort -rh | head -n 20
sudo du -h / | sort -rh | head -n 20


chown -R $(whoami) /path


SELECT table_name "Table Name", 
       ROUND(((data_length + index_length) / 1024 / 1024), 2) "Table Size in MB" 
FROM information_schema.tables 
WHERE table_schema = 'neta24db_prod' 
ORDER BY (data_length + index_length) DESC;





SELECT table_schema "neta24db_prod", 
       SUM(data_length + index_length) / 1024 / 1024 "Database Size in MB" 
FROM information_schema.tables 
GROUP BY table_schema;



chage -d 0 dev

https://www.postgresqltutorial.com/postgresql-administration/postgresql-show-tables/
\c dbname
\dt

SELECT pg_size_pretty( pg_database_size('testwebkul') ); 

tail -n 100 /var/log/nginx/access.log | awk '{print $1}' | sort | uniq -c | sort -nr


pg_restore -h database-1.cilpa3qtyggj.af-south-1.rds.amazonaws.com -p 5432 -U odo017 -d odoo17.0 -Fc -v odoo17.dump


pg_dump -h database-1.cilpa3qtyggj.af-south-1.rds.amazonaws.com -p 5432 -U odo017 -d odoo17.0 -Fc -f odoo17.0.dump


SELECT pg_size_pretty(pg_database_size('odoo17')) AS "Size";

find / -type f -name 'newrelic.so'

kill -9 18006

ps -aux | grep odoo
ps -cux | grep odoo

echo $0

free -m
free -h

echo 3 > /proc/sys/vm/drop_caches

redis-cli INFO memory


grep '51.15.209.118' /var/log/apache2/access.log | grep 'HTTP/1.1" 404'


grep '51.15.209.118' /var/log/apache2/access.log

bin/magento varnish:vcl:generate --export-version=6 | tee /etc/varnish/default.vcl > /dev/null


Airtel: 182.75.44.210
Nextra: 103.80.65.178
TCL: 115.113.191.18


SET GLOBAL log_bin_trust_function_creators = 1;
flush privileges;

https://codeshare.io/mohitaws

Redirect permanent / https://akeneo-syndication-destination.webkul.in/

sudo groupmod -g NEW_GID landscape


sudo usermod -u NEW_UID usbmux


certbot --server https://acme-v02.api.letsencrypt.org/directory -d channels.qloapps.com  --manual --preferred-challenges dns-01 certonly


certbot certonly --dns-cloudflare --dns-cloudflare-credentials ~/.certbot/cloudflare/attqny.com/cloudflare.ini --dns-cloudflare-propagation-seconds 60 -d attqny.com -d *.attqny.com

SHOW VARIABLES;

php artisan bagisto:fake

RESPONSE_CACHE_ENABLED=true

php artisan responsecache:clear


cat syslog | grep -i "Oct 30"


aws iam upload-server-certificate --server-certificate-name vishwanathacharya.cloud --certificate-body file://fullchain.pem --private-key file://privkey.pem



top -p PDI


tail -n 500 /var/log

head -n 500 /var/log



scp -i /home/users/vishwanath.acharya/Downloads/sydney.pem ubuntu@54.206.50.138:/home/ubuntu/magentoperfect.tar .
################################################################################################################################
#if To kill the Apache2 process in Linux

ps aux | grep apache2

kill -9 pid
###########################################################################################################################3
#find command


find bagisto -type d -name "laravel"

find /path/to/search -type f -size +1G


#####################################################################################################################################
#SQL Query

CREATE USER odoo16 WITH ENCRYPTED PASSWORD 'password';
grant rds_superuser to odoo16;
ALTER USER odoo16 CREATEDB SUPERUSER CREATEROLE LOGIN;


######################################################################################################################################
#git command

git stash clear




####################################################################################################################################
#create error with in bagisto code with in this file


cd packages/Webkul/Admin/src/Http/Controllers/DashboardController.php 


class

git status

git stash clear

git config --global --add safe.directory /home/bagisto/master

git log

git reset --hard origin/master

php artisan optimize:clear

.env false
php artisan optimize:clear

#######################################################################################################################################
sudo apt install software-properties-common

sudo add-apt-repository ppa:ondrej/php

sudo apt install php7.4 php7.4-cli php7.4-common php7.4-curl php7.4-gd php7.4-intl php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-readline php7.4-xml php7.4-xsl php7.4-zip php7.4-bz2 libapache2-mod-php7.4 php7.4-bcmath php7.4-soap php7.4-fpm -y

update-alternatives --config php


#enable or disable php version

a2dismod php5.6 
a2enmod php7.1


#######################################################################################################################################
#change IP address log format using apache2 conf

nano /etc/apache2/apache2.conf 
RemoteIPHeader X-Forwarded-For
LogFormat "%a %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-agent}i\"" combined
restart apache2

#######################################################################################################################################
#~/.bashrc ye direcotry k kaam user ke shell terminal environment ko changes krne ki takat rkhti hai


nano ~/.bashrc
export EDITOR=nano
source ~/.bashrc

#show bash script works on using command
set -x

bash -x your_script.sh
########################################################################################################################################
#select all content in linux with in nano text editor

crtl+shift+ up&down arrow key

########################################################################################################################################
#chroot jail for specified directory

chroot /path/to/jail-directory
chroot /path/to/jail-directory /bin/bash

apt install vsftpd


#########################################################################################################################################
#kisi bhi user ki shell ko jannne ke liye

getent passwd  test3

#user ka shell change krne k liye

chsh test3

Changing the login shell for test3
Enter the new value, or press ENTER for the default
	Login Shell [/bin/sh]: /bin/bash
root@ip-172-31-12-246:~# getent passwd  test3
test3:x:1003:1003::/home/test3:/bin/bash

main /bin/bash daal dia aur phir recheck kr liya it will succesfully changed
#######################################################################################################################################
#if To kill the Apache2 process in Linux

ps aux | grep apache2

kill -9 pid

#######################################################################################################################################
#To search for specific text within files in Linux
grep "find" cmd

grep  "Aug 25 11:55" /var/log/syslog

grep "43.155.118.219" /var/log/apache2/access.log | wc -l

#here grep cmd is find on cmd file how much find text words is use cmd file
#######################################################################################################################################
#To find out how many packages are installed on your Linux system

dpkg --list | grep '^ii' | wc -l


#installing .deb file using dpkg packges manager

sudo dpkg -i package_file.deb

dpkg -l | grep package_name

sudo dpkg --remove example_package
######################################################################################################################################
#how to add any user with any group and also how to remove with in group

usermod -aG docker odoo16
sudo gpasswd -d odoo16 docker

###################################################################################################################################
#using certbot client for create free ssl certs
apt info certbot

apt install snapd

sudo apt-get remove certbot

sudo dnf remove certbot

sudo yum remove certbot

apt install --classic certbot

sudo ln -s /snap/bin/certbot /usr/bin/certbot

sudo certbot --nginx

certbot certonly --nginx

sudo certbot renew --dry-run

certbot --version

which certbot

certbot certonly --manual --preferred-challenges dns --debug-challenges -d vishwanathacharya.ink --server=https://acme-staging-v02.api.letsencrypt.org/directory

certbot certonly --manual --preferred-challenges dns --debug-challenges -d vishwanathacharya.ink -d *.vishwanathacharya.ink --server=https://acme-staging-v02.api.letsencrypt.org/directory


certbot --server https://acme-v02.api.letsencrypt.org/directory -d vishwanathacharya.ink -d *.vishwanathacharya.ink --manual --preferred-challenges dns-01 certonly

apt info certbot

/etc/crontab/

/etc/cron.*/*

systemctl list-timers
###################################################################################################################################
#if you want to check how much memory space ocuupied any directory

du -h filename

######################################################################################################################################
#FileZila Issue Connection After sshd_configuration

PubkeyAcceptedAlgorithms +ssh-rsa
######################################################################################################################################
#if you count how to many file & directory is in this path
find /etc -type f | wc -l

find /etc -type d | wc -l

find . -type d | wc -l

find . -type f | wc -l

#if you want show how to many file & directory is in this path

find . -type f 

find . -type d

#if you want show how to many file & directory is in this path its show both of

find . | wc -l

#To search for a file by name in Linux

find / -type f -name "000-default.conf"


#To search for a file by name in Linux on present path

find . -type f -name "t"

cd /etc/
root@ip-172-31-42-225:/etc# find . -type f -name "000-default.conf"
./apache2/sites-available/000-default.conf

#for search directory

find / -type d -name "cli"
##############################################################################################################################
#found perticuler ip address with in log

grep "51.79.206.255" /var/log/apache2/access.log

grep  "Aug 25 11:55" /var/log/syslog

grep "13/Oct/2023:10:31:49" /var/log/apache2/access.log

##############################################################################################################################
#scp command

scp -i /home/users/vishwanath.acharya/Downloads/sydney.pem ubuntu@54.206.50.138:/home/ubuntu/magentoperfect.tar .

scp -r file1 file.tar ubuntu@1.1.1.1:/tmp

############################################################################################################################
#add another volume with server
lsblk -f
mkfs -t xfs /dev/xvdb
mkdir /data
mount /dev/xvdb /data
lsblk -f


#extend volume {increase volume via AWS console then using this comman for extende terminal volume}
df -hT
sudo xfs_growfs -d /data
#################################################################################################################################
#docker

apt install docker.io

docker --version

docker ps

docker ps -a

#login into your personal docker registory 
docker login

docker logout

#after login with in your personal registory it command will check your imagesname which you want it could find localy then it could check with in dockerhub 
docker create #containername

docker stats

docker search nginx

apt install net-tools

docker pull nginx

#ispe agr apne docker tag ko change krna hai to phele wo images jo abhi hai phir wo jo bannani hai
docker tag nginx:latest nginx:2.0

#build with argument
docker build --build-arg ODOO_USER_UID=113 --build-arg ODOO_USER_GID=122 -t odoobywebkul:13.0 .

#docker images to tar and tar to images
docker save {odoo_saas_image}{tag} > {odoo_saas_image}.tar

docker load < {odoo_saas_image}.tar

#delete images 
docker rmi nginx:2.0 or images_id

docker  rmi -f $(docker images -aq)

#delete  all images
docker rmi -f $(docker images -aq)

docker run -itd --name nginx -p 8080:80 nginx:latest


docker pause nginx

docker unpause nginx

docker start nginx

docker restart nginx

docker stop nginx

docker exec -it nginx bash

#remove running contaner with in stoped state
docker kill nginx

docker build -t imagename . --no-cache

docker history nginx

docker inspect nginx

ls /var/lib/docker


#docker-compose docker_compose.yaml
apt install docker-compose -y

docker-compose up

docker-compose ls

docker-compose start

docker-compose rm

docker-compose ps

docker network ls

docker network inspect host

docker network create mynetwork

docker network inspect mynetwork

docker system purne

docker images purne

docker container purne

docker volume purne

docker network purne

docker logs nginx

docker events

docker top nginx

docker port nginx

docker volume create nginx

docker volume inspect nginx

docker volume rm nginx

docker rename nginx apache2

docker info

docker exec -it apache2 apt update

docker run -v /root/backup:/var/www/html  -d <image-name>

docker exec <web-container-name> tar czvf /backups/html-$(date +%F_%H%M%S).tar.gz /var/www/html

docker exec <mysql-container-name> sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /backups/mysql-$(date +%F_%H%M%S).sql

docker run -itd -p 80:80 -v /root/codebackup:/var/www/html/ -v /root/mysqlbackup:/var/lib/mysql --name test test

docker run -itd -p 3306:3306 --name db -e MYSQL_ROOT_PASSWORD=godzila -e MYSQL_DATABASE=godzila -e CREATE_USER=kingkong -e GRANT_ALL_PRIVILEGES ON godzila.* TO 'kingkong'@'localhost' WITH GRANT OPTION mysql


###############################################################################################################################
#problem & solution finding approch

ping vishwanathacharya.cloud


/etc/hosts
nano /etc/resolv.conf
nano /etc/nsswitch.conf

telnet 3.27.110.75 8080

service nginx status

ufw status

iptables -L -n -v

tail -f -n 500 /var/log/nginx/access.log

tail -f -n 500 /var/log/nginx/error.log

check vhost and configurations


cat /proc/meminfo
#####################################################################################################################
#symbolic link

touch set

touch set sethrd

touch -s set /your/path/setsft


###################################################################################################################

ls -l /var

ls -al /var

ls -lh /var

ls -F /var

ls -r /var

ls -R /var

ls -ltr /var

ls -ltra /var

ls -lS /var

ls -ia /var

ls --version

ls -ld /var

ls -lf /var

ls -n

cd ~

date

date +%a

date +%A

date +%b

date +%B

date +%d

date +%D

date +%F

date +%Z

date +%Y

date +%U

date +%u

head /etc/passwd

head /etc/passwd /etc/hosts

head /etc/passwd | wc -l

head -n5 /etc/passwd 

head -c32 /etc/passwd | wc -l

head -c32 /etc/passwd 

tail /etc/passwd

tail /etc/passwd | wc -l

tail /etc/passwd /etc/hosts

tail -f /var/log/apache2/access/log

tail -n500 /var/log/apache2/error.log

tail  /etc/hosts | wc -w

tail  /etc/hosts | wc -c

tail  /etc/hosts | wc -L

tail  /etc/hosts | wc -m

file -ib /etc/passwd
##################################################################################################################
#postgres
psql -d mytable postgres -f insert.sql

psql -d odoo15 postgres -f odoo15.sql

pg_dump name_of_database > name_of_backup_file
 
pg_dump odoo15 > odoo15
 
psql -U odoo15 -d odoo15 < dump.sql

psql -d mytable postgres -f insert.sql

psql -d odoo15 postgres -f odoo15.sql

pg_dump name_of_database > name_of_backup_file
 
pg_dump odoo15 > odoo15
 
psql -U odoo15 -d odoo15 < dump.sql


psql -U odoosaas -h8.213.19.219 -p5432 postgres



sudo pg_isready



postgres=# create user test with password 'password';
CREATE ROLE
postgres=# create database testdb;
CREATE DATABASE
postgres=# grant all privileges on database testdb to test;
########################################################################################################################
#sed command
sed -ri -e 's!AllowOverride None!AllowOverride All!g' /etc/apache2/apache2.conf

sed -ri -e 's!database_name_here!db!' wp-config.php
####################################################################################################################
ubuntu 22 prpoblem


wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb


sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb



sudo apt install ./wkhtmltox_0.12.5-1.bionic_amd64.deb





pip3 install --upgrade pip


pip3 install wheel setuptools pip --upgrade
################################################################################################################################
#nginx command
sudo ln -s /etc/nginx/sites-available/odoo-server.conf /etc/nginx/sites-enabled/



ulimit -n



location ~* .(jpg|jpeg|png|gif|ico|css|js)$ {expires 30d;}

###########################################################################


http {

…

client_body_buffer_size 80k;

client_max_body_size 9m;

client_header_buffer_size 1k;

...

}
#############################################################################################

access_log /var/log/nginx/access.log main buffer=16k;
#############################################################################################

access_log off;


#############################################################################################

client_body_timeout 10;

client_header_timeout 10;

keepalive_timeout 13;

send_timeout 10;

#############################################################################################

http {

...

open_file_cache max=1024 inactive=10s;

open_file_cache_valid 60s;

open_file_cache_min_uses 2;

open_file_cache_errors on;

###########################################################################################################################
 mysql.sh
cat mysql.sh
#!/bin/bassh
/etc/init.d/mysql status
if [ $? -ne 0 ]
then
    /etc/init.d/mysql start && echo "mysql started at $(date)" >> mysql.log 
else
    echo "Mysql is running"
fi





*/5  *  *  *  *   /bin/bash  /root/mysql.sh
###########################################################################################################################
alter user 'root'@'localhost' identified with mysql_native_password by 'password';

CREATE USER 'user11'@'13.41.162.182' IDENTIFIED BY 'password';

GRANT REPLICATION SLAVE ON *.* TO 'user11'@'13.41.162.182';


13.41.162.182


CHANGE MASTER TO MASTER_HOST ='18.133.219.122', MASTER_USER ='user11', MASTER_PASSWORD ='password', MASTER_LOG_FILE = 'mysql-bin.000053', MASTER_LOG_POS = 718;




create database webkul;
create tables webkul.emp (name varchar(20));
insert into webkul.emp values ('vishwa');



create user 'magentouser'@'localhost' identified with mysql_native_password by 'rFxC#Ld?m.*naP*K';


grant all privileges on magento*.* to 'magentouser'@'localhost' with grant option;


GRANT CREATE ON *.* TO 'magentouser'@'%';
create user 'magento'@'%' identified with mysql_native_password by 'hIQ8kvZmnbtQvv';

GRANT CREATE, ALTER, DROP, INDEX, INSERT, SELECT, UPDATE, DELETE, LOCK TABLES, CREATE TEMPORARY TABLES ON *.* TO 'magento2user'@'%';
FLUSH PRIVILEGES;

GRANT CREATE ON *.* TO 'magento2user'@'%';
GRANT DROP ON *.* TO 'magento2user'@'%';
grant all on magentodb.* to 'magento2user'@'%' with grant option;
hIQ8kvZmnbtQv2





GRANT CREATE ON *.* TO 'magento2user'@'%';
GRANT CREATE ON *.* TO 'magento2user'@'%';


create database magentodb;
create user 'magentodbuser'@'%' identified with mysql_native_password by 'kBMRz7njxNKj3';
grant all on magentodb.* to 'magentodbuser'@'%' with grant option;
GRANT CREATE,DROP ON *.* TO 'magentodbuser'@'%';
SHOW GRANTS FOR 'magentodbuser'@'%';


mysql -u username -p database_name < dump_file.sql
#################################################################################################################
ec2metadata
################################################################################################################

#add custom group 
groupadd --gid 122 odoowebkul

cat /etc/group  | grep odo

adduser --system --home /odoowebkul --shell /bin/bash --uid 114 --gid 122 odoowebkul
###############################################################################################################
#it print exact you type with in qutes 
echo "HI today i feel Good"



echo "<php phpinfo ?>" | tee -i php.info


echo "test somtinh" > test1


echo "test somtinh new line" >> test1


ls -l > filename

pwd > filename

ls -la > filename


ls -l root  2>  filename

whoami

hostname



https://pad.odoo.com/p/loweYZ2vEd4PfjEugYMj

bin/magento maintenance:disable


apache2ctl -M


a2query -m


sudo sync
sudo echo 3 > /proc/sys/vm/drop_caches

aws iam list-users
#################################################################################################################################################################
#ssh issue
PubkeyAcceptedAlgorithms +ssh-rsa



###########################################################################################
#elasicsearch installation command

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.11.4-amd64.deb
dpkg -i elasticsearch-8.11.4-amd64.deb
systemctl start elasticsearch
systemctl enable elasticsearch
systemctl status elasticsearch
nano /etc/elasticsearch/elasticsearch.yml
xpack.security.enabled: false {Here, bydefault is true, make it false.}
systemctl restart elasticsearch
curl -XGET http://localhost:9200
curl -XGET http://publicip:9200
curl -XGET http://privateip:9200
curl -XGET http://127.0.0.1:9200
curl -XGET http://0.0.0.0:9200


##########################################################################################

