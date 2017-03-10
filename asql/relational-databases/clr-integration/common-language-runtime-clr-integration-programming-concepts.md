---
title: "Common Language Runtime (CLR) Integration Programming Concepts | Microsoft Docs"
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
  - "CLR [SQL Server] See common language runtime [SQL Server]"
  - "Database Engine [SQL Server], .NET Framework"
  - ".NET Framework [SQL Server], Database Engine programming"
  - "common language runtime [SQL Server]"
  - ".NET Framework [SQL Server]"
ms.assetid: 951bf851-3e6e-4361-ae6a-2bcd5b837ebd
caps.latest.revision: 59
ms.author: "jhubbard"
manager: "jhubbard"
---
# Common Language Runtime (CLR) Integration Programming Concepts
  Beginning with [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features the integration of the common language runtime (CLR) component of the .NET Framework for [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows. This means that you can now write stored procedures, triggers, user-defined types, user-defined functions, user-defined aggregates, and streaming table-valued functions, using any .NET Framework language, including [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual Basic .NET and [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual C#.  
  
 The Microsoft.SqlServer.Server namespace includes core functionality for CLR programming in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. However, the Microsoft.SqlServer.Server namespace is documented in the .NET Framework SDK. This documentation is not included in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.  
  
> [!IMPORTANT]  
>  By default, the .NET Framework is installed with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], but the .NET Framework SDK is not. Without the SDK installed on your computer and included in the Books Online collection, links to SDK content in this section do not work. Install the .NET Framework SDK. Once installed, add the SDK to the Books Online collection and table of contents by following the instructions in [Installing the .NET Framework SDK](http://technet.microsoft.com/library/bb686823\(v=SQL.105\).aspx).  
  
> [!NOTE]  
>  CLR functionality, such as CLR user functions, are *not* supported for Azure SQL Database.  
  
 The following table lists the topics in this section.  
  
 [Common Language Runtime &#40;CLR&#41; Integration Overview](../../relational-databases/clr-integration/common-language-runtime-integration-overview.md)  
 Provides a brief overview of the CLR, and describes how and why this technology has been used in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Describes the benefits of using the CLR to create database objects.  
  
 [Assemblies &#40;Database Engine&#41;](../../relational-databases/clr-integration/assemblies-database-engine.md)  
 Describes how assemblies are used in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to deploy functions, stored procedures, triggers, user-defined aggregates, and user-defined types that are written in one of the managed code languages hosted by the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] .NET Framework common language runtime (CLR), and not written in [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 [Building Database Objects with Common Language Runtime &#40;CLR&#41; Integration](../../relational-databases/clr-integration/database-objects/building-database-objects-with-common-language-runtime-clr-integration.md)  
 Describes the kinds of objects that can be built using the CLR, and reviews the requirements for building CLR database objects.  
  
 [Data Access from CLR Database Objects](../../relational-databases/clr-integration/data-access/data-access-from-clr-database-objects.md)  
 Describes how a CLR routine can access data stored in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [CLR Integration Security](../../relational-databases/clr-integration/security/clr-integration-security.md)  
 Describes the CLR integration security model.  
  
 [Debugging CLR Database Objects](../../relational-databases/clr-integration/debugging-clr-database-objects.md)  
 Describes limitations of and requirements for debugging CLR database objects.  
  
 [Deploying CLR Database Objects](../../relational-databases/clr-integration/deploying-clr-database-objects.md)  
 Describes deploying assemblies to production servers.  
  
 [Managing CLR Integration Assemblies](../../relational-databases/clr-integration/assemblies/managing-clr-integration-assemblies.md)  
 Describes how to create and drop CLR integration assemblies.  
  
 [Monitoring and Troubleshooting Managed Database Objects](../../relational-databases/clr-integration/monitoring-and-troubleshooting-managed-database-objects.md)  
 Provides information about the tools that can be used to monitor and troubleshoot managed database objects and assemblies running in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [Usage Scenarios and Examples for Common Language Runtime &#40;CLR&#41; Integration](http://msdn.microsoft.com/en-US/library/ms131078(SQL.130).aspx)  
 Describes usage scenarios and code samples using CLR objects.  
  
## See Also  
 [Assemblies &#40;Database Engine&#41;](../../relational-databases/clr-integration/assemblies-database-engine.md)   
 [Installing the .NET Framework SDK](http://technet.microsoft.com/library/bb686823\(v=SQL.105\).aspx)  
  
  