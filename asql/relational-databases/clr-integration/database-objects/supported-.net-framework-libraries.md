---
title: "Supported .NET Framework Libraries | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "common language runtime [SQL Server], .NET Framework libraries"
  - ".NET Framework [CLR Integration]"
ms.assetid: 417544ff-c25c-496e-add4-2f278f8a4911
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# Supported .NET Framework Libraries
  With the common language runtime (CLR) hosted in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], you can author stored procedures, triggers, user-defined functions, user-defined types, and user-defined aggregates in managed code. With the functionality found in the .NET Framework class libraries, you have access to pre-built classes that provide functionality for string manipulation, advanced math operations, file access, cryptography, and more. These classes can be accessed from any managed stored procedure, user-defined type, trigger, user-defined function, or user-defined aggregate.  
  
> [!NOTE]  
>  If you service or upgrade unsupported assemblies in the global assembly cache (GAC), your [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] application might stop working. This is because servicing or upgrading libraries in the GAC does not update those assemblies inside [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. If an assembly exists both in a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database and in the GAC, the two copies of the assembly must exactly match. If they do not match, an error will occur when the assembly is used by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] CLR integration. If you service or upgrade any assemblies in the GAC that are also registered in the database, including unsupported .NET Framework assemblies, make sure to also service or upgrade the copy of the assembly inside your [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] databases with the **ALTER ASSEMBLY** statement. For more information, see [Knowledge Base article 949080](http://support.microsoft.com/kb/949080).  
  
## Supported Libraries  
 Beginning with [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)], [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] has a list of supported .NET Framework libraries, which have been tested to ensure that they meet reliability and security standards for interaction with [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. Supported libraries do not need to be explicitly registered on the server before they can be used in your code; [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] loads them directly from the Global Assembly Cache (GAC).  
  
 The libraries/namespaces supported by CLR integration in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] are:  
  
-   CustomMarshalers  
  
-   Microsoft.VisualBasic  
  
-   Microsoft.VisualC  
  
-   mscorlib  
  
-   System  
  
-   System.Configuration  
  
-   System.Data  
  
-   System.Data.OracleClient  
  
-   System.Data.SqlXml  
  
-   System.Deployment  
  
-   System.Security  
  
-   System.Transactions  
  
-   System.Web.Services  
  
-   System.Xml  
  
-   System.Core.dll  
  
-   System.Xml.Linq.dll  
  
## Unsupported Libraries  
 Unsupported libraries can still be called from your managed stored procedures, triggers, user-defined functions, user-defined types, and user-defined aggregates. The unsupported library must first be registered in the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database, using the **CREATE ASSEMBLY** statement, before it can be used in your code. Any unsupported library that is registered and run on the server should be reviewed and tested for security and reliability.  
  
 For example, the **System.DirectoryServices** namespace is not supported. You must register the System.DirectoryServices.dll assembly with **UNSAFE** permissions before you can call it from your code. The **UNSAFE** permission is necessary because classes in the **System.DirectoryServices** namespace do not meet the requirements for **SAFE** or **EXTERNAL_ACCESS**. For more information, see [CLR Integration Programming Model Restrictions](../../../relational-databases/clr-integration/database-objects/clr-integration-programming-model-restrictions.md) and [CLR Integration Code Access Security](../../../relational-databases/clr-integration/security/clr-integration-code-access-security.md).  
  
## See Also  
 [Creating an Assembly](../../../relational-databases/clr-integration/assemblies/creating-an-assembly.md)   
 [CLR Integration Code Access Security](../../../relational-databases/clr-integration/security/clr-integration-code-access-security.md)   
 [CLR Integration Programming Model Restrictions](../../../relational-databases/clr-integration/database-objects/clr-integration-programming-model-restrictions.md)  
  
  