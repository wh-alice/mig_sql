---
title: "Delete Unique Constraints | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "removing constraints"
  - "UNIQUE constraints [SQL Server], deleting"
  - "constraints [SQL Server], deleting"
  - "deleting constraints"
  - "constraints [SQL Server], unique"
ms.assetid: 71e563fc-f5d7-4c2e-a42f-f0695a831f32
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# Delete Unique Constraints
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  You can delete a unique constraint in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)]. Deleting a unique constraint removes the requirement for uniqueness for values entered in the column or combination of columns included in the constraint expression and deletes the corresponding unique index.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To delete a unique constraint, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To delete a unique constraint using Object Explorer  
  
1.  In Object Explorer, expand the table that contains the unique constraint and then expand **Constraints**.  
  
2.  Right-click the key and select **Delete**.  
  
3.  In the **Delete Object** dialog box, verify the correct key is specified and click **OK**.  
  
#### To delete a unique constraint using Table Designer  
  
1.  In **Object Explorer**, right-click the table with the unique constraint, and click **Design**.  
  
2.  On the **Table Designer** menu, click **Indexes/Keys**.  
  
3.  In the **Indexes/Keys** dialog box, select the unique key in the **Selected Primary/Unique Key and Index** list.  
  
4.  Click **Delete**.  
  
5.  On the **File** menu, click **Save** *table name*.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To delete a unique constraint  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- Return the name of unique constraint.  
    SELECT name  
    FROM sys.objects  
    WHERE type = 'UQ' AND OBJECT_NAME(parent_object_id) = N' DocExc';  
    GO  
    -- Delete the unique constraint.  
    ALTER TABLE dbo.DocExc   
    DROP CONSTRAINT UNQ_ColumnB_DocExc;  
    GO  
    ```  
  
 For more information, see [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md) and [sys.objects &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md).  
  
###  <a name="TsqlExample"></a>  