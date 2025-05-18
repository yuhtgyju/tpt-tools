# tpt-tools
Tools for the powder toy.

# OS Requirements
This has only been tested on Debian 11 with the Zsh shell.

You may be able to get it to work on other distros/shells with some light tweaks.

An OS that has APT (if you don't want to alter the code.)
If you don't mind altering the code, you can get it to work on other distros.

If you are on Windows, you will need to use WSL or a VM in order to use this, else you will need to download [Visual Studio](https://visualstudio.microsoft.com/) with the C++ workload and follow [the tutorial for building on Windows](https://powdertoy.co.uk/Wiki/W/Building_TPT_with_Meson.html#Compiling_for_Windows).

If you are on Mac, follow [the tutorial for building on macOS](https://powdertoy.co.uk/Wiki/W/Building_TPT_with_Meson.html#Compiling_for_MacOS). The scripts might work with some tweaks on macOS.

# Tools
[tptreq.sh](https://github.com/yuhtgyju/tpt-tools/blob/main/tptreq.sh) and [fetch.sh](https://github.com/yuhtgyju/tpt-tools/blob/main/fetch.sh) use apt, git, and wget to download files. [tptreq.sh](https://github.com/yuhtgyju/tpt-tools/blob/main/tptreq.sh) will automatically download git.

[autobuild.sh](https://github.com/yuhtgyju/tpt-tools/blob/main/autobuild.sh) will automatically build TPT for you.
