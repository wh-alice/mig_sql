---
title: "Configure Resource Governor Using a Template | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Resource Governor, templates"
ms.assetid: f342dec2-d1d6-483e-b44e-98eb7d168b5e
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# Configure Resource Governor Using a Template
  You can configure Resource Governor by using a template that is provided in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
-   **Before you begin:**  [Permissions](#Permissions)  
  
-   **To create a workload group, using:**  [a template](#ConfRGTemplate)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
 Use the following steps to open and modify a template that creates a resource pool and a workload group for the pool. In addition, this template enables you to create a classifier user-defined function that routes new connections to either the default group or the workload group that you create.  
  
###  <a name="Permissions"></a> Permissions  
 The resource governor [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements in the template require CONTROL SERVER permission.  
  
##  <a name="ConfRGTemplate"></a> Configure Resource Governor Using a Template  
 **To configure resource governor by using a template in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]**  
  
1.  In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], on the **View** menu, click **Template Explorer**.  
  
2.  In **Template Explorer**, expand **Resource Governor**, and then double-click **Configure Resource Governor**.  
  
3.  In **Connect to Database Engine**, enter the required information, and then click **OK**. The template Configure Resource Governor.sql is provided in the Query Editor. Use this template to create and configure a resource pool, a workload group, and a classifier function.  
  
4.  To change the values in the template, press CTRL+SHIFT+M. In the **Specify Values for Template Parameters** window, enter the values that you want to use.  
  
5.  To save the changes that you make to the template, click **OK**.  
  
6.  To run the query, click **Execute**.  
  
## See Also  
 [Resource Governor](../../relational-databases/resource-governor/resource-governor.md)   
 [Enable Resource Governor](../../relational-databases/resource-governor/enable-resource-governor.md)   
 [Resource Governor Resource Pool](../../relational-databases/resource-governor/resource-governor-resource-pool.md)   
 [Resource Governor Workload Group](../../relational-databases/resource-governor/resource-governor-workload-group.md)   
 [Resource Governor Classifier Function](../../relational-databases/resource-governor/resource-governor-classifier-function.md)   
 [View Resource Governor Properties](../../relational-databases/resource-governor/view-resource-governor-properties.md)   
 [CREATE RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/create-resource-pool-transact-sql.md)   
 [CREATE WORKLOAD GROUP &#40;Transact-SQL&#41;](../../t-sql/statements/create-workload-group-transact-sql.md)   
 [CREATE FUNCTION &#40;Transact-SQL&#41;](../../t-sql/statements/create-function-transact-sql.md)   
 [ALTER RESOURCE GOVERNOR &#40;Transact-SQL&#41;](../../t-sql/statements/alter-resource-governor-transact-sql.md)  
  
  