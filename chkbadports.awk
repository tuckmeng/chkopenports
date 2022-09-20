BEGIN {
FS="[/]|[ ]"
print "Analysing ports:"
}

($0 ~ /^PORT/) {
# Throw away header
next
}

{
# print "Debug: chkbadports.awk: " $1 "\t" $2 "\t" $3 "\t" $4
if ($1 == 80) print "Error: Port 80 not allowed to be open"
if ($1 > 1023) print "Error: High Port number " $1 " is open" 
}
