Rip AudioCD using 'abcde'
=========================

## Instalation

'sudo apt-get install abcde'

flac - 'sudo apt-get install flac'

mp3 - 'sudp apt-get install lame'


## Configuration

We now have to find the config file and copy it to our home-directory

'cp /etc/abcde.conf ~/.abcde.conf'

By default, abcde uses the .ogg codec to encode your files. 
if you want to encode your files with the LAME-Encoder you have to uncomment this line

```
# Paths of programs to use
LAME=lame
#GOGO=gogo
#BLADEENC=bladeenc
#L3ENC=l3enc
#XINGMP3ENC=xingmp3enc
#MP3ENC=mp3enc
#VORBIZE=vorbize
#OGGENC=oggenc
#FLAC=flac
#SPEEXENC=speexenc
#MPPENC=mppenc
```

important is this parameter. you have to set it to your cd-drive

```
# CD device you want to read from
#CDROM=/dev/cdrom
CDROM=/dev/sr0
```

if you want to encode your files to a fixed directory, 
and not to your current directory change this parameter for example

```
# If you'd like to make a default location that overrides the current
# directory for putting mp3's, uncomment this.
#OUTPUTDIR=`pwd`
OUTPUTDIR=~/music/
```

## Running
so now, if you want to encode a cd all you have to do is 

1. put the music cd in your drive
2. open a terminal
3. type "abcde"

#### References
- [daschl (2005-12-05) "[HOWTO] abcde" - ubuntuforums.org]
(http://ubuntuforums.org/showthread.php?t=109429)
