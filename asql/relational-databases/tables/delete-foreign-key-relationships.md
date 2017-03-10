---
title: "Delete Foreign Key Relationships | Microsoft Docs"
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
  - "foreign keys [SQL Server], deleting"
  - "removing foreign keys"
  - "deleting foreign keys"
ms.assetid: 9c9e9ae4-9e03-4137-acb6-b18928a0c4ca
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Delete Foreign Key Relationships
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  You can delete a foreign key constraint in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. Deleting a foreign key constraint removes the requirement to enforce referential integrity.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To delete a foreign key constraint, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To delete a foreign key constraint  
  
1.  In **Object Explorer**, expand the table with the constraint and then expand **Keys**.  
  
2.  Right-click the constraint and then click **Delete**.  
  
3.  In the **Delete Object** dialog box, click **OK**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To delete a foreign key constraint  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    ALTER TABLE dbo.DocExe   
    DROP CONSTRAINT FK_Column_B;   
    GO  
    ```  
  
 For more information, see [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md).  
  
  