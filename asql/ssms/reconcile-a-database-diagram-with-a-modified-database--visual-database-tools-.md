---
title: "Reconcile a Database Diagram with a Modified Database (Visual Database Tools) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "updating diagram to match database"
  - "reconciling database diagrams"
  - "diagrams [SQL Server], reconciling changes"
  - "updating database to match diagram"
  - "database diagrams [SQL Server], reconciling changes"
ms.assetid: eda8dea2-eedd-43a7-85aa-92bd97783b5f
caps.latest.revision: 4
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Reconcile a Database Diagram with a Modified Database (Visual Database Tools)
You save your database diagram when you are ready to update the database to match your diagram. However, if other users have updated the database since you opened your diagram, their changes might affect your diagram and vice versa.  
  
Saving your diagram will reconcile the database with your diagram by overwriting other users' changes so that the database will match your diagram.  
  
### To update a database to match your diagram  
  
1.  Save your database diagram.  
  
    If you have not previously saved your diagram, type a name for the diagram in the **Save New Database Diagram** dialog box and choose **OK**.  
  
2.  The **Save** dialog box lists the tables that will be affected when you save your diagram. Choose **Yes** to continue.  
  
3.  The **Database Changes Detected** dialog box lists the objects that were modified and will be changed to match your diagram. Choose **Yes** to save the diagram and accept the list of changes.  
  
    > [!NOTE]  
    > If your diagram contains tables and columns that were deleted in the database, only their definitions are recreated in the database when you save your diagram. This process does not restore any data that existed in these objects before their deletion.  
  
### To update your diagram to match a modified database  
  
1.  Close your diagram without saving changes.  
  
2.  Right-click the diagram in Object Explorer.  
  
3.  From the shortcut menu click **Refresh**.  
  
4.  Reopen the diagram.  
  
## See Also  
[Work with Database Diagrams &#40;Visual Database Tools&#41;](../ssms/work-with-database-diagrams--visual-database-tools-.md)  
  
