---
title: "Common Language Runtime (CLR) Integration Overview | Microsoft Docs"
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
  - "managed code [SQL Server]"
  - "common language runtime [SQL Server], about CLR integration"
  - "cross-language integration"
  - "integrating CLR [SQL Server]"
  - ".NET Framework [SQL Server], common language runtime"
  - "code access security [CLR integration]"
  - "managed code [SQL Server], CLR integration"
ms.assetid: 7be9e644-36a2-48fc-9206-faf59fdff4d7
caps.latest.revision: 64
ms.author: "jhubbard"
manager: "jhubbard"
---
# Common Language Runtime Integration Overview
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] now features the integration of the common language runtime (CLR) component of the .NET Framework for [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows. The CLR supplies managed code with services such as cross-language integration, code access security, object lifetime management, and debugging and profiling support. For [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] users and application developers, CLR integration means that you can now write stored procedures, triggers, user-defined types, user-defined functions (scalar and table-valued), and user-defined aggregate functions using any .NET Framework language, including [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual Basic .NET and [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual C#. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] includes the .NET Framework version 4 pre-installed.  
  
 Among the major benefits of this integration are:  
  
-   **A better programming model.** The .NET Framework languages are in many respects richer than Transact-SQL, offering constructs and capabilities previously not available to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] developers. Developers may also leverage the power of the .NET Framework Library, which provides an extensive set of classes that can be used to quickly and efficiently solve programming problems.  
  
-   **Improved safety and security.** Managed code runs in a common language run-time environment, hosted by the Database Engine. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] leverages this to provide a safer and more secure alternative to the extended stored procedures available in earlier versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   **Ability to define data types and aggregate functions.** User defined types and user defined aggregates are two new managed database objects which expand the storage and querying capabilities of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   **Streamlined development through a standardized environment.** Database development is integrated into future releases of the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual Studio .NET development environment. Developers use the same tools for developing and debugging database objects and scripts as they use to write middle-tier or client-tier .NET Framework components and services.  
  
-   **Potential for improved performance and scalability.** In many situations, the .NET Framework language compilation and execution models deliver improved performance over Transact-SQL.  
  
 This following table lists the topics in this section.  
  
 [Overview of CLR Integration](../../relational-databases/clr-integration/clr-integration-overview.md)  
 Describes the kinds of objects that can be built using CLR integration, and reviews the requirements for building database objects using CLR integration.  
  
 [What's New in CLR Integration](../../relational-databases/clr-integration/clr-integration-what-s-new.md)  
 Describes the new features in this release.  
  
 [Architecture of CLR Integration](http://msdn.microsoft.com/library/05e4b872-3d21-46de-b4d5-739b5f2a0cf9)  
 Describes the design goals of CLR integration.  
  
 [Enabling CLR Integration](../../relational-databases/clr-integration/clr-integration-enabling.md)  
 Describes how to enable CLR integration.  
  
## See Also  
 [Installing the .NET Framework](http://technet.microsoft.com/library/ms166014\(v=SQL.105\).aspx)   
 [Performance of CLR Integration](../../relational-databases/clr-integration/clr-integration-architecture-performance.md)  
  
  