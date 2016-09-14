# Course Utilities for Azure Classrooms

## Create Users

+ Use the `create-users.sh` script to create new user accounts
+ Will create a csv file of usernames and passwords

## Distribute materials

+ The `distribute-materials.csh` script distribute materials to the user directories

## Add MRS for Analysts Materials

+ The script `r-materials.csh` downloads the data needed for the MRS for Analysts course
	* NOTE: this script was designed to work with the Linux DSVM with an attached data disk to /datadrive
+ It also downloads the MRS for Analysts notebook
	* NOTE: this needs to be updated to the proper repo
+ It then creates 50 users using `create-users.sh` and distributes the notebook to all users using `distribute-materials.csh`
