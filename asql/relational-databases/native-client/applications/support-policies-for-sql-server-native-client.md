---
title: "Support Policies for SQL Server Native Client | Microsoft Docs"
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 09c80cf4-23e6-4027-a24f-cdb9c87af811
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
---
# Support Policies for SQL Server Native Client
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  This topic discusses how various data-access components can be used with [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client.  
  
## Server Support  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client 11.0 supports connections to, [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)], [!INCLUDE[ssKilimanjaro](../../../a9notintoc/includes/sskilimanjaro-md.md)], [!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)], [!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)], and [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].  
  
## Supported Operating System Versions  
 The following table lists which operating systems support [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client.  
  
|SQL Server Native Client version|Supported operating systems|  
|--------------------------------------|---------------------------------|  
|SQL Server Native Client (SQL Server 2005)|Microsoft Windows 2000 Service Pack 4 or later<br /><br /> Microsoft Windows Server 2003 or later<br /><br /> Microsoft Windows XP Service Pack 1 or later<br /><br /> Microsoft Windows Vista (requires [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Service Pack 2, or later)<br /><br /> Microsoft Windows Server 2008 R2 (requires [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Service Pack 2, or later)|  
|SQL Server Native Client 10.0 ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)])|Microsoft Windows Server 2003 Service Pack 2, or later<br /><br /> Microsoft Windows XP Service Pack 2, or later<br /><br /> Microsoft Windows Vista<br /><br /> Microsoft Windows Server 2008 R2|  
|SQL Server Native Client 10.5 ([!INCLUDE[ssKilimanjaro](../../../a9notintoc/includes/sskilimanjaro-md.md)])|Microsoft Windows Server 2003 Service Pack 2, or later<br /><br /> Microsoft Windows XP Service Pack 2 or later<br /><br /> Microsoft Windows Vista<br /><br /> Microsoft Windows Server 2008 R2<br /><br /> Microsoft Windows 7|  
|SQL Server Native Client 11.0 ([!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] and [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)])|Microsoft Windows Vista<br /><br /> Microsoft Windows Server 2008 R2<br /><br /> Microsoft Windows 7<br /><br /> Microsoft Windows 8<br /><br /> Microsoft Windows Server 2012|  
  
## ADO Support Policies  
 ADO applications can use the SQLOLEDB OLE DB provider that is included with Windows if they do not require any of the features of [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)] or later.  
  
 ADO applications can use the version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client included in [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)]. ADO applications can also use [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client 11.0 (included in [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)]), but if they do so they must specify `DataTypeCompatibility=80` in the connection strings. Only features from [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)] are available when `DataTypeCompatibility=80` is present in the connection strings.  
  
## BCP Support Policies  
 Beginning in [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)], bcp.exe supports data files that are no more than three [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] versions older than the version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] in which bcp.exe shipped.  
  
## ODBC Support Policies  
 Applications should use the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ODBC driver included with the Windows operating system. You can use the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver if the application is certified it for use with a specific version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client.  
  
## OLE DB Support Policies  
 Applications should use the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] OLE DB provider included with the Windows operating system. You can use the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider if the application is certified for use with a specific version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client.  
  
 OLE DB applications that have not been certified for use with [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client can use [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native client if they specify `DataTypeCompatibility=80` in their connection strings.  
  
 OLE DB applications that use OLE DB Service Components can only use [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native client if they specify `DataTypeCompatibility=80` in their connection strings. However, no features added after [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)] will be available in this case.  
  
## See Also  
 [Building Applications with SQL Server Native Client](../../../relational-databases/native-client/applications/building-applications-with-sql-server-native-client.md)  
  
  