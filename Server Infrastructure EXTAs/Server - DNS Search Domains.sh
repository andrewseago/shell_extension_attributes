#!/bin/sh
# getsearchdomains.sh
#
#
# Created by Andrew Seago on 05/13/15.
# set -x	# DEBUG. Display commands and their arguments as they are executed
# set -v	# VERBOSE. Display shell input lines as they are read.
# set -n	# EVALUATE. Check syntax of the script but dont execute

## Variables
####################################################################################################
searchdomains=($(awk '/search /' /etc/resolv.conf | sed 's/search //'))
## Script
####################################################################################################
echo "<result>$(echo ${searchdomains[@]} | tr ' ' '\n')</result>"


#ea_display_name	Server - DNS Search Domains
