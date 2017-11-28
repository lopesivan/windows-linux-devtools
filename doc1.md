Using Microsoft C++ Toolkit on Linux

It is sometimes convenient to be able to run Microsoft's C++ compiler on Linux. For instance, if you're developing Wine conformance tests, and you want to make sure they'll compile with MSVC++, it's nice to simply be able to type
cl -DSTANDALONE   -D_X86_ lzexpand.c lz32.lib
at the Bash prompt.
Downloading and Installing the Microsoft C++ Toolkit and Platform SDK

Microsoft does not support downloading, installing, or running their tools in anything older than Windows 2000, so don't even try with Win98 or WinME. Don't try with Wine, either, unless you have Internet Explorer installed
Microsoft's C++ Toolkit is currently offered for free-as-in-beer download at msdn.microsoft.com/visualc/vctoolkit2003/. I installed my copy to C:\Program Files\msvc2003.

You'll also need the Microsoft Platform SDK. This is installed using an Active X program which only runs under IE5 or later, so in an IE 5 or later browser, go to www.microsoft.com/msdownload/platformsdk/sdkupdate/ and follow instructions. You can go to that page with other browsers, and download the MS Platform SDK, but that won't do you any good; you will still need IE5 or later to run the Active X component locally. I installed my copy to C:\Program Files\MicrosoftSDK.

Moving the tools to Linux

Assuming you installed Microsoft's tools under Windows XP on an NTFS partition, you'll probably need to transfer them to Linux by tarring them up in Cygwin:
$ cd /cygdrive/c
$ tar -czf ms.tar.gz "Program Files/msvc2003" "Program Files/MicrosoftSDK"
then transferring ms.tar.gz to Linux, and unpacking it with commands like:
$ cd ~/.wine/c
$ tar -xzvf ~/ms.tar.gz
Setting up cl, nmake, and link

To use cl, nmake, and link from the bash prompt in Linux, you'll need short scripts with those names in ~/bin which just run those tools in Wine. A minor complication is how to get environment variables set properly. Normally with MSVC, one does this by executing the batch file VCVARS32.BAT, so I have my scripts execute a batch file which executes VCVARS32.BAT and then the command of interest.
For instance, assuming you have H: set up in Wine to access your home directory, ~/bin/cl should look like this:

wine wcmd /c H:/bin/cl.bat "$@"
And the batch file it runs is
call H:\bin\vcvars32.bat
cl %1 %2 %3 %4 %5 %6 %7 %8 %9
vcvars32.bat is essentially the one installed by Microsoft, but without quotes:
@echo off
Set PATH=C:\Program Files\msvc2003\bin;%PATH%
Set INCLUDE=C:\Program Files\msvc2003\include;C:\Program Files\MicrosoftSDK\include;%INCLUDE%
Set LIB=C:\Program Files\msvc2003\lib;C:\Program Files\MicrosoftSDK\Lib;%LIB%
You can download my set of scripts as a tarball:
bin.tar.gz
Using cl from the commandline

You should then be able to run simple commands like
cl -D_X86_ hello.c
at the bash command prompt, and run the resulting program with
wine hello.exe
Known Issues

cl.bat won't handle commandlines with more than ten parameters. (This should not be a problem when using nmake, which does not go through cl.bat.)
If vcvars32.bat has quotes, cl will fail like this:

H:\>call H:\bin\vcvars32.bat
PATH="C:\Program Files\msvc2003\bin;c:\windows;c:\windows\system"
File not found
This is a bug in wine's wcmd, and it's been there for a long time. wcmd probably just doesn't support quotes properly.
