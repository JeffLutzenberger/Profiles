# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

#change to directory and ls
cdl(){
	cd "$1";
	ls;
}

#go to a rnt site
go() {
	case "${#}" in
	1) cd "/www/rnt/${1}" ;;
	2) cd "/www/rnt/${1}/cgi-bin/${2}/" ;;
	3) cd "/www/rnt/${1}/cgi-bin/${2}/scripts/${3}" ;;
	*) echo "no dice"
	esac
}
