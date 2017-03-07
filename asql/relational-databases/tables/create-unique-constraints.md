---
title: "Create Unique Constraints | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "UNIQUE_TSQL"
helpviewer_keywords: 
  - "UNIQUE constraints [SQL Server], creating"
  - "constraints [SQL Server], creating"
  - "constraints [SQL Server], unique"
ms.assetid: a86f9d6f-f242-43be-b65d-b3435b71b62a
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# Create Unique Constraints
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  You can create a unique constraint in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] to ensure no duplicate values are entered in specific columns that do not participate in a primary key. Creating a unique constraint automatically creates a corresponding unique index.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To create a unique constraint, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To create a unique constraint  
  
1.  In **Object Explorer**, right-click the table to which you want to add a unique constraint, and click **Design**.  
  
2.  On the **Table Designer** menu, click **Indexes/Keys**.  
  
3.  In the **Indexes/Keys** dialog box, click **Add**.  
  
4.  In the grid under **General**, click **Type** and choose **Unique Key** from the drop-down list box to the right of the property.  
  
5.  On the **File** menu, click **Save***table name*.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To create a unique constraint  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. The example creates the table `TransactionHistoryArchive4` and creates a unique constraint on the column `TransactionID`.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    CREATE TABLE Production.TransactionHistoryArchive4  
     (  
       TransactionID int NOT NULL,   
       CONSTRAINT AK_TransactionID UNIQUE(TransactionID)   
    );   
    GO  
  
    ```  
  
#### To create a unique constraint on an existing table  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. The example creates a unique constraint on the columns `PasswordHash` and `PasswordSalt` in the table `Person.Password`.  
  
    ```  
    USE AdventureWorks2012;   
    GO  
    ALTER TABLE Person.Password   
    ADD CONSTRAINT AK_Password UNIQUE (PasswordHash, PasswordSalt);   
    GO  
  
    ```  
  
#### To create a unique constraint in an new table  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. The example creates a table and defines a unique constraint on the column `TransactionID`.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    CREATE TABLE Production.TransactionHistoryArchive2  
    (  
       TransactionID int NOT NULL,  
       CONSTRAINT AK_TransactionID UNIQUE(TransactionID)  
    );  
    GO  
  
    ```  
  
     For more information, see [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md), [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md), and [table_constraint &#40;Transact-SQL&#41;](../Topic/table_constraint%20\(Transact-SQL\).md).  
  
###  <a name="TsqlExample"></a>  