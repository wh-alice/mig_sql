---
title: "Managing, Securing,and Governing R Solutions (Tutorial: SQL Server R Services) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-10-25"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f518eb77-e752-4fdf-87b1-19271089aedb
caps.latest.revision: 6
ms.author: "jeannt"
manager: "erikre"
---
# Managing, Securing,and Governing R Solutions (Tutorial: SQL Server R Services)
Managing R solutions has been complex because they have traditionally existed outside the framework of enterprise data. To the database administrator, such out-of-band solutions pose a problem for governance and security because often data usage cannot be tracked and resources cannot be planned.  
  
When deciding whether to support R solutions, database administrators typically have the following requirements.  
  
-   **Security.** The primary responsibility of the DBA is to ensure that the database engine can function and that adequate security surrounds new services. The DBA needs control over the permissions to execute R scripts, as well as the ability to audit R job execution and data usage.  
  
-   **Reliability.** Enterprise databases support a wide variety of business applications. The DBA must ensure that R sessions are isolated from other services and that they cannot affect other operations.  
  
-   **Resource governance.** The DBA needs to control the amount of resources allocated to the R runtime and balance the needs of R against the overall server performance.  
  
-   **Use familiar tools.** The database administrator works with DMVs, Extended Events and Windows events, as well as application logs, to monitor and analyze performance and issues. The DBA prefers to use familiar, powerful tools such as Visual Studio and [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
## Overview  
  
> [!NOTE]  
> This section is under construction. In [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)], [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] is in early preview.  
  
This tutorial has the following sections.  
  
### Requirements  
