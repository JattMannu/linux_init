Blocking Specific Kernel Updates
Let’s see how we can block specific kernel upgrades in Debian.

First, let’s check what version of the kernel is active. To do that, run the following command.

$ uname -r
You should see a similar output.

4.19.0-6-amd64
To prevent the kernel from being further upgraded, we can simply use the apt-mark command.

$ sudo apt-mark hold linux-image-$(uname -r)
You should see a similar output.

linux-image-4.19.0-6-amd64 set on hold.
Let’s check the details regarding the current version of the kernel first.

$ apt-cache policy linux-image-$(uname -r)
You should see the following output.

linux-image-4.19.0-6-amd64:
  Installed: 4.19.67-2+deb10u1
  Candidate: 4.19.67-2+deb10u1
  Version table:
 *** 4.19.67-2+deb10u1 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        500 http://security.debian.org buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     4.19.67-2 500
        500 http://deb.debian.org/debian buster/main amd64 Packages
Even though 4.19.0.6 kernel is at its latest version (4.19.67) as of writing this tutorial, we are supposing that the next version is already out(4.19.81 is the current stable Linux kernel version).

To block the next version of the kernel, enter the following code in the /etc/apt/preferencesfile.

ackage: linux-image-4.19.0-6-amd64
Pin: version 4.19.81-2+deb10u1
Pin-Priority: -1
The above code will block Debian from installing only the 4.19.81 version. It won’t stop it from upgrading to the next higher version so you might need to keep the file updated with multiple versions if you want to block all those. Or you can simply use the apt-markcommand to hold all upgrades at once.

You can follow the same method for blocking kernel headers by blocking the linux-headers-$(uname -r) package.

Conclusion
Congratulations, you should now be able to block any or specific versions of any packages you don’t want to get installed or upgraded on your Debian system.

