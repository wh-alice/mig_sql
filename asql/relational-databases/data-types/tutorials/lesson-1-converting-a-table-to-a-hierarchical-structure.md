---
title: "Lesson 1: Converting a Table to a Hierarchical Structure | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "HierarchyID"
ms.assetid: 5ee6f19a-6dd7-4730-a91c-bbed1bd77e0b
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 1: Converting a Table to a Hierarchical Structure
Customers who have tables using self joins to express hierarchical relationships can convert their tables to a hierarchical structure using this lesson as a guide. It is relatively easy to migrate from this representation to one using **hierarchyid**. After migration, users will have a compact and easy to understand hierarchical representation, which can be indexed in several ways for efficient queries.  
  
This lesson, examines an existing table, creates a new table containing a **hierarchyid** column, populates the table with the data from the source table, and then demonstrates three indexing strategies. This lesson contains the following topics:  
  
-   [Examining the Current Structure of the Employee Table](../Topic/Examining%20the%20Current%20Structure%20of%20the%20Employee%20Table.md)  
  
-   [Populating a Table with Existing Hierarchical Data](../Topic/Populating%20a%20Table%20with%20Existing%20Hierarchical%20Data.md)  
  
-   [Optimizing the NewOrg Table](../Topic/Optimizing%20the%20NewOrg%20Table.md)  
  
-   [Summary: Converting a Table to a Hierarchical Structure](../Topic/Summary:%20Converting%20a%20Table%20to%20a%20Hierarchical%20Structure.md)  
  
## Prerequisites  
This lesson requires the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] sample database.  
  
## Next Task in Lesson  
[Examining the Current Structure of the Employee Table](../Topic/Examining%20the%20Current%20Structure%20of%20the%20Employee%20Table.md)  
  
## Next Lesson  
[Lesson 2: Creating and Managing Data in a Hierarchical Table](../../../relational-databases/data-types/tutorials/lesson-2-creating-and-managing-data-in-a-hierarchical-table.md)  
  
  
  
