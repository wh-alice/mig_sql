---
title: "Create CLR Triggers | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-dml"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "CRL triggers"
  - "DML triggers, CLR triggers"
  - "DDL triggers, CLR triggers"
ms.assetid: 31f41703-134d-49fc-9850-76c297351c2c
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
---
# Create CLR Triggers
  You can create a database object inside [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that is programmed in an assembly created in the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] common language runtime (CLR). Database objects that can leverage the rich programming model provided by the CLR include DML triggers, DDL triggers, stored procedures, functions, aggregate functions, and types.  
  
 Creating a CLR trigger (DML or DDL) in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] involves the following steps:  
  
-   Define the trigger as a class in a .NET Framework-supported language. For more information about how to program triggers in the CLR, see [CLR Triggers](../Topic/CLR%20Triggers.md). Then, compile the class to build an assembly in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] using the appropriate language compiler.  
  
-   Register the assembly in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using the CREATE ASSEMBLY statement. For more information about assemblies in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Assemblies &#40;Database Engine&#41;](../../relational-databases/clr-integration/assemblies-database-engine.md).  
  
-   Create the trigger that references the registered assembly.  
  
> [!NOTE]  
>  Deploying a SQL Server Project in [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] registers an assembly in the database that was specified for the project. Deploying the project also creates CLR triggers in the database for all methods annotated with the **SqlTrigger** attribute. For more information, see [Deploying CLR Database Objects](../../relational-databases/clr-integration/deploying-clr-database-objects.md).  
  
> [!NOTE]  
>  The ability of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to execute CLR code is off by default. You can create, alter, and drop database objects that reference managed code modules, but these references will not execute in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] unless the [clr enabled Option](../../database-engine/configure/windows/clr-enabled-server-configuration-option.md) is enabled using [sp_configure (Transact-SQL)](../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md).  
  
 **To create, modify, or drop an assembly**  
  
-   [CREATE ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/create-assembly-transact-sql.md)  
  
-   [ALTER ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-assembly-transact-sql.md)  
  
-   [DROP ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-assembly-transact-sql.md)  
  
 **To create a CLR trigger**  
  
-   [CREATE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/create-trigger-transact-sql.md)  
  
## See Also  
 [DML Triggers](../../relational-databases/triggers/dml-triggers.md)   
 [Common Language Runtime &#40;CLR&#41; Integration Programming Concepts](../../relational-databases/clr-integration/common-language-runtime-clr-integration-programming-concepts.md)   
 [Data Access from CLR Database Objects](../../relational-databases/clr-integration/data-access/data-access-from-clr-database-objects.md)  
  
  