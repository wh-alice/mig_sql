---
title: "Assemblies (Database Engine) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "assemblies [CLR integration]"
  - "assemblies [CLR integration], about assemblies"
  - "managed code [SQL Server], assemblies"
ms.assetid: 4b146437-3061-47f6-9e8c-26eeea10b54e
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# Assemblies (Database Engine)
  The topics in this section provide information to help you understand, design, and implement assemblies.  
  
 Assemblies are DLL files used in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to deploy functions, stored procedures, triggers, user-defined aggregates, and user-defined types that are written in one of the managed code languages hosted by the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] common language runtime (CLR), instead of in [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 An assembly in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is an object that references a managed application module (.dll file) that was created in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] common language runtime. An assembly contains class metadata and managed code. Uploading an assembly to an instance of SQL Server is the first step toward creating any of the following database objects:  
  
-   CLR functions. For more information, see [Create CLR Functions](../../relational-databases/user-defined-functions/create-clr-functions.md).  
  
-   CLR stored procedures. For more information, see [CLR Stored Procedures](http://msdn.microsoft.com/library/bbdd51b2-a9b4-4916-ba6f-7957ac6c3f33).  
  
-   CLR triggers. For more information, see [Create CLR Triggers](../../relational-databases/triggers/create-clr-triggers.md).  
  
-   User-defined aggregate functions. For more information, see [Create User-defined Aggregates](../../relational-databases/user-defined-functions/create-user-defined-aggregates.md).  
  
-   User-defined types. For more information, see [Using User-Defined Types](../../relational-databases/native-client/features/using-user-defined-types.md).  
  
 Assemblies perform the following functions in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
-   Contain the managed code that runs the functionality of one or more of the CLR database objects previously listed.  
  
-   Contain metadata that includes the version number and culture of the assembly, an optional public key that uniquely identifies the list of classes of the assembly, the methods that are defined in the assembly, and the processor architecture of the assembly.  
  
-   Manage the degree to which managed code can access outside resources by regulating code access permissions.  
  
-   Contain metadata about dependencies on other assemblies that are referenced by the assembly.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Designing Assemblies](../../relational-databases/clr-integration/assemblies-designing.md)|Explains what you have to consider before creating an assembly. This includes packaging assemblies, code access permissions, and other restrictions.|  
|[Implementing Assemblies](../../relational-databases/clr-integration/assemblies-implementing.md)|Explains how to create and drop assemblies, how and when to modify assemblies, and how to retrieve metadata about assemblies.|  
|[Getting Information About Assemblies](../../relational-databases/clr-integration/assemblies-getting-information.md)|Lists the catalog views and functions that can be queried for metadata about assemblies.|  
  
## See Also  
 [Common Language Runtime &#40;CLR&#41; Integration Programming Concepts](../../relational-databases/clr-integration/common-language-runtime-clr-integration-programming-concepts.md)  
  
  