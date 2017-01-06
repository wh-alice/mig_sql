---
title: "Release Notes for the Microsoft ODBC Driver for SQL Server on Linux | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 905b595b-9aac-4e6a-8ed1-3a5ed96077d8
caps.latest.revision: 8
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
# Release Notes for the Microsoft ODBC Driver for SQL Server on Linux
![Download](../../../ssdt/media/download.png)[Download ODBC Driver](https://blogs.msdn.microsoft.com/sqlnativeclient/2016/10/20/odbc-driver-13-0-for-linux-released/)

Release Notes for Microsoft ODBC Driver for SQL Server on Linux.  
  
## What's New in the Microsoft ODBC Driver 13.0 for SQL Server on Linux  
With Microsoft ODBC Driver 13.0 for SQL Server, SQL Server 2014 and SQL Server 2016 are now also supported.  
  
**New distributions supported**:
Ubuntu is now supported, along with Red Hat and SUSE. Each platform has a platform relevant package (RPM or DEB) to ease installation and configuration.  See [Installing the Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/installing-the-microsoft-odbc-driver-for-sql-server-on-linux.md) for installation instructions.
  
**unixODBC Driver Manager 2.3.1 Support**: In addition to a newer driver manager, there is also a package for installing this dependency that eases installation and configuration.  

**Transparent Network IP Resolution**: TransparentNetwork IP Resolution is a revision of the existing MultiSubnet Failover feature that affects the connection sequence of the driver in the case where the first resolved IP of the hostname does not respond and there are multiple IPs associated with the hostname.

**TLS 1.2 Support**: The Microsoft ODBC Driver 13.0 for SQL Server on Linux now supports TLS 1.2 when secure communications with SQL Server are used.
  
## What's New in the Microsoft ODBC Driver 11 for SQL Server on Linux  
The ODBC driver on SUSE Linux (Preview) supports 64-bit SUSE Linux Enterprise 11 Service Pack 2. For more information, see [System Requirements](../../../connect/odbc/linux/system-requirements.md).  
  
The ODBC driver on Linux supports AlwaysOn Availability Groups. For more information, see [ODBC Driver on Linux Support for High Availability, Disaster Recovery](../../../connect/odbc/linux/odbc-driver-on-linux-support-for-high-availability--disaster-recovery.md).  
  
The ODBC driver on Linux supports connections to Microsoft Azure SQL Database. For more information, see [How to: Connect to Windows Azure SQL Database Using ODBC](http://msdn.microsoft.com/library/hh974312.aspx).  
  
The driver supports tracing of ODBC API call entry and exit. For more information, see [Data Access Tracing with the ODBC Driver on Linux](../../../connect/odbc/linux/data-access-tracing-with-the-odbc-driver-on-linux.md).  
  
The **-l** option has been added to bcp. For more information, see [Connecting with bcp](../../../connect/odbc/linux/connecting-with-bcp.md).  
  
