# This issue came around due to ticket 410963 Outlook Issue

$fileToCheck = "C:\Datcom\checksumOffload.flag" #This will search for the checksumOffload file
$disableOffload = Set-NetAdapterAdvancedProperty Eth* -DisplayName "IPv4 Checksum Offload" -DisplayValue "Disabled" #Disables checksum offload for any Ethernet Net adapter

if (Test-Path $fileToCheck -PathType leaf)
{

}

else 
{
    $disableOffload
    New-Item C:\Datcom\checksumOffload.flag    #This creates the flag file in the Datcome folder on C drive
}