---
title: "Microsoft JDBC Driver for SQL Server Support Matrix | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c5769e67-99f7-4bc1-a4fa-8941dad33d35
caps.latest.revision: 13
ms.author: "genemi"
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
# Microsoft JDBC Driver for SQL Server Support Matrix
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This page contains the support matrix and support lifecycle policy for the Microsoft JDBC Driver for SQL Server.  
  
## Microsoft JDBC Driver Support Lifecycle Matrix and Policy  
 The Microsoft Support Lifecycle (MSL) policy provides transparent, predictable information regarding the support lifecycle of Microsoft products. JDBC driver versions 3.0 and 4.x have five year Mainstream support from the driver release date. Mainstream support is defined on the  Microsoft support lifecycle website.  
  
 Extended and custom support options are not available for the Microsoft JDBC Driver.  
    
 The following Microsoft JDBC Drivers are supported, until the indicated End of Support date.  
  
|||||  
|-|-|-|-|  
|Driver Name|Driver Package Version|Applicable JAR(s)|End of Support|
|Microsoft JDBC Driver 6.0 for SQL Server|6.0|sqljdbc42.jar<br>sqljdbc41.jar|July 14, 2026|    
|Microsoft JDBC Driver 4.2 for SQL Server|4.2|sqljdbc42.jar<br>sqljdbc41.jar|August 24, 2020|  
|Microsoft JDBC Driver 4.1 for SQL Server|4.1|sqljdbc41.jar|December 12, 2019|  
|Microsoft JDBC Driver 4.0 for SQL Server|4.0|sqljdbc4.jar|March 6, 2017|  
  
 The following Microsoft JDBC Drivers are no longer supported.  
  
||||  
|-|-|-|  
|Driver Name|Driver Package Version|End of Support|  
|Microsoft SQL Server JDBC Driver 3.0|3.0|April 23, 2015|  
|Microsoft SQL Server JDBC Driver 2.0|2.0|December 31, 2012|  
|Microsoft SQL Server 2005 JDBC Driver 1.2|1.2|June 25, 2011|  
|Microsoft SQL Server 2005 JDBC Driver 1.1|1.1|June 25, 2011|  
|Microsoft SQL Server 2005 JDBC Driver 1.0|1.0|June 25, 2011|  
|Microsoft SQL Server 2000 JDBC Driver|2000|July 9, 2010|  
  
## SQL Version Compatibility  
  
|||||||||||  
|-|-|-|-|-|-|-|-|-|-|  
|Driver Version|SQL Server 2000|SQL Server 2005|SQL Server 2008|SQL Server 2008R2|SQL Server 2012|Azure SQL Database|PDW 2008R2 AU3<sup>4</sup>|SQL Server 2014|SQL Server 2016|  
|6.0|N|Y|Y|Y|Y|Y|Y|Y|Y|  
|4.2|N|N|Y|Y|Y|Y|Y|Y|Y|  
|4.1|N|N|Y|Y|Y|Y|Y|Y|Y|  
|4.0|N|Y|Y|Y|Y|Y|Y|Y|Y|  
|3.0|Y|Y|Y|Y|Y<sup>1</sup>|Y<sup>2</sup>|N|Y<sup>5</sup>|N|  
|2.0|Y|Y|Y<sup>3</sup>|Y<sup>3</sup>|N|N|N|N|N|  
|1.2|Y|Y|Y<sup>3</sup>|N|N|N|N|N|N|  
|1.1|Y|Y|N|N|N|N|N|N|N|  
|1.0|Y|Y|N|N|N|N|N|N|N|  
|2000|Y|N|N|N|N|N|N|N|N|  
  
 <sup>1</sup>Microsoft SQL Server JDBC Driver version 3.0 can connect to SQL Server 2012 as a down-level client.  
  
 <sup>2</sup>Support for Azure SQL Database was introduced in the 3.0 driver as a hotfix. We recommend that Azure SQL Database customers use the latest driver version available.  
  
 <sup>3</sup>Microsoft SQL Server JDBC Driver version 2.0 and Microsoft SQL Server 2005 JDBC Driver version 1.2 can connect to SQL Server 2008 as a down-level client. When down-level conversions are allowed, applications can execute queries and perform updates on the new SQL Server 2008 data types, such as time, date, datetime2, datetimeoffset, and FILESTREAM. For more information about how to use these new data types with the JDBC driver, see  [Working with SQL Server 2008 Date/Time Data Types using JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=145198) and  [Working with SQL Server 2008 FileStream using JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=145199). For more information about the down-level compatibility of these new data types, see  [Using Date and Time Data](http://go.microsoft.com/fwlink/?LinkId=145211)and  [FILESTREAM Support](http://go.microsoft.com/fwlink/?LinkId=145212) topics in SQL Server Books Online.  
  
 <sup>4</sup>Support for connections between the Microsoft JDBC Driver and Parallel Data Warehouse was first introduced in the Microsoft JDBC Driver 4.0 for SQL Server and Microsoft SQL Server 2008 R2 Parallel Data Warehouse Appliance Update 3.  
  
 <sup>5</sup>Microsoft SQL Server JDBC Driver version 3.0 can connect to SQL Server 2014 as a down-level client.  
  
## Java and JDBC Specification Support  
  
||||  
|-|-|-|  
|JDBC Driver Version|JRE Versions|JDBC API Version|  
|6.0|1.5, 1.6, 1.7, 1.8|3.0, 4.0, 4.1, 4.2|  
|4.2|1.5, 1.6, 1.7, 1.8|3.0, 4.0, 4.1, 4.2|  
|4.1|1.5, 1.6, 1.7|3.0, 4.0|  
|4.0|1.5, 1.6, 1.7|3.0, 4.0|  
|3.0|1.5, 1.6,|3.0, 4.0|  
|2.0|1.5, 1.6|3.0, 4.0|  
|1.2|1.4, 1.5, 1.6|3.0|  
|1.1|1.4|3.0|  
|1.0|1.4|3.0|  
|2000|1.4|3.0|  
  
## Supported Operating Systems  
 The Microsoft JDBC driver is designed to work on any operating system that supports the use of a Java Virtual Machine (JVM). Some commonly used platforms include Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Server 2008 R2, Windows Vista, Linux, Unix, AIX, MacOS, and others.  
  
 The JDBC product team tests our driver on Windows, Sun Solaris, SUSE Linux, and RedHat Linux.  Customer Support is available to customers on all platforms, however we may ask you to reproduce the issue on a platform such as Windows.  
  
## Application Server Support  
 The Microsoft JDBC Driver for SQL Server is tested with various application servers.  Consult your application server vendor for additional details on which driver version is compatible with their product.  
  
  