---
title: "Install and Uninstall OData Source Component | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 0a3ae788-e8c8-4a4d-bb15-34c673abcd17
caps.latest.revision: 7
ms.author: "spelluru"
manager: "jhubbard"
robots: noindex,nofollow
---
# Install and Uninstall OData Source Component
  This topic provides instructions for installing or removing OData Source Component on your computer.  
  
## Installation  
 The OData Source Component requires following prerequisite components to be installed on your computer.  
  
-   SQL Server Data Tools (to design packages)  
  
-   SQL Server Integration Services (to run packages outside Visual Studio)  
  
 To install the OData Source Component, download [SQL Server 2014 Feature Pack](http://go.microsoft.com/fwlink/p/?LinkId=391999) and run one of the following MSI files.  
  
-   ODataSourceForSQLServer2014-amd64.msi for 64bit platforms  
  
-   ODataSourceForSQLServer2014-x86.msi for 32bit platforms  
  
> [!IMPORTANT]  
>  The 64bit installer will install both 32bit and 64bit versions of the OData Source Component. You only need to run the 32bit installer if you are using a 32bit OS.  
  
## Uninstallation  
 The OData Source component can be uninstalled from the **Programs and Features** menu. Find the **Microsoft SQL Server SSIS OData Source Component (x64)** entry and click **Uninstall**.  
  
  