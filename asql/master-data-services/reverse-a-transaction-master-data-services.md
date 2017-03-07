---
title: "Reverse a Transaction (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "transactions [Master Data Services], reversing"
ms.assetid: 6f7c3f07-0f64-4283-8c9c-93facd00a046
caps.latest.revision: 8
ms.author: "carlasab"
manager: "jhubbard"
---
# Reverse a Transaction (Master Data Services)
  In [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)], administrators can reverse a transaction when an action needs to be undone. Examples of transactions are attribute value changes, hierarchy moves, or member deletions. This topic only applies to transactions of entities with transaction log type "Attribute". Go to entity explorer page to view the transaction history of the entities with transaction log type "Member".  
  
## Prerequisites  
  
-   You must have permission to access the **Version Management** functional area.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
### To reverse a transaction  
  
1.  On the [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] home page, click **Version Management**.  
  
2.  On the menu bar, click **Transactions**.  
  
3.  On the **Transactions** page, from the **Model** list, select a model.  
  
4.  From the **Version** list, select a version.  
  
5.  Click the row in the grid for the transaction you want to reverse.  
  
6.  Click **Reverse Transaction**.  
  
7.  In the confirmation dialog box, click **OK**. Another transaction is added to the grid to record the reversed transaction.  
  
## See Also  
 [Transactions &#40;Master Data Services&#41;](../master-data-services/transactions-master-data-services.md)   
 [Reactivate a Member or Collection &#40;Master Data Services&#41;](../master-data-services/reactivate-a-member-or-collection-master-data-services.md)  
 [Rollback Member Revision History](../master-data-services/rollback-member-revision-history-master-data-services.md)
  
  