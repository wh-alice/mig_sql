---
title: "Create Nonclustered Indexes | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-indexes"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "index creation [SQL Server], nonclustered indexes"
  - "nonclustered indexes [SQL Server], creating"
  - "nonclustered indexes [SQL Server], UNIQUE constraint"
  - "indexes [SQL Server], nonclustered"
  - "nonclustered indexes [SQL Server], PRIMARY KEY constraint"
ms.assetid: 9402029a-1227-46c4-93aa-c2122eb1b943
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# Create Nonclustered Indexes
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  You can create nonclustered indexes in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. A nonclustered index is an index structure separate from the data stored in a table that reorders one or more selected columns. Nonclustered indexes can often help you find data more quickly than searching the underlying table; queries can sometimes be answered entirely by the data in the nonclustered index, or the nonclustered index can point the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] to the rows in the underlying table. Generally, nonclustered indexes are created to improve the performance of frequently used queries not covered by the clustered index or to locate rows in a table without a clustered index (called a heap). You can create multiple nonclustered indexes on a table or indexed view.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Typical Implementations](#Implementations)  
  
     [Security](#Security)  
  
-   **To create a nonclustered index, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Implementations"></a> Typical Implementations  
 Nonclustered indexes are implemented in the following ways:  
  
-   **UNIQUE constraints**  
  
     When you create a UNIQUE constraint, a unique nonclustered index is created to enforce a UNIQUE constraint by default. You can specify a unique clustered index if a clustered index on the table does not already exist. For more information, see [Unique Constraints and Check Constraints](../../relational-databases/tables/unique-constraints-and-check-constraints.md).  
  
-   **Index independent of a constraint**  
  
     By default, a nonclustered index is created if clustered is not specified. The maximum number of nonclustered indexes that can be created per table is 999. This includes any indexes created by PRIMARY KEY or UNIQUE constraints, but does not include XML indexes.  
  
-   **Nonclustered index on an indexed view**  
  
     After a unique clustered index has been created on a view, nonclustered indexes can be created. For more information, see [Create Indexed Views](../../relational-databases/views/create-indexed-views.md).  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table or view. User must be a member of the **sysadmin** fixed server role or the **db_ddladmin** and **db_owner** fixed database roles.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To create a nonclustered index by using the Table Designer  
  
1.  In Object Explorer, expand the database that contains the table on which you want to create a nonclustered index.  
  
2.  Expand the **Tables** folder.  
  
3.  Right-click the table on which you want to create a nonclustered index and select **Design**.  
  
4.  On the **Table Designer** menu, click **Indexes/Keys**.  
  
5.  In the **Indexes/Keys** dialog box, click **Add**.  
  
6.  Select the new index in the **Selected Primary/Unique Key or Index** text box.  
  
7.  In the grid, select **Create as Clustered**, and choose **No** from the drop-down list to the right of the property.  
  
8.  Click **Close**.  
  
9. On the **File** menu, click **Save***table_name*.  
  
#### To create a nonclustered index by using Object Explorer  
  
1.  In Object Explorer, expand the database that contains the table on which you want to create a nonclustered index.  
  
2.  Expand the **Tables** folder.  
  
3.  Expand the table on which you want to create a nonclustered index.  
  
4.  Right-click the **Indexes** folder, point to **New Index**, and select **Non-Clustered Index…**.  
  
5.  In the **New Index** dialog box, on the **General** page, enter the name of the new index in the **Index name** box.  
  
6.  Under **Index key columns**, click **Add…**.  
  
7.  In the **Select Columns from***table_name* dialog box, select the check box or check boxes of the table column or columns to be added to the nonclustered index.  
  
8.  Click **OK**.  
  
9. In the **New Index** dialog box, click **OK**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To create a nonclustered index on a table  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    -- Find an existing index named IX_ProductVendor_VendorID and delete it if found.   
    IF EXISTS (SELECT name FROM sys.indexes  
                WHERE name = N'IX_ProductVendor_VendorID')   
        DROP INDEX IX_ProductVendor_VendorID ON Purchasing.ProductVendor;   
    GO  
    -- Create a nonclustered index called IX_ProductVendor_VendorID   
    -- on the Purchasing.ProductVendor table using the BusinessEntityID column.   
    CREATE NONCLUSTERED INDEX IX_ProductVendor_VendorID   
        ON Purchasing.ProductVendor (BusinessEntityID);   
    GO  
    ```  
  
 For more information, see [CREATE INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-index-transact-sql.md).  
  
  