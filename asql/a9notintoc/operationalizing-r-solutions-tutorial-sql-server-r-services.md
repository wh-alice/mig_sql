---
title: "Operationalizing R Solutions (Tutorial: SQL Server R Services) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f8b289b5-d4b1-4c9b-a864-297af43f236d
caps.latest.revision: 5
ms.author: "jeannt"
manager: "erikre"
---
# Operationalizing R Solutions (Tutorial: SQL Server R Services)
The process of taking R code developed by a data scientist and deploying to a server or other production environment is often referred to *operationalizing*. This   process  is typically performed by application developers  or  SQL developers.  
  
Using R in a production environment is very different from using it on the data scientist's test computer. Requirements include:  
  
-   **Using standard query languages and data interfaces.** In [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], you can invoke R scripts by embedding them in [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] system stored procedures. This requirement is critical for putting predictive models into production.  
  
-   **Portability and extensibility.** In the enterprise, the results of R code must be shareable with a variety of applications. By using [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], you can execute R scripts and return plots and predictions and embed them in applications.  
  
-   **Better    performance and scale:** The system stored procedures that invoke the RevoScaleR package APIs can operate on large datasets and benefit from multi-threaded, multi-core, multi-process in-DB computations.  
  
-   **Use production tools.** The application developer or SQL developer wants to deploy R using familiar, powerful tools such as Visual Studio and [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
## Overview  
  
> [!NOTE]  
> This section is under construction. In [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)], [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] is in early preview.  
  
This tutorial has the following sections.  
  
### Requirements  
