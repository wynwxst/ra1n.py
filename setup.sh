#!/bin/bash

username=$(whoami)

crp=/home/$username/Applications/ra1n-py/
cd /home/$username/ra1n-py/

##### The old service installation method, back into retirement #####
#
#echo Removing old checkra1npyhon files...
#rm -rf $crp
#
#echo Creaing new ra1n-py directory...
#mkdir $crp
#
#echo "Installing depenedancies (this may take a while)..."
#pip3 install pygame
#pip3 install wget
#
#echo Copying program to desired location...
#cp /home/$username/ra1n-py/program.py $crp/program.py
#
#echo Copying update script to desired location...
#cp /home/$username/ra1n-py/update.py $crp/update.py
#
#echo Making resources directory...
#mkdir $crp/resources
#
#echo Copying resources to resource location...
#cp /home/$username/ra1n-py/resources/checkra1n.png $crp/resources/checkra1n.png
#
#echo Setting correct permissions for the ra1n-py directory...
#sudo chown $username $crp
#echo Copying the service into the correct directory...
#sudo cp /home/$username/ra1n-py/ra1n-pygui.service /etc/systemd/system/ra1n-pygui.service
#
#echo Running chmod on service...
#sudo chmod 644 /etc/systemd/system/ra1n-pygui.service
#
#echo Restarting systemctl daemon...
#sudo systemctl daemon-reload
#
#echo Enabling ra1n-pygui.service...
#sudo systemctl enable ra1n-pygui.service


##### The newer service installtion method ######

echo Service will be installed under the name "ra1n-pygui"...

echo Removing old ra1n-py files...
rm -rf $crp

echo Copying program to desired location...
cp -rf /home/$username/ra1n-py/ra1n-pygui/ $crp

echo Creating daemon run file...
echo "#!/bin/bash" > run
echo "exec /usr/bin/python3 /home/$USER/Applications/ra1n.py" > run

echo "Setting up daemon_setup.sh..."
echo -e "CURUSER=$USER\n$(cat daemon_setup.sh)" > daemon_setup.sh

echo Done with the program, the daemon STILL NEED TO BE SETUP, please run 'sudo ./daemon_setup.sh'
