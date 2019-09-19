To build the FRAM and Tomcat images run:

	For Tomcat:
	Navigate into Tomcat
	Run docker build -t edtomcat .

	For FRAM
	Navigate into FRAM
	Run docker build -t fram .

To run the Ephemeral network with docker-compose
	Navigate into Run
	Run docker-compose up

	If you want to run multiple tomcat instances:
	Run docker-compose up --scale tomcat={number}

Environment properties:
LICENSE - Your license key
PASS - The password you would like for the instance
TARGET (Tomcat only) - The target for the FRAM instance to register to
GROUPS (Tomcat only) - The groups you want the instances to register to

