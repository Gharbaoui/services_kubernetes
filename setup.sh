function print_line(){
	color=$2
	echo "${color}=========================== '  $1 ' =====================================${NORM}";
	echo "" ;
}

function replace_ip () # what to replace $2 with what $3 file path
{
	sed -i '' "s/$1/$2/g" $3;
}

function get_back()
{
	replace_ip  $MKIP  'MINIKUBE_IP' './metallb/config.yaml';
	replace_ip $MKIP  'MINIKUBE_IP' './ftps/ftpsImage/vsftpd.conf';
}

# VARIABLES
export YELLOW='\033[1;33m'
export GREEN='\033[0;32m'
export NORM='\033[0m'

# starting MINIKUBE
export MINIKUBE_HOME=~/goinfre/
minikube start
eval $(minikube docker-env)
export MKIP=$(minikube ip)
# MINIKUBE STARTED

# installing metallb
print_line 'instaling metallb' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './metallb/config.yaml'
sh ./metallb/install.sh
print_line 'metallb instaled' $GREEN
kubectl apply -f ./stCls.yaml
# metallb installed

# installing ftps username is 'mohamed' password '1234'
print_line 'installing FTPS server' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './ftps/ftpsImage/vsftpd.conf'
sh ./ftps/install.sh
print_line 'FTPS server installed' $GREEN
# ftps installed

# installing phpmyadmin 'mohamed' '1234'
print_line 'installing PHPMYADMIN server' $YELLOW
sh ./mysql/install.sh
sh ./phpmyadmin/install.sh
print_line 'PHPMYADMIN instaled' $GREEN
# phpmyadmin installed

get_back
