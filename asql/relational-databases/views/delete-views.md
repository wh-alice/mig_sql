---
title: "Delete Views | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-views"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "dropping views"
  - "deleting views"
  - "views [SQL Server], deleting"
  - "removing views"
ms.assetid: 6823c7f8-06ca-4bda-8482-7092f03d52a0
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Delete Views
  You can delete (drop) views in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To delete a view from a database, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   When you drop a view, the definition of the view and other information about the view is deleted from the system catalog. All permissions for the view are also deleted.  
  
-   Any view on a table that is dropped by using `DROP TABLE` must be dropped explicitly by using `DROP VIEW`.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on SCHEMA or CONTROL permission on OBJECT.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To delete a view from a database  
  
1.  In **Object Explorer**, expand the database that contains the view you want to delete, and then expand the **Views** folder.  
  
2.  Right-click the view you want to delete and click **Delete**.  
  
3.  In the **Delete Object** dialog box, click **OK**.  
  
    > [!IMPORTANT]  
    >  Click **Show Dependencies** in the **Delete Object** dialog box to open the *view_name***Dependencies** dialog box. This will show all of the objects that depend on the view and all of the objects on which the view depends.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To delete a view from a database  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. The example deletes the specified view only if the view already exists.  
  
    ```  
    USE AdventureWorks2012 ;  
    GO  
    IF OBJECT_ID ('HumanResources.EmployeeHireDate', 'V') IS NOT NULL  
    DROP VIEW HumanResources.EmployeeHireDate;  
    GO  
    ```  
  
 For more information, see [DROP VIEW &#40;Transact-SQL&#41;](../../t-sql/statements/drop-view-transact-sql.md).  
  
  