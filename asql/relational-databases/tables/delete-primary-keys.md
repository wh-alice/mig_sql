---
title: "Delete Primary Keys | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "removing primary keys"
  - "deleting primary keys"
  - "primary keys [SQL Server], deleting"
ms.assetid: c472e465-7bdd-4d74-8fc9-e47fca007ccb
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Delete Primary Keys
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  You can delete (drop) a primary key in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. When the primary key is deleted, the corresponding index is deleted.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To delete a primary key using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To delete a primary key constraint using Object Explorer  
  
1.  In Object Explorer, expand the table that contains the primary key and then expand **Keys**.  
  
2.  Right-click the key and select **Delete**.  
  
3.  In the **Delete Object** dialog box, verify the correct key is specified and click **OK**.  
  
#### To delete a primary key constraint using Table Designer  
  
1.  In Object Explorer, right-click the table with the primary key, and click **Design**.  
  
2.  In the table grid, right-click the row with the primary key and choose **Remove Primary Key** to toggle the setting from on to off.  
  
    > [!NOTE]  
    >  To undo this action, close the table without saving the changes. Deleting a primary key cannot be undone without losing all other changes made to the table.  
  
3.  On the **File** menu, click **Save***table name*.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To delete a primary key constraint  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. The example first identifies the name of the primary key constraint and then deletes the constraint.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    -- Return the name of primary key.  
    SELECT name  
    FROM sys.key_constraints  
    WHERE type = 'PK' AND OBJECT_NAME(parent_object_id) = N'TransactionHistoryArchive';  
    GO  
    -- Delete the primary key constraint.  
    ALTER TABLE Production.TransactionHistoryArchive  
    DROP CONSTRAINT PK_TransactionHistoryArchive_TransactionID;   
    GO  
    ```  
  
 For more information, see [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md) and [sys.key_constraints &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.key-constraints-transact-sql.md)  
  
###  <a name="TsqlExample"></a>  