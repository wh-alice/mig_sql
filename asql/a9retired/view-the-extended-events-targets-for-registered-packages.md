---
title: "View the Extended Events Targets for Registered Packages | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
  - "xevents"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "targets [SQL Server extended events]"
  - "viewing event targets"
  - "extended events [SQL Server], viewing targets"
ms.assetid: 4985aa5f-ac99-49f6-852c-9d25916549e9
caps.latest.revision: 12
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# View the Extended Events Targets for Registered Packages
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Before you create a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Extended Events session, it is useful to determine what Extended Events targets are available. This task involves using Query Editor in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to perform the following procedure.  
  
 After the statements in this procedure finish, the **Results** tab of Query Editor displays the following two columns:  
  
-   package_name  
  
-   target_name  
  
## To view the Extended Events targets for registered packages using Query Editor  
  
-   In Query Editor, issue the following statements.  
  
    ```  
    USE msdb  
    SELECT p.name package_name, o.name target_name  
    FROM sys.dm_xe_objects o  
    JOIN sys.dm_xe_packages p  
         ON o.package_guid = p.guid  
    WHERE o.object_type = 'target'  
    ```  
  
## See Also  
 [SQL Server Extended Events Targets](../a9retired/sql-server-extended-events-targets.md)   
 [sys.dm_xe_objects &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-objects-transact-sql.md)   
 [sys.dm_xe_packages &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-packages-transact-sql.md)  
  
  