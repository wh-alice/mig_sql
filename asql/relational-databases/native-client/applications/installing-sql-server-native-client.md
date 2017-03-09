---
title: "Installing SQL Server Native Client | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-15"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "SQL Server Native Client, uninstalling"
  - "SQLNCLI, installing"
  - "SQLNCLI, uninstalling"
  - "Setup [SQL Server Native Client]"
  - "uninstalling SQL Server Native Client"
  - "data access [SQL Server Native Client], uninstalling SQL Server Native Client"
  - "installing SQL Server Native Client"
  - "SQL Server Native Client, installing"
  - "data access [SQL Server Native Client], installing SQL Server Native Client"
  - "removing SQL Server Native Client"
ms.assetid: c6abeab2-0052-49c9-be79-cfbc50bff5c1
caps.latest.revision: 44
manager: "jhubbard"
---
# Installing SQL Server Native Client
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Microsoft [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client 11.0 is installed when you install [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)]. 
 
 There is no SQL Server 2016 Native Client. For more information, see [SQL Server Native Client](../../../relational-databases/native-client/sql-server-native-client.md). 
 
You can also get sqlncli.msi from the SQL Server 2012 Feature Pack web page. To download the most recent version of the the SQL Server Native Client, go to [Microsoft® SQL Server® 2012 Feature Pack](http://www.microsoft.com/en-us/download/confirmation.aspx?id=29065). If a previous version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client earlier than SQL Server 2012 is also installed on the computer, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client 11.0 will be installed side-by-side with the earlier version.  
  
 The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client files (sqlncli11.dll, sqlnclir11.rll, and s11ch_sqlncli.chm) are installed to the following location:  
  
 `%SYSTEMROOT%\system32\`  
  
> [!NOTE]  
>  All appropriate registry settings for the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider and the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver are made as part of the installation process.  
  
 The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client header and library files (sqlncli.h and sqlncli11.lib) are installed in the following location:  
  
 `%PROGRAMFILES%\Microsoft SQL Server\110\SDK`  
  
 In addition to installing [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client as part of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation, there is also a redistributable installation program named sqlncli.msi, which can be found on the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation disk in the following location: `%CD%\Setup\`.  
  
 You can distribute [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client through sqlncli.msi. You might have to install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client when you deploy an application. One way to install multiple packages in what seems to the user to be a single installation is to use chainer and bootstrapper technology. For more information, see [Authoring a Custom Bootstrapper Package for Visual Studio 2005](http://go.microsoft.com/fwlink/?LinkId=115667) and [Adding Custom Prerequisites](http://go.microsoft.com/fwlink/?LinkId=115668).  
  
 The x64 and Itanium versions of sqlncli.msi also install the 32-bit version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client. If your application targets a platform other than the one it was developed on, you can download versions of sqlncli.msi for x64, Itanium, and x86 from the Microsoft Download Center.  
  
 When you invoke sqlncli.msi, only the client components are installed by default. The client components are are files that support running an application that was developed using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client. To also install the SDK components, specify `ADDLOCAL=All` on the command line. For example:  
  
 `msiexec /i sqlncli.msi ADDLOCAL=ALL APPGUID={0CC618CE-F36A-415E-84B4-FB1BFF6967E1}`  
  
## Silent Install  
 If you use the /passive, /qn, /qb, or /qr option with msiexec, you must also specify IACCEPTSQLNCLILICENSETERMS=YES, to explicitly indicate that you accept the terms of the end user license. This option must be specified in all capital letters.  
  
## Uninstalling SQL Server Native Client  
 Because applications such as [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] server and the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] tools depend on [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client, it is important not to uninstall [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client until all dependent applications are uninstalled. To provider users with a warning that your application depends on [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client, use the APPGUID install option in your MSI, as follows:  
  
 `msiexec /i sqlncli.msi APPGUID={0CC618CE-F36A-415E-84B4-FB1BFF6967E1}`  
  
 The value passed to APPGUID is your specific product code. A product code must be created when using Microsoft Installer to bundle your application setup program.  
  
## See Also  
 [Building Applications with SQL Server Native Client](../../../relational-databases/native-client/applications/installing-sql-server-native-client.md)   
 [Installation How-to Topics](../Topic/Installation%20How-to%20Topics.md)  
  
  