#!/bin/sh
# Download course materials and run user directories

wget http://alizaidi.blob.core.windows.net/training/nyctaxidata.zip
mkdir /datadrive/data
chmod -R 0777 /datadrive/data
unzip nyctaxidata.zip -d /datadrive/data
unzip datadrive/data/ZillowNeighborhoods-NY.zip

# create users

chmod 755 ./create-users.sh
sh ./create-users.sh

# download github repo for course materials

git clone https://github.com/akzaidi/Cognizant-R.git /datadrive/
cp /datadrive/Cognizant-R/MRS\ for\ SAS\ Users.ipynb /home/alizaidi/notebooks

# share notebook to all users

chmod 755 ./distribute_materials.csh
csh ./distribute_materials.csh /home/alizaidi/notebooks

rm -f nyctaxidata.zip