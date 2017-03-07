---
title: "Task 5: Creating a Domain-Based Attribute from Excel | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 07cbc624-2c6b-4568-96e4-f18663a05d80
caps.latest.revision: 7
ms.author: "spelluru"
manager: "jhubbard"
---
# Task 5: Creating a Domain-Based Attribute from Excel
In this task, you convert the **State** attribute of the **Supplier** entity as a **domain-based attribute**. After you configure the State attribute to be a domain-based one and publish it to MDS, a new entity named **State** will be created on MDS server with all the values in the column and the **State** attribute of the **Supplier** entity will be populated with values from the **State** entity. Now, the **Suppliers** model should have two entities: **Supplier** and **State** where the **State** attribute of the **Supplier** entity is a domain-based attribute that depends on **State** entity.  
  
1.  Switch to **Excel** window that has **Cleansed and Matched Suppliers.xlsx** open.  
  
2.  Click **Refresh** button on the ribbon to get the latest updates from MDS. You should see the two more records if you have performed the optional **Task 4**.  
  
3.  Click column name **State** (cell **I1**) in the **header row**.  
  
    ![Excel - Attribute Properties Button](../a9notintoc/media/et-creatingadomainbasedattributefromexcel-01.jpg "Excel - Attribute Properties Button")  
  
4.  Click **Attribute Properties** on the ribbon.  
  
5.  In the **Attribute Properties** dialog box, select **Constrained list (Domain-based)** for the **Attribute type**.  
  
6.  Type **State** for the **New entity name** and click **OK**.  
  
    ![Excel - Attribute Properties Dialog Box](../a9notintoc/media/et-creatingadomainbasedattributefromexcel-02.jpg "Excel - Attribute Properties Dialog Box")  
  
7.  Now, in Excel, you should see **down arrow** when you click any value in the **State** column. You can change the value by using the drop-down list if you need.  
  
    ![Excel - Drop Down List with States](../a9notintoc/media/et-creatingadomainbasedattributefromexcel-03.jpg "Excel - Drop Down List with States")  
  
## Next Step  
[Task 6: Verify that the Domain-Based Attribute is Created using Master Data Manager](../a9notintoc/6e90517a-910c-4c33-8f11-92ac3cff4fdc.md)  
  
