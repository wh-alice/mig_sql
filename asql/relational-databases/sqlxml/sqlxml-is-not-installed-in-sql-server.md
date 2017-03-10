---
title: "SQLXML Is Not Installed in SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 3dbb4f65-41de-48b8-ad62-47c9d7932de3
caps.latest.revision: 17
ms.author: "douglasl"
manager: "jhubbard"
---
# SQLXML Is Not Installed in SQL Server
  Before [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)], SQLXML 4.0 was released with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and was part of the default installation of all [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] versions except for [!INCLUDE[ssExpress](../../database-engine/configure/windows/includes/ssexpress-md.md)]. Starting with [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)], the latest version of SQLXML (SQLXML 4.0 SP1) is no longer included in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. To install SQLXML 4.0 SP1, download it from [Install Location for SQLXML 4.0 SP1](https://www.microsoft.com/en-us/download/details.aspx?id=30403).  
  
 If an application runs on [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and requires SQLXML 4.0, you have to download and install SQLXML 4.0 SP1.  
  
## SQLXML 4.0 SP1 Behavior with New Data Types Using SQLOLEDB and SQL Server Native Client OLE DB Provider  
 [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] introduced the following data types, which developers using SQLXML might want to use:  
  
-   **Date**  
  
-   **Time**  
  
-   **DateTime2**  
  
-   **DateTimeOffset**  
  
 When using SQLXML 4.0 SP1 with either SQLOLEDB or [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB from [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], these types appear as strings to a developer. SQLXML 4.0 SP1 will enable these four new data types as built-in scalar types when used with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider 11.0 or later. Until you download SQLXML 4.0 SP1, mapping these types to non-string types might cause truncation of some data. For example, mapping **DateTime2** to **xsd:date** will cause data to be truncated to the [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] **DateTime** precision of 3.33 milliseconds.  
  
## See Also  
 [SQLXML 4.0 Programming Concepts](../../relational-databases/sqlxml/sqlxml-4.0-programming-concepts.md)  
  
  