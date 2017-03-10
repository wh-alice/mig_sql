---
title: "Rename Statistics | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-statistics"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "renaming statistics"
  - "statistics [SQL Server], renaming"
ms.assetid: a3bed7b7-3dc5-4b33-b1c6-67c27f573764
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# Rename Statistics
  You can rename a statistics object in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To rename a statistics object, using:**  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
 By default, creating an index creates a statistic on the key columns of that index. Therefore, renaming the index automatically renames the statistics object, and vice versa.  
  
 Changing any part of an object name can break scripts and stored procedures. Instead of renaming, we recommend that you drop the statistics object and re-create it with the new name.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table or view.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To rename a statistics object  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE AdventureWorks2012;  
    GO  
    EXEC sp_rename N'AK_Employee_LoginID', N'AK_Emp_Login', N'STATISTICS';   
    GO  
    ```  
  
 For more information, see [sp_rename &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-rename-transact-sql.md).  
  
  