---
title: "Create Scripts Using Templates | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: ed48014c-3fc9-48ff-8c0f-8d1822195f14
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 3-1 - Create Scripts Using Templates
Microsoft [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] provides a large number of script templates containing the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statements for many common tasks. These templates contain parameters for the user-provided values such as a table name. Using the parameters, you can type the name once and then automatically copy the name to all the necessary locations within the script. You can write your own custom templates to support the scripts that you write most often. You can also reorganize the template tree, moving templates or creating new folders to hold the templates. In the following practice, you will use a template to create a database, specifying collation template.  
  
## Using Templates  
  
#### To create a script using a template  
  
1.  In [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], on the **View** menu, click **Template Explorer**.  
  
2.  The templates in Template Explorer are organized into groups. Expand **Database**, and then double-click **Create Database**.  
  
3.  In the **Connect to Database Engine** dialog box, complete the connection information and then click **Connect**. A new Query Editor window opens, containing the contents of the **Create Database** template.  
  
4.  On the **Query** menu, click **Specify Values for Template Parameters**.  
  
5.  In the **Specify Values for Template Parameters** dialog box, the **Value** column contains a suggested value for the **Database_Name** parameter. In the **Database Name** parameter box, type **Marketing**, and then click **OK**. Note how "Marketing" is inserted into the script in several locations.  
  
## Next Task in Lesson  
[Create Custom Templates](../Topic/Create%20Custom%20Templates.md)  
  
  
  
