# 
## File: actparams.ps1
## Purpose: Sets the parameters required for the main PowerShell script
#

#  This is the user we will connect to the Applance with.   
[string] $user = "admin"

# we need to choose only one access method.  Use a hash to block out the one you dont use.   
[string] $password = "passw0rd"
# [string] $keyfile = "./keyfile.key"

#  This is the appliance we are going to run this command against
[string] $ApplianceIP = "172.24.1.180"

# this is the maximum number of retries before we give up.
[int]$MaxRetries = 100000

# this is the interval in seconds before rechecking on the job progress
[int]$sleepinterval = 60

# Destination addresses.  Make sure to add extra addrs with the same format
# Add as many addresses as you like, or delete all but one
$dest = "anthonyv@acme.com","aarontully@acme.com"

# from address for the email
[string] $fromaddr = "actifioreporter@actifio.com"

# mail server that will hopefully relay our mail
[string] $mailserver = "smtp.acme.com"
