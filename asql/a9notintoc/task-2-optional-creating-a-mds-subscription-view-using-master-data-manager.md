---
title: "Task 2 (Optional): Creating a MDS Subscription View using Master Data Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f3da8219-e0cb-4848-95ca-285a76ec1ba9
caps.latest.revision: 6
ms.author: "spelluru"
manager: "jhubbard"
---
# Task 2 (Optional): Creating a MDS Subscription View using Master Data Manager
In this task, you create a subscription view to expose the **Supplier** entity in the **Suppliers** model to other applications. You do not consume this view in the current version of the tutorial.  
  
1.  Switch to the main page of **Master Data Manager** ([http://localhost/MDS](http://localhost/MDS)) by clicking **SQL Server 2012 Master Data Services** at the top.  
  
2.  Click **Integration Management**.  
  
3.  Click **Create Views** on the menu bar.  
  
    ![Add a New Subscription View Button](../a9notintoc/media/et-creatingamdssubscriptionviewusingmdm-01.jpg "Add a New Subscription View Button")  
  
4.  Click **+ (Plus)** icon on the toolbar to create a subscription view.  
  
5.  In the **Create Subscription View** pane, type **Suppliers** for **Subscription view name**.  
  
6.  Select **Suppliers** for **Model**.  
  
7.  Select **VERSION_1** for **Version**.  
  
8.  Select **Supplier** for **Entity**.  
  
9. Select **Leaf members** for **Format**.  
  
    ![Save Subscription View Button](../a9notintoc/media/et-creatingamdssubscriptionviewusingmdm-02.jpg "Save Subscription View Button")  
  
10. Click **Save** on the toolbar to save the subscription view. This action creates a view in SQL Server named **Suppliers**. You can verify this using SQL Server Management Studio (SSMS).  
  
## Next Step  
[Task 3 &#40;Optional&#41;: Reviewing the Subscription Views](../a9notintoc/task-3-optional-reviewing-the-subscription-views.md)  
  
