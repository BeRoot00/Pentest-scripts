# Python-Idle-Host-Scanning
Build my own tool based on scapy for Idle Host Scan

## The Goal
This script automates an idle host scanning based on Scapy.
With this script we can thus discover the open ports on a target machine by Idle Host Scanning.

## Idle Host Scanning
![Idle Host Scan](https://upload.wikimedia.org/wikipedia/commons/e/ef/Idlescan.png)

As demonstrated by the diagram above, the target hosts responds differently to the Zombie depending on port state. 
If the probed port is open, the target sends a SYN|ACK to the Zombie. 
The Zombie does not expect this SYN|ACK, so it sends a RST back. 
By sending the RST, the Zombie causes its IPID sequence number to increment. 
The real attacker detects this in step 3. If the port is closed, the target sends a RST to the Zombie. 
Zombies ignore this unsolicited RST packet and do not increment their IPID sequence number.

## Scapy
Scapy by secdev is a powerful Python-based interactive packet manipulation program and library.
If you want to know all the protocols used, it will be enough to launch scrapy in CLI, to carry out the command ls(IP)
It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them,
store or read them using pcap files, match requests and replies, and much more.
It is designed to allow fast packet prototyping by using default values that work.

## Riquirements:
To do the tests you would need three virtual machines.
Have scapy installed on the attacking machine.

### Info:
The comments in the code will allow you to understand each step of my script.

### Advice :
It is very important for an aspiring cybersecurity engineer to be able to develop his own tools.
Obviously you need to have a minimum of development skills to do so.


👽Dedication sees dreams come true🕸️
