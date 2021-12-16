boot_command = [
    "<esc><enter><wait>",
    "linux ",
    "biosdevname=0 ",
    "net.ifnames=0 ",
    "netdevice=eth0 ",
    "netsetup=dhcp ",
    "lang=en_US ",
    "textmode=1 ",
    "autoyast=device://fd0/autoinst.xml",
    "<enter><wait>"
]  