---
title: "Considerations for Running Utility and non-Utility Collection Sets on the Same Instance of SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ca7ee9b3-ef9a-4ba4-83d0-9ee9f80dab27
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# Considerations for Running Utility and non-Utility Collection Sets on the Same Instance of SQL Server
  The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility collection set is supported side-by-side with non- [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility collection sets. That is, a managed instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] can be monitored by other collection sets while it is a member of a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility. However, you must disable non- [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility data collection functionality while the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is being enrolled into the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility.  
  
 After the instance is enrolled with the UCP, you can restart non- [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility collection sets. Note, however, that all collection sets on the managed instance will upload their data to the utility management data warehouse (UMDW); the UMDW file name is sysutility_mdw.  
  
 To run [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility collection sets side-by-side with non- [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility collection sets, consider the following points:  
  
-   Side-by-side collection sets are supported.  
  
-   You must disable existing data collectors while enrolling instances into the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility.  
  
-   To pass validation requirements, you must run the following stored procedures on the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] before you create a UCP, and on an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] before you enroll it into the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility:  
  
    ```  
    exec msdb.dbo.sp_syscollector_set_warehouse_database_name NULL  
    exec msdb.dbo.sp_syscollector_set_warehouse_instance_name NULL  
    ```  
  
     If you do not run these stored procedures before you launch the Create UCP Wizard or Add Managed Instance Wizard, the operation will fail.  
  
-   You must use the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Utility UMDW (sysutility_mdw) for all collection sets on a managed instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
## See Also  
 [SQL Server Utility Features and Tasks](../../relational-databases/manage/sql-server-utility-features-and-tasks.md)   
 [Configure Your Utility Control Point Data Warehouse &#40;SQL Server Utility&#41;](../../relational-databases/manage/configure-your-utility-control-point-data-warehouse-sql-server-utility.md)  
  
  