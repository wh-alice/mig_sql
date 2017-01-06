---
title: "Installing SSMA for Oracle Client (OracleToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Licensing SSMA"
ms.assetid: d5d4903d-e296-4bbf-8780-63674c4d62d5
caps.latest.revision: 19
ms.author: "v-pelars"
manager: "v-thobro"
---
# Installing SSMA for Oracle Client (OracleToSQL)
The SSMA client consists of the program files that perform the following tasks:  
  
-   Connect to an Oracle database.  
  
-   Connect to an instance of SQL Server.  
  
-   Convert Oracle database objects to SQL Server syntax.  
  
-   Load the objects into SQL Server.  
  
-   Migrate data to SQL Server.  
  
This topic provides the installation prerequisites and instructions for installing SSMA.  
  
## Prerequisites  
SSMA is designed to work with Oracle 9 or later versions and all editions of SQL Server.  
  
Before you install SSMA, make sure that the computer meets the following requirements:  
  
-   Windows 7 or later versions, or Windows Server 2008 or later versions.  
  
-   Microsoft Windows Installer 3.1 or a later version.  
  
-   The Microsoft .NET Framework version 4.0 or a later version. The .NET Framework version 4.0 is available on the SQL Server product media. You can also obtain it from the [.NET Framework Developer Center](http://go.microsoft.com/fwlink/?LinkId=48882).  
  
-   Oracle Client 9.0 or a later version, and connectivity to the Oracle databases that you want to migrate. The Oracle client version must be the same version as, or a later version than, the Oracle database version.  
  
    You can install the Oracle Client from the Oracle product media or from the Oracle Web site. For information about connectivity, see [Connecting to Oracle Database &#40;OracleToSQL&#41;](../../ssma/oracle/connecting-to-oracle-database--oracletosql-.md).  
  
-   Access to and sufficient permissions on the computer that hosts the target instance of SQL Server or Azure SQL DB where you will be migrating database objects and data. For more information, see [Connecting to SQL Server &#40;OracleToSQL&#41;](../../ssma/oracle/connecting-to-sql-server--oracletosql-.md).  
  
-   4 GB RAM recommended.  
  
## Installing the SSMA for Oracle Client  
SSMA is a Web download. To download the latest version, see the [SQL Server Migration Assistant download page](http://aka.ms/ssmafororacle).  
  
After you download the latest version, you must extract the installation files from before you can install SSMA.  
  
**To install the SSMA client**  
  
1.  Double-click SSMA for Oracle *n*.Install.exe, where *n* is the build number.  
  
2.  On the Welcome page, click **Next**.  
  
    If you do not have the prerequisites installed, a message will appear that indicates that you must first install required components. Make sure that you have installed all prerequisites, and then run the installation program again.  
  
3.  Read the End User License Agreement. If you agree, select **I accept the terms in the license agreement**, and then click **Next**.  
  
4.  On the Choose Setup Type page, click **Typical**.  
  
5.  Click **Install**.  
  
> [!IMPORTANT]  
> 1.  Please uninstall all prior versions of SSMA for Oracle before installing the new version.  
  
The default installation location is C:\Program Files\Microsoft SQL Server Migration Assistant for Oracle.  
  
In addition to the SSMA program files, you must also install the SSMA for Oracle extension pack on SQL Server. For more information, see [Installing SSMA Components on SQL Server &#40;OracleToSQL&#41;](../../ssma/oracle/installing-ssma-components-on-sql-server--oracletosql-.md).  
  
## See Also  
[Installing SSMA Components on SQL Server &#40;OracleToSQL&#41;](../../ssma/oracle/installing-ssma-components-on-sql-server--oracletosql-.md)  
[Migrating Oracle Databases to SQL Server &#40;OracleToSQL&#41;](../../ssma/oracle/migrating-oracle-databases-to-sql-server--oracletosql-.md)  
  
