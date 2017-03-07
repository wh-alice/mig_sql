---
title: "Collation and CLR Integration Data Types | Microsoft Docs"
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
  - "data types [CLR integration]"
  - "parameter collation [CLR integration]"
  - "collations [CLR integration]"
ms.assetid: 6ebaed8e-2e2b-4f6d-bf4b-bc25452de441
caps.latest.revision: 38
ms.author: "jhubbard"
manager: "jhubbard"
---
# Collation and CLR Integration Data Types
  In the [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)], the **CompareInfo** object handles collations. The [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] string application programming interfaces (APIs) use the **CompareInfo** property associated with the **CultureInfo** object of the current thread to perform string comparisons. The default setting of the **CultureInfo** object is based on the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows locale setting for the computer on which [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is running. This determines the default comparison semantics, if no explicit **CultureInfo** is specified, for comparisons of **System.String** values. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] does not explicitly change the **CompareInfo** property to the database or server collation. If required, users must set the appropriate **CompareInfo** property in their routines.  
  
## Parameter Collation  
 When you create a common language runtime (CLR) routine, and a parameter of a CLR method bound to the routine is of type **SQLString**, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] creates an instance of the parameter with the default collation of the database containing the calling routine. If a parameter is not a **SqlType** (for example, **String** rather than **SQLString**), the collation information from the database is not associated with the parameter.  
  
## See Also  
 [SQL Server Data Types in the .NET Framework](../../relational-databases/clr-integration-database-objects-types-net-framework/sql-server-data-types-in-the-.net-framework.md)  
  
  