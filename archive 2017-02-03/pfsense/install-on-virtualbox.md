Install pfsense on Virtualbox
=============================

Note: This is a rough document.

---
## Aim
Install and configure pfsense on Virtualbox as firewall for host

```
Traffic:
Host -> [pfsense] -> gateway
```

## Procedure
### Download
- Download CD image from [pfsense.org](https://www.pfsense.org/download/)
- Verify SHA256 checksum [^1]

### Configure Virtual machine
- Type: BSD
- Version: FreeBSD (64-bit)
- RAM: 512 MB
- Attach pfsense Iso
- Network Adapters
    - Bridged Adapter
    - Bridger Adapter

### Configure pfsense
- WAN 192.168.1.100
- LAN 192.168.1.101
- Connect on 192.168.1.101. Use that as gateway on host

Works!
Now what?

[^1]:https://doc.pfsense.org/index.php/Verify_Downloaded_Files
