---
title: "System Requirements for the PHP SQL Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "requirements"
ms.assetid: 5db4b75f-c605-4785-9560-399a533c0fc9
caps.latest.revision: 93
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
# System Requirements for the PHP SQL Driver
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

To access data in a SQL Server or Azure SQL Database using the Microsoft Drivers for PHP for SQL Server, you must have the following components installed on your computer:  
  
-   PHP is required. For information about how to download and install the latest stable binaries, see [http://php.net](http://go.microsoft.com/fwlink/?LinkId=101876).  The Microsoft Drivers for PHP for SQL Server require the following versions:
  
|Microsoft Drivers for PHP for SQL Server Version|Supported PHP Versions|  
|----------------------------------------------------|--------------------------|  
|4.0|PHP 7.0|  
|3.2|PHP 5.6.4+ or<br /><br />PHP 5.5.16+ or<br /><br />PHP 5.4.32|  
|3.1|PHP 5.5.16+ or<br /><br />PHP 5.4.32|  
|3.0|PHP 5.4.32 or<br /><br />PHP 5.3.0|  
|2.0|PHP 5.3.0 or<br /><br />PHP 5.2.4 or<br /><br />PHP 5.2.13|  
  
-   A version of the driver file must be in your PHP extension directory. See Driver Versions later in this topic for information about the different driver files. See [Loading the PHP SQL Driver](../../connect/php/loading-the-php-sql-driver.md)  for information on configuring the driver for the PHP runtime. To download the drivers, see [Microsoft Drivers for PHP for SQL Server](http://www.microsoft.com/download/details.aspx?id=20098).  
  
-   A Web server is required. Your Web server must be configured to run PHP. For information about hosting PHP applications with Internet Information Services (IIS) 6.0, see [Using FastCGI to Host PHP Applications on IIS 6.0](http://go.microsoft.com/fwlink/?LinkId=117131). For information about hosting PHP applications with IIS 7.0, see [Using FastCGI to Host PHP Applications on IIS 7.0](http://go.microsoft.com/fwlink/?LinkId=117132).  
  
    The Microsoft Drivers for PHP for SQL Server has been tested using IIS 6 and IIS 7 with FastCGI.  
  
    > [!NOTE]  
    > Microsoft provides support only for IIS.  
  
-   The correct version of the Microsoft ODBC Driver for SQL Server or SQL Server Native Client is required on the computer where PHP is running.  Note that if you are using a 64-bit operating system, the x86 version will be installed with the x64 installer (do not use the x86 version of the installer unless you are using a 32-bit operating system).  

|Microsoft Drivers for PHP for SQL Server Version|Version of Microsoft ODBC Driver for SQL Server or SQL Server Native Client|  
|----------------------------------------------------|--------------------------|  
|4.0|Microsoft ODBC Driver 11 for SQL Server or Microsoft ODBC Driver 13 for SQL Server. To download the x64 package for 64-bit operating systems, or x86 package for 32-bit operating systems, see the [Microsoft ODBC Driver 11 for SQL Server page](http://www.microsoft.com/download/details.aspx?id=36434) or [Microsoft ODBC Driver 13 for SQL Server page](https://www.microsoft.com/download/details.aspx?id=50420)|  
|3.2 or <br><br> 3.1|Microsoft ODBC Driver 11 for SQL Server. To download the x64 package for 64-bit operating systems, or x86 package for 32-bit operating systems, see the [Microsoft ODBC Driver 11 for SQL Server page](http://www.microsoft.com/download/details.aspx?id=36434)|   
|3.0|Microsoft SQL Server 2012 Native Client. You can download Microsoft SQL Server 2012 Native Client from the [SQL Server 2012 feature pack page](http://go.microsoft.com/fwlink/?LinkID=236805)| 
|2.0|Microsoft SQL Server 2008 R2 Native Client:<br /><br />[Download the X86 package](http://go.microsoft.com/fwlink/?LinkID=188400&clcid=0x409) for 32-bit operating systems <br /><br />[Download the X64 package](http://go.microsoft.com/fwlink/?LinkID=188401&clcid=0x409) for 64-bit operating systems|  

  
If you are using the SQLSRV driver, [sqlsrv_client_info](../../connect/php/sqlsrv_client_info.md) will return information about which version of SQL Server Native Client or Microsoft ODBC Driver for SQL Server is being used by the Microsoft Drivers for PHP for SQL Server. If you are using the PDO_SQLSRV driver, you can use [PDO::getAttribute](../../connect/php/pdo--getattribute.md) to discover the version.  



## Database Versions
-   Azure SQL Databases are supported. For information see [Connecting to Microsoft Azure SQL Database](../../connect/php/connecting-to-microsoft-azure-sql-database.md). 

- Microsoft Drivers for PHP for SQL Server version 3.1 and later support SQL Server 2008 and later
- Microsoft Drivers for PHP for SQL Server version 2.0 and 3.0 support SQL Server 2005 and later


## Driver Versions  
This section lists the drivers that are included with each version of the Microsoft Drivers for PHP for SQL Server.  
  
Follow the installation instructions in [Loading the PHP SQL Driver](../../connect/php/loading-the-php-sql-driver.md)  to configure the driver for use with the PHP runtime.  
  
**Microsoft Drivers 4.0 for PHP for SQL Server:**  

On Windows, for 4.0 the following versions of the driver are installed:
  
|Driver file|PHP version|Thread safe?|Use with PHP .dll|  
|---------------|---------------|----------------|---------------------|  
|php_sqlsrv_7_nts_x86.dll<br /><br />php_pdo_sqlsrv_7_nts_x86.dll|7.0|no|32-bit php7.dll|  
|php_sqlsrv_7_ts_x86.dll<br /><br />php_pdo_sqlsrv_7_ts_x86.dll|7.0|yes|32-bit php7ts.dll|  
|php_sqlsrv_7_nts_x64.dll<br /><br />php_pdo_sqlsrv_7_nts_x64.dll|7.0|no|64-bit php7.dll|  
|php_sqlsrv_7_ts_x64.dll<br /><br />php_pdo_sqlsrv_7_ts_x64.dll|7.0|yes|64-bit php7ts.dll|   
  
On the supported versions of Linux, the appropriate version of sqlsrv and/or pdo_sqlsrv can be installed using PHP's PECL package system. 
  
**Microsoft Drivers 3.2 for PHP for SQL Server installs the following versions of the driver:**  
  
|Driver file|PHP version|Thread safe?|Use with PHP .dll|  
|---------------|---------------|----------------|---------------------|  
|php_sqlsrv_54_nts.dll<br /><br />php_pdo_sqlsrv_54_nts.dll|5.4|no|php5.dll|  
|php_sqlsrv_54_ts.dll<br /><br />php_pdo_sqlsrv_54_ts.dll|5.4|yes|php5ts.dll|  
|php_sqlsrv_55_nts.dll<br /><br />php_pdo_sqlsrv_55_nts.dll|5.5|no|php5.dll|  
|php_sqlsrv_55_ts.dll<br /><br />php_pdo_sqlsrv_55_ts.dll|5.5|yes|php5ts.dll|  
|php_sqlsrv_56_nts.dll<br /><br />php_pdo_sqlsrv_56_nts.dll|5.6|no|php5.dll|  
|php_sqlsrv_56_ts.dll<br /><br />php_pdo_sqlsrv_56_ts.dll|5.6|yes|php5ts.dll|  
  
**Microsoft Drivers 3.1 for PHP for SQL Server installs the following versions of the driver:**  
  
|Driver file|PHP version|Thread safe?|Use with PHP .dll|  
|---------------|---------------|----------------|---------------------|  
|php_sqlsrv_54_nts.dll<br /><br />php_pdo_sqlsrv_54_nts.dll|5.4|no|php5.dll|  
|php_sqlsrv_54_ts.dll<br /><br />php_pdo_sqlsrv_54_ts.dll|5.4|yes|php5ts.dll|  
|php_sqlsrv_55_nts.dll<br /><br />php_pdo_sqlsrv_55_nts.dll|5.5|no|php5.dll|  
|php_sqlsrv_55_ts.dll<br /><br />php_pdo_sqlsrv_55_ts.dll|5.5|yes|php5ts.dll|  
  
**Microsoft Drivers 3.0 for PHP for SQL Server installs the following versions of the driver:**  
  
|Driver file|PHP version|Thread safe?|Use with PHP .dll|  
|---------------|---------------|----------------|---------------------|  
|php_sqlsrv_53_nts.dll<br /><br />php_pdo_sqlsrv_53_nts.dll|5.3|no|php5.dll|  
|php_sqlsrv_53_ts.dll<br /><br />php_pdo_sqlsrv_53_ts.dll|5.3|yes|php5ts.dll|  
|php_sqlsrv_54_nts.dll<br /><br />php_pdo_sqlsrv_54_nts.dll|5.4|no|php5.dll|  
|php_sqlsrv_54_ts.dll<br /><br />php_pdo_sqlsrv_54_ts.dll|5.4|yes|php5ts.dll|  
  
**Microsoft Drivers 2.0 for PHP for SQL Server installs the following versions of the driver:**  
  
|Driver file|PHP version|Thread safe?|Use with PHP .dll|  
|---------------|---------------|----------------|---------------------|  
|php_sqlsrv_53_nts_vc6.dll<br /><br />php_pdo_sqlsrv_53_nts_vc6.dll|5.3|no|php5.dll|  
|php_sqlsrv_53_nts_vc9.dll<br /><br />php_pdo_sqlsrv_53_nts_vc9.dll|5.3|no|php5.dll|  
|php_sqlsrv_53_ts_vc6.dll<br /><br />php_pdo_sqlsrv_53_ts_vc6.dll|5.3|yes|php5ts.dll|  
|php_sqlsrv_53_ts_vc9.dll<br /><br />php_pdo_sqlsrv_53_ts_vc9.dll|5.3|yes|php5ts.dll|  
|php_sqlsrv_52_nts_vc6.dll<br /><br />php_pdo_sqlsrv_52_nts_vc6.dll|5.2|no|php5.dll|  
|php_sqlsrv_52_ts_vc6.dll<br /><br />php_pdo_sqlsrv_52_ts_vc6.dll|5.2|yes|php5ts.dll|  
  
If the name of the driver file contains "vc9", it should be used with a PHP version compiled with Visual C++ 9.0.  
## Operating Systems 
Supported operating systems for the versions of the driver are as follows:
-   4.0 (for Windows):  
    -   Windows Server 2008 SP2
    -   Windows Server 2008 R2 SP1  
    -   Windows Server 2012  
    -   Windows Server 2012 R2  
    -   Windows Vista SP2  
    -   Windows 7 SP1  
    -   Windows 8  
    -   Windows 8.1   
    -   Windows 10
-   4.0 (for Linux): 
    -   Ubuntu 15.04 (64-bit)
    -   Ubuntu 16.04 (64-bit)
    -   Red Hat Enterprise Linux 7 (64-bit)

 
-   3.2 and 3.1 :  
    -   Windows Server 2008 R2 SP1  
    -   Windows Vista SP2  
    -   Windows Server 2008 SP2  
    -   Windows 7 SP1  
    -   Windows Server 2012  
    -   Windows Server 2012 R2  
    -   Windows 8  
    -   Windows 8.1  
  
  
-   3.0 :  
    -   Windows Server 2008 R2 SP1  
    -   Windows Vista SP2  
    -   Windows Server 2008 SP2  
    -   Windows 7 SP1  


-   2.0:
    -   Windows Server 2003 Service Pack 1  
    -   Windows XP Service Pack 3  
    -   Windows Vista Service Pack 1 or later  
    -   Windows Server 2008  
    -   Windows Server 2008 R2  
    -   Windows 7  
  
## See Also  
[Getting Started with the PHP SQL Driver](../../connect/php/getting-started-with-the-php-sql-driver.md)
[Programming Guide for PHP SQL Driver](../../connect/php/programming-guide-for-php-sql-driver.md)
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
  
