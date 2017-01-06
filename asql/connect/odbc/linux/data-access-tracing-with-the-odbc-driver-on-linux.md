---
title: "Data Access Tracing with the ODBC Driver on Linux | Microsoft Docs"
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
  - "data access tracing"
  - "tracing"
ms.assetid: 3149173a-588e-47a0-9f50-edb8e9adf5e8
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
# Data Access Tracing with the ODBC Driver on Linux
[!INCLUDE[Driver_ODBC_Download](../../../connect/odbc/linux/includes)]

The ODBC Driver for SQL Server on Linux supports tracing of ODBC API call entry and exit.  
  
To trace your application behavior, first add the following line to the odbcinst.ini file:  
  
```  
Trace=Yes  
```  
  
Then start your application with strace. For example:  
  
```  
strace -t -f -o trace_out.txt executable  
```  
  
After you finish tracing your application, remove `Trace=Yes` from the odbcinst.ini file to avoid the performance penalty of tracing.  
  
Tracing applies to all applications that use the driver in odbcinst.ini. To not trace all applications (for example, to avoid disclosing sensitive per-user information), you can trace an individual application instance by providing it the location of a private odbcinst.ini, by using the ODBCSYSINI environment variable. For example:  
  
```  
$ ODBCSYSINI=/home/myappuser myapp  
```  
  
In this case, you can add **Trace=Yes** to the [ODBC Driver 11 for SQL Server] section of /home/myappuser/odbcinst.ini.  
  
## Determining Which ODBC.ini File the Driver is Using  
The Linux ODBC Driver does not know which ODBC INI is in use, or the path to the ODBC INI file. So, the driver cannot trace the ODBC INI file.  
  
Information about which ODBC.ini file is in use is available, however, from the unixODBC tools odbc_config and odbcinst, and from the unixODBC Driver Manager documentation.  
  
For example, the following command prints (among other information) the location of system and user ODBC INI files that may contain, respectively, system and user DSNs:  
  
```  
$ odbcinst -j  
unixODBC 2.3.0  
DRIVERS............: /etc/odbcinst.ini  
SYSTEM DATA SOURCES: /etc/odbc.ini  
FILE DATA SOURCES..: /etc/ODBCDataSources  
USER DATA SOURCES..: /home/odbcuser/.odbc.ini  
SQLULEN Size.......: 8  
SQLLEN Size........: 8  
SQLSETPOSIROW Size.: 8  
```  
  
The [unixODBC documentation](http://www.unixodbc.org/doc/UserManual/) explains how the user vs. system DSN decision is made. Specifically:  
  
User DSN. These are your personal Data Sources. You are able to add new ones, remove existing ones, and configure existing ones. User DSN information is stored in a secret location where only you can access them. Keeping your User DSN's separate from other User DSN's allows you a great deal of flexibility and control over creating and working with data sources which are only important to you.  
  
System DSN. These are created by the System Administrator. They act very much like the User DSN's but with three important differences:  
  
-   Only the System Administrator can add, remove, and configure System DSN's.  
  
-   System DSN's will be used only if the DSN does not exist as a User DSN. In other words, your User DSN has precedence over the System DSN.  
  
-   Everyone shares the same list of System DSN's.  
  
