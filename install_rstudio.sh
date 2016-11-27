RSTUDIO_VERSION=1.0.44
RSTUDIO_FILE=rstudio-server-rhel-"$RSTUDIO_VERSION"-x86_64.rpm

wget https://s3.amazonaws.com/rstudio-dailybuilds/"$RSTUDIO_FILE"

sudo yum install --nogpgcheck "$RSTUDIO_FILE"
