---
title: "Task 5: Setting Term Based Relationships | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6569d512-637d-4f7b-82e1-1e8582278b37
caps.latest.revision: 8
ms.author: "spelluru"
manager: "jhubbard"
---
# Task 5: Setting Term Based Relationships
In this task, you define a few term-based relations for values for the **Supplier Name** domain. A term-based relation enables you to make a correction to a term that is part of a value in a domain. It enables multiple values that are identical except for the spelling of a common part of them to be considered identical synonyms. For example, **Inc.** can be corrected to **Incorporated**. DQS uses these relations in the knowledge discovery, cleansing, or matching processes. See [Create Term-based Relations](http://msdn.microsoft.com/library/hh510404.aspx) for more details.  
  
1.  Select **Supplier Name** in the **Domain list**.  
  
2.  Switch to the **Term-Based Relationships** tab in the right pane.  
  
3.  Click **Add new relation** button on the toolbar to add a relation to the table.  
  
4.  Type **Co.** for the **Value** field and **Company** for the **Correct To** field.  
  
5.  Repeat the previous two steps for the following values:  
  
    |Value|Correct To|  
    |---------|--------------|  
    |Corp.|Corporation|  
    |Inc.|Incorporated|  
  
    ![Term Based Relations](../a9notintoc/media/et-settingtermbasedrelations.jpg "Term Based Relations")  
  
## Next Step  
[Task 6: Setting Synonyms](../a9notintoc/task-6-setting-synonyms.md)  
  
