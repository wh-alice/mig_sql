---
title: "Installing the Driver Manager | Microsoft Docs"
ms.custom: ""
ms.date: "12/29/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Driver Manager, installing"
ms.assetid: 7c4b6fb4-f45a-4973-adb9-a4d83f0a2a7a
caps.latest.revision: 59
ms.author: "annemill"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Installing the Driver Manager
![Download](../../../ssdt/media/download.png)[Download ODBC Driver](https://blogs.msdn.microsoft.com/sqlnativeclient/2016/10/20/odbc-driver-13-0-for-linux-released/)

This topic contains instructions to install the unixODBC Driver Manager for use with Microsoft ODBC Driver 11 for SQL Server on Linux.  
  
> [!IMPORTANT]  
> Delete any driver manager packages installed on your computer before you install the unixODBC Driver Manager. Installing the unixODBC Driver Manager could cause a failure of an existing Driver Manager.  

## Installing the Driver Manager for Microsoft ODBC Driver 13.0 for SQL Server  
The driver manager dependency is resolved automatically by the package management system when you install the Microsoft ODBC Driver 13.0 for SQL Server on Linux by following these instructions: [Installing the Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/installing-the-microsoft-odbc-driver-for-sql-server-on-linux.md). 

## Installing the Driver Manager for Microsoft ODBC Driver 11 for SQL Server  
  
**Using the Installation Script**  
  
> [!IMPORTANT]  
> These instructions refer to msodbcsql-11.0.2270.0.tar.gz, which is the installation file for Red Hat Linux. If you are installing the Preview for SUSE Linux, the file name is msodbcsql-11.0.2260.0.tar.gz.  
  
To install the driver manager:  
  
1.  Make sure that you have root permission.  
  
2.  Go to the directory where the MicrosoftSQL Server ODBC Driver download placed the file called msodbcsql-11.0.2270.0.tar.gz. Make sure that you have the \*.tar.gz file that matches your version of Linux. To extract the files, execute the following command: **tar xvzf msodbcsql-11.0.2270.0.tar.gz**.  
  
3.  Change to the msodbcsql-11.0.2270.0 directory and there you should see a file called build_dm.sh. You can run build_dm.sh to install the unixODBC Driver Manager.  
  
4.  To see a list of the available options, execute the following command: **./build_dm.sh --help**.  
  
5.  When you are ready to install, and if your computer can access an external site via FTP, execute the following command: **./build_dm.sh**.  
  
    If your computer cannot access an external site via FTP, get unixODBC-2.3.0.tar.gz. You can get unixODBC-2.3.0.tar.gz from [http://www.unixodbc.org](http://www.unixodbc.org/). Click the **Download** link on the left side of the page to go to the download page. Then click the appropriate link to download unixODBC-2.3.0 (not unixODBC-2.3.1). UnixODBC-2.3.1 is not supported with this release of the Microsoft ODBC Driver 11 for SQL Server. Execute the following command to begin the unixODBC Driver Manager installation: **./build_dm.sh --download-url=file://unixODBC-2.3.0.tar.gz**.  
  
6.  Type **YES** to proceed with unpacking the files. This part of the process can take up to 5 minutes to complete.  
  
7.  After the script stops running, follow the instructions on the screen to install the unixODBC Driver Manager.  
  
You are now ready to install the driver. See [Installing the Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/installing-the-microsoft-odbc-driver-for-sql-server-on-linux.md) for more information.  
  
**Manual Installation**  
  
If the installation script is unable to complete, configure and build the proper driver manager yourself.  
  
1.  Remove any older installed version of unixODBC (for example, unixODBC 2.2.11). On Red Hat Enterprise Linux 5 or 6, execute the following command: **yum remove unixODBC**. On SUSE Linux Enterprise, **zypper remove unixODBC**.  
  
2.  Go to [http://www.unixodbc.org](http://www.unixodbc.org/). Click the **Download** link on the left side of the page to go to the download page. Then click the appropriate link to save the file unixODBC-2.3.0.tar.gz to your computer. UnixODBC-2.3.1 is not supported with this release of the Microsoft ODBC Driver 11 for SQL Server.  
  
3.  On your Linux computer, execute the command: **tar xvzf unixODBC-2.3.0.tar.gz**.  
  
4.  Change to the unixODBC-2.3.0 directory.  
  
5.  At a command prompt, execute the command: **CPPFLAGS="-DSIZEOF_LONG_INT=8"**.  
  
6.  At a command prompt, execute the command: **export CPPFLAGS**.  
  
7.  At a command prompt, execute the command: **"./configure --prefix=/usr --libdir=/usr/lib64 --sysconfdir=/etc --enable-gui=no --enable-drivers=no --enable-iconv --with-iconv-char-enc=UTF8 --with-iconv-ucode-enc=UTF16LE"**.  
  
8.  At a command prompt (logged in as root), execute the command: **make**.  
  
9. At a command prompt (logged in as root), execute the command: **make install**.  
  
You are now ready to install the driver. See [Installing the Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/installing-the-microsoft-odbc-driver-for-sql-server-on-linux.md) for more information.  
  
## See Also  
[Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/microsoft-odbc-driver-for-sql-server-on-linux.md)  
  
