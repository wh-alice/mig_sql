---
title: "Task 1: Creating a Knowledge Base and Domains | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7d74a60b-8933-4038-bcbb-4e9dcc4f70e9
caps.latest.revision: 8
ms.author: "spelluru"
manager: "jhubbard"
---
# Task 1: Creating a Knowledge Base and Domains
In this task, you create the **Suppliers** knowledge base and create domains that is used for cleansing data and matching data to remove duplicates.  
  
1.  Launch **Data Quality Client**. Click **Start**, point to **All Programs**, click **Microsoft SQL Server 2012**, click **Data Quality Services**, and then click **Data Quality Client**.  
  
2.  In the **Connect to Server** dialog box, select the database server instance on which the DQS is installed, and click **Connect**.  
  
    ![Connect to Server Dialog Box](../a9notintoc/media/et-creatingaknowledgebaseanddomains-01.jpg "Connect to Server Dialog Box")  
  
3.  In the Data Quality Client home page, in the **Knowledge Base Management** pane, click **New Knowledge Base**.  
  
    ![Knowledge Base Management - New KB](../a9notintoc/media/et-creatingaknowledgebaseanddomains-02.jpg "Knowledge Base Management - New KB")  
  
4.  Enter **Suppliers** for **Name** of the knowledge base.  
  
    ![New Knowledge Base - Domain Management](../a9notintoc/media/et-creatingaknowledgebaseanddomains-03.jpg "New Knowledge Base - Domain Management")  
  
5.  Confirm that **Create Knowledge Base from** field is set to **None** since you are creating the **Suppliers** knowledge base from scratch.  
  
6.  Confirm that **Domain Management** is selected for the **Activity** and click **Next**. The Domain Management activity lets you create and manage domains in the knowledge base.  
  
7.  In the **Domain Management** window, click **Create a domain** toolbar button to create a domain.  
  
    ![Create Domain Toolbar Button](../a9notintoc/media/et-creatingaknowledgebaseanddomains-04.jpg "Create Domain Toolbar Button")  
  
8.  In the **Create Domain** dialog box, type **Supplier ID** for the **Domain Name**, and click **OK**.  
  
    ![Create Domain Dialog Box](../a9notintoc/media/et-creatingaknowledgebaseanddomains-05.jpg "Create Domain Dialog Box")  
  
9. Repeat previous step to create the following domains with all the default settings. To keep the tutorial simple, you set the **Data Type** of all the domains as **String**. The other allowed data types are: Integer, Decimal, and Date. When the **Use Leading Values** option is selected (default), all synonyms are replaced with the leading value of the synonym group in the output. Setting **Normalize String** option (default) removes any special characters in the domain values. The **Format Output to** option lets you select the formatting that is applied when the data values in the domain are output. Select **Enable Speller** (default) to run Speller on all string values when populating the domain. The **Language** setting specifies which language version of the **Speller** you want to apply. Select **Disable Syntax Error Algorithms** to populate the domain without checking string values for syntax errors. See [Create a Domain](http://msdn.microsoft.com/library/hh510401.aspx) topic in the MSDN library for more details.  
  
    -   Supplier Name  
  
    -   Contact Email  
  
    -   Address Line  
  
    -   City  
  
    -   State  
  
    -   Country  
  
    -   Zip  
  
## Next Step  
[Task 2: Adding Domain Values Manually](../a9notintoc/task-2-adding-domain-values-manually.md)  
  
