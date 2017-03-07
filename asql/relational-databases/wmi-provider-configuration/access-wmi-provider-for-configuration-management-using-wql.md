---
title: "Access WMI Provider for Configuration Management using WQL | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "query language [WMI]"
  - "WMI Query Language [WMI]"
  - "WQL [WMI]"
  - "WMI Provider for Configuration Management, WQL"
ms.assetid: 26499530-d93b-452b-bbe4-217ef1d11e68
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# Access WMI Provider for Configuration Management using WQL
  This section describes how to execute [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows Management Instrumentation Query Language (WQL) statements against the WMI Provider for Computer Management.  
  
 The example uses a WQL editor, WBEMtest.exe, to run WQL queries against the WMI Provider to enumerate [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services, network protocols, and aliases.  
  
### Querying services using WBEMtest  
  
1.  From the **Start** menu, click **Run**, and then enter **WBEMtest**.  
  
2.  The WBEMtest.exe dialog appears. Click **Connect**.  
  
3.  In the first text field, type the WMI Provider for Computer Management namespace: root\Microsoft\SqlServer\ComputerManagement11. Click **Connect**.  
  
4.  Click **Query**. Type a query that returns the current services running on the local computer: **SELECT \* FROM SqlService.** Click **Apply**.  
  
5.  Further refine the query by adding **WHERE ServiceName = "MSSQLSERVER"**.  
  
  