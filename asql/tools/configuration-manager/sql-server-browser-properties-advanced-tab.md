---
title: "SQL Server Browser Properties (Advanced Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ba79137a-cb72-4bf3-a650-e11d02cfce10
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server Browser Properties (Advanced Tab)
  The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Browser program runs as a service on the server. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Browser listens for incoming requests for [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] resources and provides information about [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instances installed on the computer.  
  
## Options  
 **Clustered**  
 Indicates if this service is installed as a resource of a clustered server.  
  
 **Customer Feedback Reporting**  
 Indicates whether Service Quality Monitoring has been enabled on this service. For more information on Customer Feedback Reporting, search Books Online for the topic, "Error and Usage Report Settings."  
  
 **Dump Directory**  
 The location where memory dumps are placed in case of an error.  
  
 **Error Reporting**  
 When set to **Yes**, the Dr. Watson program forwards information to either [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] or your error server if a serious failure occurs. For more information on Error Reporting, search Books Online for the topic, "Error and Usage Report Settings."  
  
 **Instance ID**  
 Indicates the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instance that used this [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Agent instance. The default instance is **MSSQL10_50.MSSQLSERVER**.  
  
## See Also  
 [SQL Server Browser Service](../../tools/configuration-manager/sql-server-browser-service.md)  
  
  