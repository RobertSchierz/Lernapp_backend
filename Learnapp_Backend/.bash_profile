# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export PATH=/package/host/localhost/nodejs-8/bin:$PATH
export PATH=/package/host/localhost/mongodb-3.6/bin:$PATH
