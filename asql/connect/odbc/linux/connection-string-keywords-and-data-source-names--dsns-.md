---
title: "Connection String Keywords and Data Source Names (DSNs) | Microsoft Docs"
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
  - "data source names"
  - "connection string keywords"
  - "DSNs"
ms.assetid: f95cdbce-e7c2-4e56-a9f7-8fa3a920a125
caps.latest.revision: 41
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
# Connection String Keywords and Data Source Names (DSNs)
![Download](../../../ssdt/media/download.png)[Download ODBC Driver](https://blogs.msdn.microsoft.com/sqlnativeclient/2016/10/20/odbc-driver-13-0-for-linux-released/)

This topic discusses how you can create a connection to a SQL Server database.  
  
## Connection Properties  
For this release of the Microsoft ODBC Driver for SQL Server on Linux, you can use the following connection keywords:  
  
||||||  
|-|-|-|-|-|  
|Addr|Address|ApplicationIntent|AutoTranslate|Database|  
|Driver|DSN|Encrypt|FileDSN|MARS_Connection|  
|MultiSubnetFailover|PWD|Server|Trusted_Connection|TrustServerCertificate|  
|UID|WSID||||  
  
> [!IMPORTANT]  
> When connecting to a database that uses database mirroring (has a failover partner), do not specify the database name in the connection string. Instead, send a **use***database_name* command to connect to the database before executing your queries.  
  
For more information about these keywords, see the ODBC section of [Using Connection String Keywords with SQL Server Native Client](http://go.microsoft.com/fwlink/?LinkID=126696).  
  
The value passed to the **Driver** keyword can either be:  
  
-   The name you used when you installed the driver. Or,  
  
-   The path to the driver, which was specified in the template .ini file used to install the driver.  
  
To create a DSN, create (if necessary) and edit the file **~/.odbc.ini** (odbc.ini in your home directory). The following is a sample file that shows the required entries for a DSN:  
  
```  
[MSSQLTest]  
Driver = ODBC Driver 11 for SQL Server  
Server = [protocol:]server[,port]  
#   
# Note:  
# Port is not a valid keyword in the ~/.odbc.ini file  
# for the Microsoft ODBC driver on Linux  
#  
```  
  
You can optionally specify the protocol and port to connect to the server. For example, **Server = tcp:***servername***,12345**.  
  
To connect to a named instance on a static port, use **Server =** *servername***,***port_number*. Connecting to dynamic port is not supported.  
  
Optionally, you can add the DSN information to a template file and execute the following command: **odbcinst -i -s -f** *template_file*  
  
You can verify that your driver is working by using isql to test the connection. Or, you can use this command: **bcp master.INFORMATION_SCHEMA.TABLES out OutFile.dat -S <server> -U <name> -P <password>**  
  
## Using Secure Sockets Layer (SSL)  
You can use Secure Sockets Layer (SSL) to encrypt connections to SQL Server. SSL protects SQL Server user names and passwords over the network. SSL also verifies the identity of the server to protect against man-in-the-middle (MITM) attacks.  
  
Enabling encryption increases security at the expense of performance.  
  
For more information, see [Encrypting Connections to SQL Server](http://go.microsoft.com/fwlink/?LinkId=220900).  
  
Regardless of the settings for **Encrypt** and **TrustServerCertificate**, the server login credentials (user name and password) are always encrypted. The following table shows the effect of the **Encrypt** and **TrustServerCertificate** settings.  
  
||**TrustServerCertificate=false**|**TrustServerCertificate=true**|  
|-|-------------------------------------|------------------------------------|  
|**Encrypt=no**|Server certificate is not checked.<br /><br />Data sent between client and server is not encrypted.|Server certificate is not checked.<br /><br />Data sent between client and server is not encrypted.|  
|**Encrypt=yes**|Server certificate is checked.<br /><br />Data sent between client and server is encrypted.<br /><br />The name (or IP address) in a Subject Common Name (CN) or Subject Alternative Name (SAN) in a SQL Server SSL certificate should exactly match the server name (or IP address) specified in the connection string.|Server certificate is not checked.<br /><br />Data sent between client and server is encrypted.|  
  
By default, encrypted connections always verify the server’s certificate. However, if you connect to a server that has a self-signed certificate, also add the TrustServerCertificateOption:  
  
```  
Driver='ODBC Driver 11 for SQL Server';Server=ServerNameHere;Encrypt=YES;TrustServerCertificate=YES  
```  
  
SSL uses the OpenSSL library. The following table shows the minimum supported versions of OpenSSL and the default Certificate Trust Store locations for each platform:  
  
|Platform|Minimum OpenSSL Version|Default Certificate Trust Store Location|  
|------------|---------------------------|--------------------------------------------|  
|Red Hat Enterprise Linux 5|0.9.8e|/etc/pki/tls/cert.pem|  
|Red Hat Enterprise Linux 6|1.0.0-10|/etc/pki/tls/cert.pem|  
|SuSE Linux Enterprise 11 Service Pack 2|0.9.8j|/etc/ssl/certs|  
  
You can use **SQLDriverConnect** to specify encryption in the connection string.  
  
## See Also  
[Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/microsoft-odbc-driver-for-sql-server-on-linux.md)  
[Installing the Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/installing-the-microsoft-odbc-driver-for-sql-server-on-linux.md)  
  
