openvpn-change-servers
====================== 
A bash script to easily switch between server configurations in openvnp

Before you can use this script, you need to set up a username file that includes your username and pw for the vpn service you're using
To do this, do the following:

sudo echo "YourUsername" > /etc/openvpn/usernamepass.txt
sudo echo "YourPassword" >> /etc/openvpn/usernamepass.txt

Of course you would be replacing "YourUsername" and "YourPassword" with your respective username and password.

Furthermore, the conf files need to be stored in the folder "conf_files" and subfolder "tcp" for tcp configurations and "udp" for udp configurations.

The conf files I included here as an example are downloaded from from the Private Internet Access website. You can replace the conf files with any of your choosing. I only included the pia files because I currently use them as a vpn provider.

Likewise, I've also included a script that would allow you to easily download the newest files. The newest files are saved in a folder called "pia_confs" and from there, you'd just need to copy the files to your "conf_files" directory and you're good to go.
