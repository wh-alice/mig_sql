---
title: "System Requirements for SQL Server Native Client | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "system requirements [SQL Server Native Client]"
  - "data access [SQL Server Native Client], system requirements"
  - "SQL Server Native Client, system requirements"
  - "SQLNCLI, system requirements"
ms.assetid: 1c8e2f8a-a440-44da-8e3a-af632d34c52c
caps.latest.revision: 60
ms.author: "jhubbard"
manager: "jhubbard"
---
# System Requirements for SQL Server Native Client
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  To use data access features of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] such as MARS, you must have the following software installed:  
  
-   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client on your client.  
  
-   An instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] on your server.  
  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client requires Windows Installer 3.0. Windows Installer 3.0 is already installed on [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows operating systems. For all other platforms you need to explicitly install it. For more information, see [Windows Installer 3.0 Redistributable](http://go.microsoft.com/fwlink/?LinkId=46459).  
  
> [!NOTE]  
>  Make sure you log on with administrator privileges before installing this software.  
  
## Operating System Requirements  
 For a list of operating systems that support [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client, see [Support Policies for SQL Server Native Client](../../relational-databases/native-client/applications/support-policies-for-sql-server-native-client.md).  
  
## SQL Server Requirements  
 To use [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client to access data in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] databases, you must have an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] installed.  
  
 [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] supports connections from all versions of MDAC, Windows Data Access Components, and all versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client. When an older client version connects to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], server data types not known to the client are mapped to types that are compatible with the client version. For more information, see Data Type Compatibility for Client Versions, later in this topic.  
  
## Cross-Language Requirements  
 The English-language version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client is supported on all localized versions of supported operating systems. Localized versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client are supported on localized operating systems that are the same language as the localized [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client version. Localized versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client are also supported on English-language versions of supported operating systems as long as the matching language settings are installed.  
  
 For upgrades:  
  
-   English-language versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client can be upgraded to any localized version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client.  
  
-   Localized versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client can be upgraded to localized versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client of the same language.  
  
-   Localized version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client can be upgraded to the English-language version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client.  
  
-   Localized versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client cannot be upgraded to localized [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client versions of a different localized language.  
  
## Data Type Compatibility for Client Versions  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client map new data types to older datatypes that are compatible with down-level clients, as shown in the table below.  
  
 OLE DB and ADO applications can use the **DataTypeCompatibility** connection string keyword with [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client to operate with older data types. When **DataTypeCompatibility=80**, OLE DB clients will connect using the [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] tabular data stream (TDS) version, rather than the  TDS version. This means that for [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] and later data types, down-level conversion will be performed by the server, rather than by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client. It also means that the features available on the connection will be limited to the [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] feature set. Attempts to use new datatypes or features are detected as early as possible on API calls and errors are returned to the calling application, rather than attempting to pass invalid requests to the server.  
  
 There is no **DataTypeCompatibility** control for ODBC.  
  
 IDBInfo::GetKeywords will always return a keyword list that corresponds to the server version on the connection and is not affected by **DataTypeCompatibility**.  
  
|Data type|SQL Server Native Client<br /><br /> SQL Server 2005|SQL Server Native Client 11.0<br /><br /> [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)]|Windows Data Access Components, MDAC, and<br /><br /> SQL Server Native Client OLE DB applications with DataTypeCompatibility=80|  
|---------------|--------------------------------------------------|-------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|  
|CLR UDT (\<= 8Kb)|udt|Udt|Varbinary|  
|varbinary(max)|varbinary|varbinary|Image|  
|varchar(max)|varchar|varchar|Text|  
|nvarchar(max)|nvarchar|nvarchar|Ntext|  
|xml|xml|xml|Ntext|  
|CLR UDT (> 8Kb)|udt|varbinary|Image|  
|date|date|varchar|Varchar|  
|datetime2|datetime2|varchar|Varchar|  
|datetimeoffset|datetimeoffset|varchar|Varchar|  
|time|time|varchar|Varchar|  
  
## See Also  
 [SQL Server Native Client Programming](../../relational-databases/native-client/sql-server-native-client-programming.md)   
 [Installing SQL Server Native Client](../../relational-databases/native-client/applications/installing-sql-server-native-client.md)  
  
  