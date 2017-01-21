#!/usr/bin/awk

BEGIN{
	print "This is the begin of the awk script."	
}

{
	print "-------------------"
	print "Username : "$1
	print "Shell : "$6
}

END{
	print "This is the end of the awk script."
}
