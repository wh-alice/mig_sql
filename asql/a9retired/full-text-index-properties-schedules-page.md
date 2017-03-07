---
title: "Full-Text Index Properties (Schedules Page) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-search"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.swb.fulltextsearch.fulltextindexproperties.schedule.f1"
ms.assetid: a828e284-097e-4854-8c49-931934eb73bf
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Full-Text Index Properties (Schedules Page)
  Use this page to view and create schedules for running a SQL Server Agent job that starts an incremental population of updates to the base table of the full-text index. If the base table or view does not contain a column of the **timestamp** data type, a full population is performed.  
  
 **To view or change the properties of a full-text index**  
  
-   [Manage Full-Text Indexes](../a9retired/manage-full-text-indexes.md)  
  
## UIElement List  
 **Schedules**  
 Lists each scheduled incremental population, if any, on the base table for the full-text index.  
  
 **Name**  
 Displays the name of the each scheduled population.  
  
 **Population Type**  
 Displays the type of each scheduled population.  
  
 **Enabled**  
 Indicates whether the scheduled population is currently enabled or disabled.  
  
 **Description**  
 Displays the description that was specified when the schedule was created.  
  
 **New**  
 Click to create a new schedule for populating the full-text index.  
  
## See Also  
 [Use the Full-Text Indexing Wizard](../relational-databases/search/use-the-full-text-indexing-wizard.md)   
 [Populate Full-Text Indexes](../relational-databases/search/populate-full-text-indexes.md)  
  
  