---
title: "Duplicate Tables | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "copying tables"
  - "tables [SQL Server], duplicating"
  - "duplicating tables"
  - "table copying [SQL Server]"
ms.assetid: c6b07423-d1e5-4e5e-8681-5088921f5df3
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Duplicate Tables
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  You can duplicate an existing table in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] by creating a new table and then copying column information from an existing table.  
  
> [!IMPORTANT]  
>  This operation duplicates only the structure of a table; it does not duplicate any table rows.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To duplicate a table, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires CREATE TABLE permission in the destination database.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To duplicate a table  
  
1.  Make sure you are connected to the database in which you want to create the table and that the database is selected in Object Explorer.  
  
2.  In Object Explorer, right-click **Tables** and click **New Table**.  
  
3.  In Object Explorer right-click the table you want to copy and click **Design**.  
  
4.  Select the columns in the existing table and, from the **Edit** menu, click **Copy**.  
  
5.  Switch back to the new table and select the first row.  
  
6.  From the **Edit** menu, click **Paste**.  
  
7.  From the **File** menu, click **Save***table name*.  
  
8.  In the **Choose Name** dialog box, type a name for the new table and click **OK**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To duplicate a table in Query Editor  
  
1.  Make sure you are connected to the database in which you want to create the table and that the database is selected in Object Explorer.  
  
2.  Right-click the table you wish to duplicate, point to **Script Table as**, then point to **CREATE to**, and then select **New Query Editor Window**.  
  
3.  Change the name of the table.  
  
4.  Remove any columns that are not needed in the new table.  
  
5.  Click **Execute**.  
  
  