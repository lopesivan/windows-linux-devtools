Yes, you CAN use the free Microsoft Visual C++ 2005 Express Edition (albeit not right out of the box) to mod Civilization IV&#8217;s CvGameCoreDLL.dll code that is publicly available from Firaxis in the SDK.

Credit goes to DaveMcW, Kael, and Maian for doing all the hard work. I&#8217;ve only combined their efforts into one post.

*** I&#8217;ve changed this procedure slightly so that it makes sense for both vanilla and Warlords code ***

Let&#8217;s do it:


1 - *VANILLA*
Download the SDK from Civilization IV Source Code. This is a file named Civ4_SDK_source.zip. Unzip it and you will see the following directory structure:

(folder you extracted it to)
CvGameCoreDLL_v161
CvGameCoreDLL
Boost-1.32.0
Python24

I suggest that you leave these folders and their files in place and intact so that you always have an original copy of the source files. Copy the folder CvGameCoreDLL and all of it&#8217;s contents to another location (commonly called your working folder).

DELETE two files, CvGameCoreDLL.vcproj, and CvGameCoreDLL.vcproj.vspcc.


1 - *WARLORDS*
Install Warlords, and patch 2.08. You will see a folder in your \Warlords directory named CvGameCoreDLL. I suggest that you leave this folder and it&#8217;s files in place and intact so that you always have an original copy of the source files. Copy the folder CvGameCoreDLL and all of it&#8217;s contents to another location (commonly called your working folder).

DELETE two files, CvGameCoreDLL.vcproj, and CvGameCoreDLL.vcproj.vspcc.


2 - Download and install Microsoft Visual C++ Toolkit 2003.


3 - Download the following three library files and put them in the folder:

C:\Program Files\Microsoft Visual C++ Toolkit 2003\lib

msvcrt.lib 
msvcrtd.lib 
msvcprt.lib


4 - Download and install the Microsoft Platform SDK.


5 - Download the Makefile and extract it into your CvGameCoreDLL_v161\CvGameCoreDLL folder.


6 - Open the Makefile in WordPad (not Notepad). 

At the very top, change the line that begins with TOOLKIT to the path of your Visual C++ Toolkit 2003 directory.

Change the line that begins with PSDK to the path of your Microsoft Platform SDK.

Save and exit.


7 - Download and install Microsoft Visual C++ 2005 Express Edition 


8 - Launch Visual C++ 2005 Express Edition

*** DO NOT open the existing project file in Visual C++ 2005 Express Edition ***


9 - Click -File- -New- -Project-. The &#8216;New Project&#8217; window will open.

In the &#8216;Project types&#8217; box select &#8211;General-.

In the &#8216;Templates&#8217; box select -Makefile Project-.

In the &#8216;Name&#8217; box type &#8216;CvGameCoreDLL&#8217;.

In the &#8216;Location&#8217; box browse to the folder where you copied your CvGameCoreDLL folder to. This folder MUST be the last folder listed in this box. For example, if you copied CvGameCoreDLL to another folder like so:

C:\MyModsFolder\CvGameCoreDLL

The entry in the &#8216;Location&#8217; box must read:

C:\MyModsFolder

UNCHECK the box that says 'Create Directory for Solution'.


Click -OK-. The &#8216;Makefile Application Wizard&#8217; will open. Click &#8211;Next-. Clear all the boxes. Click &#8211;Finish-.


10 - Click -Project- -Add Existing Item&#8230;-. The &#8216;Add Existing Item - CvGameCoreDLL&#8217; window will open.

This folder will contain all of the source code files, the Boost-1.32.0 folder, and the Python24 folder. Select everything (use Ctrl-A) and click -Add-.


11 - Click -Project- -CvgameCoreDLL Properties-. The &#8216;CvgameCoreDLL Properties Pages&#8217; window will open.

In the left-hand box under &#8216;Configuration Properties&#8217; select &#8216;NMake&#8217;.

In the upper-right-hand corner click the &#8216;Configuration Manager&#8217; button. The &#8216;Configuration Manager&#8217; window will open.

