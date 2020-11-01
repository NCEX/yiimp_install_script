# Yiimp_install_scrypt v0.3 (update October, 2020)

Site : https://easy-client-co.ltd

Discord : https://discord.gg/zcCXjkQ

TUTO Youtube (16.04 / 18.04 - Without SSL) : https://www.youtube.com/watch?v=qE0rhfJ1g2k

Dirty Harry Yiimp (used in this script for Yiimp Installation): https://github.com/NCEX/yiimp

Original Yiimp Installer : https://github.com/cryptopool-builders/multipool_original_yiimp_installer


***********************************

## Install script for yiimp on Ubuntu Server 16.04 / 18.04 (use Dirty Harry's Yiimp)

USE THIS SCRIPT ON FRESH INSTALL UBUNTU Server 16.04 / 18.04 !

Connect on your VPS =>
- apt update
- apt upgrade
- reboot
- adduser pool (pool it's just an example...)
- adduser pool sudo
- su - pool
- sudo apt -y install git
- git clone https://github.com/NCEX/yiimp_install_script.git
- cd yiimp_install_script/
- bash install.sh (DO NOT RUN THE SCRIPT AS ROOT or SUDO)
- At the end, the script REBOOT AUTO to finalize installation...

Finish !
- Go http://xxx.xxx.xxx.xxx or https://xxx.xxx.xxx.xxx (if you have chosen LetsEncrypt SSL). Enjoy !
- Go http://xxx.xxx.xxx.xxx/PoolPortal or https://xxx.xxx.xxx.xxx/PoolPortal to access the Admin Panel.

If you are issue after installation (nginx,mariadb... not found), use this script : (watch the log during installation)


###### :booom: **YOU MUST UPDATE THE FOLLOWING FILES :**
- **/var/web/serverconfig.php :** update this file to include your public ip (line = YAAMP_ADMIN_IP) to access the admin panel (Put your PERSONNAL IP, NOT IP of your VPS). update with public keys from exchanges. update with other information specific to your server..
- **/etc/yiimp/keys.php :** update with secrect keys from the exchanges (not mandatory)
- **If you want change 'PoolPortal' to access the Admin Panel :** Edit this file "/var/web/yaamp/modules/site/SiteController.php" and Line 11 => change 'PoolPortal'


###### :booom: **IMPORTANT** : 

- The configuration of yiimp and coin require a minimum of knowledge in linux
- Your mysql information (login/Password) is saved in **~/.my.cnf**

***********************************

###### This script has an interactive beginning and will ask for the following information :

- Server Name (no http:// or www !!!!! Example : crypto.com OR pool.crypto.com OR 80.41.52.63)
- Are you using a subdomain (mypoolx11.crypto.com)
- Enter support email
- Set stratum to AutoExchange
- Your Public IP for admin access (Put your PERSONNAL IP, NOT IP of your VPS)
- Install Fail2ban
- Install UFW and configure ports
- Install LetsEncrypt SSL

***********************************

**This install script will get you 95% ready to go with yiimp. There are a few things you need to do after the main install is finished.**

While I did add some server security to the script, it is every server owners responsibility to fully secure their own servers. After the installation you will still need to customize your serverconfig.php file to your liking, add your API keys, and build/add your coins to the control panel. 

There will be several wallets already in yiimp. These have nothing to do with the installation script and are from the database import from the yiimp github. 

If you need further assistance we have a small but growing discord channel at https://discord.gg/RCGP4Jh

If this helped you or you feel giving please donate : 
- BTC Donation : 3Ee5UwmuekHD4UkMowMnCKhe9wgUoQpbTf
- ETH Donation : 0x103170406c163a109d81c0cec7374aacb5817cd8
- LTC Donation : MM6y8c3i58kEFhC2JTveF36CYDcGaAdUZk
