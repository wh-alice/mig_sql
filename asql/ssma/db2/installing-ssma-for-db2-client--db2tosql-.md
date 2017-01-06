---
title: "Installing SSMA for DB2 Client (DB2ToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: 3ae2a470-6afd-4512-b6d1-fcbe6afe88ad
caps.latest.revision: 8
ms.author: "lonnyb"
manager: "lonnyb"
---
# Installing SSMA for DB2 Client (DB2ToSQL)
The SSMA client consists of the program files that perform the following tasks:  
  
-   Connect to an DB2 database.  
  
-   Connect to an instance of SQL Server.  
  
-   Convert DB2 database objects to SQL Server syntax.  
  
-   Load the objects into SQL Server.  
  
-   Migrate data to SQL Server.  
  
This topic provides the installation prerequisites and instructions for installing SSMA.  
  
## Prerequisites  
SSMA is designed to work with DB2 on z/OS version 9.0 and 10.0 or DB2 on LUW version 9.8 and 10.1 or later versions and SQL Server 2012 and SQL Server 2014.  
  
Before you install SSMA, make sure that the computer meets the following requirements:  
  
-   Windows 7 or later versions, or Windows Server 2008 or later versions.  
  
-   Microsoft Windows Installer 3.1 or a later version.  
  
-   The Microsoft .NET Framework version 4.0 or a later version. The .NET Framework version 4.0 is available on the SQL Server product media. You can also obtain it from the [.NET Framework Developer Center](http://go.microsoft.com/fwlink/?LinkId=48882).  
  
-   Microsoft OLEDB Provider for DB2 version 5 or a later version, and connectivity to the DB2 databases that you want to migrate.  
  
-   Access to and sufficient permissions on the computer that hosts the target instance of SQL Server or Azure SQL DB where you will be migrating database objects and data. For more information, see [Connecting to SQL Server &#40;DB2eToSQL&#41;](../../ssma/db2/connecting-to-sql-server--db2etosql-.md).  
  
-   4 GB RAM recommended.  
  
## Microsoft OLEDB Provider for DB2  
To download the OLEDB provider for DB2 version 5.0, please go to [Microsoft® SQL Server® 2014 Feature Pack](http://www.microsoft.com/download/details.aspx?id=42295).  
  
SSMA is a Web download. To download the latest version, see the [SQL Server Migration Assistant download page](http://aka.ms/ssmafordb2).  
  
After you download the latest version, you must extract the installation files from before you can install SSMA.  
  
**To install the SSMA client**  
  
1.  Double-click SSMA for DB2 *n*.Install.exe, where *n* is the build number.  
  
2.  On the Welcome page, click **Next**.  
  
    If you do not have the prerequisites installed, a message will appear that indicates that you must first install required components. Make sure that you have installed all prerequisites, and then run the installation program again.  
  
3.  Read the End User License Agreement. If you agree, select **I accept the terms in the license agreement**, and then click **Next**.  
  
4.  On the Choose Setup Type page, click **Typical**.  
  
5.  Click **Install**.  
  
> [!IMPORTANT]  
> 1.  Please uninstall all prior versions of SSMA for DB2 before installing the new version.  
  
The default installation location is C:\Program Files\Microsoft SQL Server Migration Assistant for DB2.  
  
## See Also  
[Installing SSMA Components on SQL Server &#40;DB2ToSQL&#41;](../../ssma/db2/installing-ssma-components-on-sql-server--db2tosql-.md)  
[Migrating DB2 Databases to SQL Server &#40;DB2ToSQL&#41;](../../ssma/db2/migrating-db2-databases-to-sql-server--db2tosql-.md)  
  
