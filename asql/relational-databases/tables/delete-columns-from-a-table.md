---
title: "Delete Columns from a Table | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "columns [SQL Server], deleting"
  - "removing columns"
  - "deleting columns"
  - "dropping columns"
ms.assetid: 0d8f6e4f-bc71-4fa3-8615-74249c8e072d
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# Delete Columns from a Table
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  This topic describes how to delete table columns in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)].  
  
> [!CAUTION]  
>  When you delete a column from a table, it and all the data it contains are deleted from the database. This action cannot be undone.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To delete a column from a table, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
 You cannot delete a column that has a CHECK constraint. You must first delete the constraint.  
  
 You cannot delete a column that has PRIMARY KEY or FOREIGN KEY constraints or other dependencies except when using the Table Designer. When using Object Explorer or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)], you must first remove all dependencies on the column.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To delete columns by using Object Explorer  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  In **Object Explorer**, right-click the table from which you want to delete columns and choose **Delete**.  
  
3.  In **Delete Object** dialog box, click **OK**.  
  
 If the column contains constraints or other dependencies, an error message will display in the **Delete Object** dialog box. Resolve the error by deleting the referenced constraints.  
  
#### To delete columns by using Table Designer  
  
1.  In **Object Explorer**, right-click the table from which you want to delete columns and choose **Design**.  
  
2.  Right-click the column you want to delete and choose **Delete Column** from the shortcut menu.  
  
3.  If the column participates in a relationship (FOREIGN KEY or PRIMARY KEY), a message prompts you to confirm the deletion of the selected columns and their relationships. Choose **Yes**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To delete columns  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    ALTER TABLE dbo.doc_exb DROP COLUMN column_b ;  
    ```  
  
 If the column contains constraints or other dependencies, an error message will be returned. Resolve the error by deleting the referenced constraints.  
  
 For additional examples, see [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md).  
  
##  <a name="FollowUp"></a>  