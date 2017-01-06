---
title: "Map Many-to-Many Relationships (Visual Database Tools) | Microsoft Docs"
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
  - "relationships [SQL Server], many-to-many"
  - "junction tables [SQL Server]"
  - "many-to-many relationships [SQL Server]"
  - "mapping many-to-many relationships [SQL Server]"
  - "database diagrams [SQL Server], relationships"
ms.assetid: 2977cf92-98b5-48b2-b0fd-8fbc7040f2b4
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
# Map Many-to-Many Relationships (Visual Database Tools)
Many-to-many relationships let you relate each row in one table to many rows in another table, and vice versa. For example, you could create a many-to-many relationship between the `authors` table and the `titles` table to match each author to all of his or her books and to match each book to all of its authors. Creating a one-to-many relationship from either table would incorrectly indicate that every book can have only one author, or that every author can write only one book.  
  
Many-to-many relationships between tables are accommodated in databases by means of junction tables. A junction table contains the primary key columns of the two tables you want to relate. You then create a relationship from the primary key columns of each of those two tables to the matching columns in the junction table. In the pubs database, the `titleauthor` table is a junction table.  
  
### To create a many-to-many relationship between tables  
  
1.  In your database diagram, add the tables that you want to create a many-to-many relationship between.  
  
2.  Create a third table by right-clicking the diagram and choosing **New Table** from the shortcut menu. This will become the junction table.  
  
3.  In the **Choose Name** dialog box, change the system-assigned table name. For example, the junction table between the `titles` table and the `authors` table is now named `titleauthors`.  
  
4.  Copy the primary key columns from each of the other two tables to the junction table. You can add other columns to this table, just as you can to any other table.  
  
5.  In the junction table, set the primary key to include all the primary key columns from the other two tables. For details, see [How to: Create Primary Keys (Visual Database Tools)](http://msdn.microsoft.com/en-us/85c623ca-4656-4d70-a9db-ee4d897cd214).  
  
6.  Define a one-to-many relationship between each of the two primary tables and the junction table. The junction table should be at the "many" side of both of the relationships you create. For details, see [How to: Create Relationships Between Tables (Visual Database Tools)](http://msdn.microsoft.com/en-us/867a54b8-5be4-46e6-9702-49ae6dabf67c).  
  
    > [!NOTE]  
    > The creation of a junction table in a database diagram does not insert data from the related tables into the junction table. For information about inserting data into a table, see [Create Insert Results Queries &#40;Visual Database Tools&#41;](../ssms/create-insert-results-queries--visual-database-tools-.md).  
  
## See Also  
[Work with Database Diagrams &#40;Visual Database Tools&#41;](../ssms/work-with-database-diagrams--visual-database-tools-.md)  
  
