==============

Wiko Highway Signs (codenamed _"s4750"_) is a smartphone from Wiko.

The Wiko Highway Signs (s4750) uses a Mediatek Chipset (MT6592m).

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.4GHz Quad-Core MT6592m
GPU     | Mali-450MP
Memory  | 1GB RAM
Shipped Android Version | 4.4.2
Updated to Android Version | 4.4.2
Storage | 8GB
Battery | 2000 mAh
Display | 5" 720 x 1280 px
Density | 320 pixel per inch (PPI)
Camera  | 8MP Back, 5MP Front, LED Flash
Kernel Version  | Kitkat:3.4.67

![s4750](http://ce.lnwfile.com/0dvpqu.jpg "Wiko Highway Signs")


# CyanogenMod 13.0

This is a device tree for Wiko Highway Signs (s4750) which is based on Mediatek MT6592m SoC.

# Build Environment

    * Tested and Working on any version of Ubuntu - 14.04,14.10,15.04 (64-bit)
    * Any other distribution based of the Ubuntu Distro such as Lubuntu, Xubuntu and etc.
    * Any form of Terminal
    * Decent hardware (minimum of at least a dual core CPU and 4 GB of RAM)
    * A storage unit of any kind (We recommend utilizing SSDs as Mechanical HDDs slow down the build proccess drastically and the minimum storage size is 70GB. Having more will be useful with CCache)
    * Required Packages should have been installed

# Required Packages
* Simply copy and paste this in a terminal window:

[Hint: This command updates the Ubuntu Packages List (Install Listing) and install the required version of Java]

 $ sudo apt-get install openjdk-7-jdk

* Let that install and then proceed.

* More copy and paste:

[Hint: Running this command installs the other required packages to build android]

 $ sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-7-jre openjdk-7-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib maven tmux screen w3m ncftp

# Getting the Source

   * Making required directories
   * Obtaining the repo binary
   * Adding repo binary to your path
   * Giving the repo binary proper permissions
   * Initializing an empty repo
   * Syncing the repo

Alright, so now we’re getting there. I have outlined the basics of what we’re about to do and broke them down as I know them. This is all pretty much going to be copy/paste so it’ll be fairly difficult to screw this up :)

* Make directory for the repo binary

  $ mkdir ~/bin

* Add directory for the repo binary to its path

  $ PATH=~/bin:$PATH

* Downloading repo binary and placing it in the proper directory

  $ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

* Giving the repo binary the proper permissions

  $ chmod a+x ~/bin/repo

* Creating directory for where the CM repo will be stored and synced

  $ mkdir ~/cm
  $ cd ~/cm

* Initializing the CM repo and downloading the manifest

  $  repo init -u https://github.com/goayandi/android.git -b mtk

* Syncing the source

[Hint: This might take a long time as the source is ~20GB]

  $  repo sync -f --force-sync --no-clone-bundle

* full build
        
        # source build/envsetup.sh

        # brunch cm_s4750-userdebug

# Limitations

Services requires root:

`system/core/rootdir/init.rc`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')

# Using Github

Need help at using Github? Have a look at his awesome guide: https://rogerdudler.github.io/git-guide/

# Thanks
	Ferhung
	xen0n
	Fire855
	DerTeufel1960
	rohan taneja
	hyperion70
	superdragonpt
	Al3XKOoL
	ariafan
	axet
	chrmhoffmann
	Santhosh M
	and many more ...
