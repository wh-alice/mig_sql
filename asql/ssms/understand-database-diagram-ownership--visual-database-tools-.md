---
title: "Understand Database Diagram Ownership (Visual Database Tools) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "vdt.diagnostic.CannotOpenWithInvalidOwner"
helpviewer_keywords: 
  - "diagrams [SQL Server], ownership"
  - "database diagrams [SQL Server], ownership"
  - "owners [SQL Server], database diagrams"
ms.assetid: 4a27a48e-c4ef-4017-82b8-0cac4d0bbcac
caps.latest.revision: 5
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
# Understand Database Diagram Ownership (Visual Database Tools)
To use Database Diagram Designer it must first be set up by a member of the db_owner role (a role of SQL Server databases) to control access to diagrams. Each diagram has one and only one owner, the user who created it. For more information on setting up diagramming see [Set Up Database Diagram Designer (Visual Database Tools)](../ssms/set-up-database-diagram-designer--visual-database-tools-.md).  
  
Some points to keep in mind about diagram ownership:  
  
-   Although any user with access to a database can create a diagram, once the diagram has been created, the only users who can see it are the diagram's creator and any member of the db_owner role.  
  
-   Ownership of diagrams can only be transferred to members of the db_owner role. This is only possible if the previous owner of the diagram has been removed from the database.  
  
-   If the owner of a diagram has been removed from the database, the diagram will remain in the database until a member of the db_owner role attempts to open it. At that point the db_owner member can choose to take over ownership of the diagram.  
  
## See Also  
[Work with Database Diagrams (Visual Database Tools)](../ssms/work-with-database-diagrams--visual-database-tools-.md)  
[Set Up Database Diagram Designer (Visual Database Tools)](../ssms/set-up-database-diagram-designer--visual-database-tools-.md)  
  
