---
title: "System Requirements | Microsoft Docs"
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
  - "prerequisites"
  - "system requirements"
  - "requirements"
ms.assetid: f03b7fdd-0e9d-4e74-958d-e8c87e027348
caps.latest.revision: 31
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
# System Requirements
[!INCLUDE[Driver_ODBC_Download](../../../connect/odbc/linux/includes)]

This topic lists the requirements to use the Microsoft ODBC Driver 13 and 11 for SQL Server on Linux.  
  
## System Requirements for Microsoft ODBC Driver 13 for SQL Server  
  
The installation packages for the Microsoft ODBC Driver 13.0 for SQL Server on Linux resolves the driver's dependencies automatically when installed using the package management system of your distribution, as described on [Installing the Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/installing-the-microsoft-odbc-driver-for-sql-server-on-linux.md).
  
## System Requirements for Microsoft ODBC Driver 11 for SQL Server  
  
-   64-bit UnixODBC 2.3.0 Driver Manager, built for 64-bit SQLLEN/SQLULEN. Later versions of the 64-bit UnixODBC Driver Manager are not supported with the ODBC driver on Linux. See [Installing the Driver Manager](../../../connect/odbc/linux/installing-the-driver-manager.md) for more information.  
  
-   ODBC driver for **Red Hat Enterprise Linux 5 (64-bit)** requires the following packages, and can be downloaded here: [Microsoft ODBC Driver 11 for SQL Server - Red Hat Linux](http://go.microsoft.com/fwlink/?LinkId=267321)  
    -   glibc  
    -   libgcc  
    -   libstdc++  
    -   e2fsprogs-libs  
    -   krb5-libs  
    -   openssl  
  
-   ODBC driver for  **Red Hat Enterprise Linux 6 (64-bit)** requires the following packages, and can be downloaded here: [Microsoft ODBC Driver 11 for SQL Server - Red Hat Linux](http://go.microsoft.com/fwlink/?LinkId=267321)  
    -   glibc  
    -   libgcc  
    -   libstdc++  
    -   libuuid  
    -   krb5-libs  
    -   openssl  
  
-   ODBC driver for **SUSE Linux Enterprise 11 Service Pack 2 (64-bit)** requires the following packages, and can be downloaded here: [Microsoft ODBC Driver 11 Preview for SQL Server - SUSE Linux](http://go.microsoft.com/fwlink/?LinkId=264916)  
    -   glibc  
    -   libstdc++46  
    -   libgcc46  
    -   libuuid1  
    -   krb5  
    -   libopenssl0_9_8  
  
## See Also  
[Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/microsoft-odbc-driver-for-sql-server-on-linux.md)  
  
