---
title: "Server Configuration - Collation | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "collation configuration, SQL Server"
  - "collation configuration, Setup"
  - "collation configuration"
ms.assetid: e3986870-5be4-458b-b671-5ff12a27b022
caps.latest.revision: 20
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Server Configuration - Collation
  On the Server Configuration - Collation page of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation Wizard, you can modify collation settings that the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] and [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] use for sorting purposes. Select the option to match collation settings of different installations of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], or of another computer.  
  
## Options  
 Customize for [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] and [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)]  
 [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] provides two groups of collations: Windows collations and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] collations. You can specify separate collation settings for the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] and [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], or you can specify the same collation for both.  
  
 By default, a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] collation is selected for US-English system locales. The default collation for localized versions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] is determined by the Windows system locale setting for your computer.  
  
 The default settings should be changed only if the collation setting for this installation of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] must match the collation settings used by another instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], or if it must match the Windows system locale of another computer.  
  
 **Note** [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] uses Windows collations only. If you plan to install [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], select a Windows collation during [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup to ensure consistent results between the [!INCLUDE[ssDEnoversion](../a9notintoc/includes/ssdenoversion-md.md)] and [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)].  
  
 For more information, see [Collation Settings in Setup](http://go.microsoft.com/fwlink/?LinkId=190977).  
  
## Best Practices  
 For more information about a table of Windows System locales and the corresponding default collations used by [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup, see [Collation Settings in Setup](http://go.microsoft.com/fwlink/?LinkId=190977).  
  
 If it is possible, use a single collation for your organization. This way, you do not have to explicitly specify the collation for every database, column, expression, or identifier. If you must work with multiple collations and code page settings, code your queries to consider the rules of collation precedence. For more information, see the Books Online topic for [Collation Precedence &#40;Transact-SQL&#41;](../t-sql/statements/collation-precedence-transact-sql.md).  
  
 When you select a collation for [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], consider the following recommendations:  
  
-   Select a BINARY2 collation if binary code point based ordering is acceptable.  
  
-   Select a Windows collation for consistent comparison across data types.  
  
-   Use a new 100-level collation for better linguistic sorting support. For more information, see [Collation and Unicode Support](../relational-databases/collations/collation-and-unicode-support.md).  
  
-   If you plan to migrate a database to the upgraded instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], select the collation that matches your existing collation of the database.  
  
  