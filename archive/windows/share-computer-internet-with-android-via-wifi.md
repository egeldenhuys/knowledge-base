Share Computer Internet With Android via WiFi
====================================================================================

If you have a Windows 7 laptop with a compatible wireless card you can create a Virtual Wireless Hotspot.
(This is a hidden feature within Windows 7 called Virtual WiFi)

**Requires Windows 7 and above**

**Android does NOT need to be rooted**

**1.** Open a command line with admin privileges and run the following command:
```
netsh wlan set hostednetwork mode=allow ssid=<SSID> key=<PASSWORD>
```

**2.** Now start the adapter by running this command:
```
netsh wlan start hostednetwork
```

You will notice that you have a new Wireless adapter in your 
Network and Sharing Center called **"Microsoft Virtual WiFi Miniport Adapter"**

**3.** Now simply enable your 3G interface's Internet Connection Sharing (ICS)

**4.** Connect devices to the newly created virtual WiFi hotspot

## References
- [Matthysdt (2012-07-31) "Reverse Tethering with Windows for Android and other devices. (Windows WiFi Hotspot)" - http://mybroadband.co.za](http://mybroadband.co.za/vb/showthread.php/452361-Reverse-Tethering-with-Windows-for-Android-and-other-devices-%28Windows-WiFi-Hotspot%29)

## See Also
- ["About the Wireless Hosted Network" - msdn.microsoft.com](https://msdn.microsoft.com/en-us/library/dd815243%28VS.85%29.aspx)