In the upper-left-hand box named &#8216;Active solution configuration&#8217;, click the drop-down button and select &#8216;<Edit&#8230;>&#8217;. The &#8216;Edit Solution Configurations&#8217; window will open.

Select &#8216;Debug&#8217; and click the &#8216;Remove' button. Click 'Yes'.

Select &#8216;Release&#8217; and click the &#8216;Rename&#8217; button. Change the name from &#8216;Release&#8217; to &#8216;Final_Release&#8217;. Click 'Rename'. Click 'Yes'.

Close the &#8216;Edit Solution Configurations&#8217; window.

In the &#8216;Project contexts&#8217; window, in the &#8216;Configurations&#8217; column, click the drop-down button and select &#8216;<Edit&#8230;>&#8217;. The &#8216;Edit Project Configurations&#8217; window will open. Repeat the steps above to remove &#8216;Debug&#8217; and rename &#8216;Release&#8217; to &#8216;Final_Release&#8217;.

Close the &#8216;Configuration Manager&#8217; window. Now you&#8217;re back at the &#8216;CvgameCoreDLL Properties Pages&#8217; window. Make sure in the left-hand box under &#8216;Configuration Properties&#8217; you&#8217;ve selected &#8216;NMake&#8217;.

In the right-hand box under &#8216;General&#8217; it says &#8216;Build Command Line&#8217;. Click the empty box to the right of it and type &#8216;nmake Final_Release&#8217;.

In the next line down, to the right of where it says &#8216;Rebuild All Command Line&#8217;, click in the empty box and then click the button in the box at the right. The &#8216;Rebuild All Command Line&#8217; window will open. Type &#8216;nmake clean Final_Release&#8217;, and then directly below it on a second line, type &#8216;nmake Final_Release&#8217;. Click -OK-.

In the next line down, to the right of where it says &#8216;Clean Command Line&#8217;, type &#8216;nmake clean Final_Release&#8217;.

Click 'Ok' to close the &#8216;CvgameCoreDLL Properties Pages&#8217; window,

*** YOU ARE DONE ***


Now, the first thing to do is to compile the source code. Click -Build- -Build Solution-. This will begin building, or compiling, the source code. It takes about 20 minutes to do a full compile on my machine. 

When the build has completed successfully, you will see this in the last few lines of the &#8216;Output&#8217; box:

------------------------------------------------------------------------------------------------------
LINK : warning LNK4089: all references to 'KERNEL32.dll' discarded by /OPT:REF

CvGameCoreDLL - 0 error(s), 1 warning(s)

========== Build: 1 succeeded, 0 failed, 0 up-to-date, 0 skipped ==========
------------------------------------------------------------------------------------------------------


You can ignore the harmless LNK4089 warning. Any other warnings should be addressed (errors in your code after you&#8217;ve been modding).

A successful build will generate the folder &#8216;Final_Release&#8217; which is under your CvGameCoreDLL folder like so:

CvGameCoreDLL_v161
CvGameCoreDLL
Boost-1.32.0
Final_Release
Python24

In the &#8216;Final_Release&#8217; folder you will find your freshly baked CvGameCoreDLL.dll file, which you then copy into your mod&#8217;s Assets folder.


*** MODDING ***

After you go into the source code and modify it, you&#8217;ll need to compile the code, to produce a modified CvGameCoreDLL.dll file. The nice thing is, you&#8217;ll only need to compile the files you have changed, so it&#8217;s much faster to do a build after changing a couple of files. If you&#8217;re like me, you&#8217;ll be building .dll&#8217;s and testing them regularly. If you&#8217;re a REAL programmer, I&#8217;d imagine you&#8217;d have a good grasp of what code works and what doesn&#8217;t just by looking at it. For us novices, the compiler itself will teach you a few things through the errors and warnings it produces when you compile. C++ isn&#8217;t easy at first, but there are a lot of resources available on the web and at your local bookstore. One of my favorite links: cplusplus.com. Getting into detail about C++, modding, and best practices are beyond the scope of this post.

Have fun!

