tput setaf 7; tput bold
echo "Check if docker is installed"
tput sgr0

RESULT=$(docker --version | grep Docker | sed "s/Docker.*/Docker/")
if [ $RESULT == "Docker" ]
then
	tput setaf 2; tput bold
	echo "DOCKER IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: DOCKER IS NOT INSTALLED"
  tput sgr0
	exit 1
fi


tput setaf 7; tput bold
echo "Check if docker-compose is installed"
tput sgr0

RESULT_COMPOSE=$(docker-compose --version | sed "s/docker-compose.*/docker-compose/")
if [ $RESULT_COMPOSE == "docker-compose" ]
then
	tput setaf 2; tput bold
	echo "DOCKER-COMPOSE IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: DOCKER-COMPOSE IS NOT INSTALLED"
	echo "DEBUG: $RESULT_COMPOSE"
  tput sgr0
	exit 1
fi
