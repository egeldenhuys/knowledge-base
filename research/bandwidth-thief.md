Bandwidth Thief
===============

## Problem
A machine on the network is consuming all the Internet bandwidth, causing other machines to be unable to access the Internet reliably.

## Aim
Determine which machine is consuming all the bandwidth and limit/kick them.

We will do this by collecting network statistics

## Requirements
- Collect the following statistics
    - **Data transfered** for each Client
    - Current **bandwidth** being used by each client
    - **Client <-> Host** Connections
        - Essentially **browsing history**
        - Bob connected to youtube.com
        - Jane connected to dropbox.com
        - John connected to 124.56.4.88
        - Joe connected to pornhub.com
- **Limit client** once their data transfer **quota has been reached**
    - Bob can only tranfer 10 GiB per month. After that we slow him down.
- Fairly **distribute the bandwidth** (QoS?)
    - If only Bob is using the network, give him everything
    - If Jane starts downloading, allocate her sufficient bandwidth
    - **Prioritize** certain connections
        - Gaming
        - Web surfing
- <strike>**Block** certain **host domains** and IP addresses</strike>
    - If each client gets its own data quota, I guess they can do with it as they wish.
- **Limit** bandwidth to certain hosts
    - An unknown client is trying to access porngrub.net, Limit their speed
- **Link IP/MAC** addresses with a **certain user**
    - MAC/IP x and y belongs to Bob. Count traffic from x and y under his account
- **Display statistics** to registered users
    - Make it possible to Jane can see how much data she has left


### Client <-> Host Data Transfered

| Source | Destination | Data Transfered |
| ------ | ----------- | --------------- |
| 192.168.1.103 | Dropbox.com | 104 MiB
| Dropbox.com   | 192.168.103 | 1.87 GiB

Which becomes:

| Client | Host | Download | upload |
| ------ | ---- | -------- | ------ |
| 192.168.1.103 | Dropbox.com | 104 MiB | 1.87 GiB

## Current Plan
`LAN + WiFi -> Access Point -> Linux Machine -> Modem Router -> Internet`
The Linux machine will simply pass the traffic along, while collecting statistics

### Research Buffer
- Software running on Linux to collect network statistics
- Using a Linux server as a simple network pass through
    - All Internet traffic passes through it, allowing us to capture data and generate statistics
- QoS
- MAC address
- Device connected to AP, does end router know original MAC?
- Problem: Virtual machine comes online. Can it be linked to a user?
- Use Linux Server to authenticate users
    - Authenticate LAN?
- Run wireshark

#### Software for Linux
- http://www.binarytides.com/linux-commands-monitor-network/
- http://dynacont.net/documentation/linux/network_monitoring/
- ntopng
- bandwidthd
- iptables
- iftop
- iptraf
- tcptrack
- Netwatch
- Trafshow
- Cacti
- ipaudit
- wireshark

----

## Log
### 2016-06-15

- Create bandwidth-monitor program for displaying bandwidth throughput on LAN -> Internet (No WiFi!)
- Install pfsense in Virtualbox for testing
- pfsense does support ntopng. Seems to be overkill for this purpose.
- What is our purpose? What do we want to collect?
    - Defined what we want to collect. Now how do we collect it?
- Research pfsense statistic collection software
    - There seems to be no suitable software to do what I want.
- Scratching pfsense
- Update Requirements
- How will we know that Bob owns devices X, Y and Z?
    - X: IP, MAC
    - IP can change at any time. DHCP is required
    - MAC can be spoofed
    - We will assume that MAC address stays constant
    - As time progresses we can start linking MAC addresses or IP with actual people.
        - Bob owns x, y and z. So group those connections under his name
- Problem: Virtual machine comes online. Can it be linked to a user?
- After a while we can link

----
## Archive
### Collecting Statistics using pfsense
- [ntopng]
    - ntopng not yet in pfsense package list [^1], [^3]
- [bandwidthd]
    - Also not in pfsense package list [^2]

[ntopng]:http://www.ntop.org/products/traffic-analysis/ntop/
[bandwidthd]:http://bandwidthd.sourceforge.net/
[^1]:https://redmine.pfsense.org/issues/6443
[^2]:https://www.reddit.com/r/PFSENSE/comments/4f1u5x/bandwidthd_in_23/
[^3]:https://www.reddit.com/r/PFSENSE/comments/3cx1tk/223_and_ntopng_200/
