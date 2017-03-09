---
title: "Modify Check Constraints | Microsoft Docs"
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
  - "CHECK constraints, modifying"
  - "modifying constraints"
  - "constraints [SQL Server], check"
  - "constraints [SQL Server], modifying"
ms.assetid: f22daef8-e350-40ef-8ff0-b5f87d1d9e56
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# Modify Check Constraints
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  You can modify a check constraint in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] when you want to change the constraint expression or the options that enable or disable the constraint for specific conditions.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To modify a check constraint using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the table.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To modify a check constraint  
  
1.  In the **Object Explorer**, right-click the table containing the check constraint and select **Design**.  
  
2.  On the **Table Designer** menu, click **Check Constraints…**.  
  
3.  In the **Check Constraints** dialog box, under **Selected Check Constraint**, select the constraint you wish to edit.  
  
4.  Complete an action from the following table:  
  
    |To|Follow these steps|  
    |--------|------------------------|  
    |Edit the constraint expression|Type the new expression in the **Expression** field.|  
    |Rename the constraint|Type a new name in the **Name** field.|  
    |Apply the constraint to existing data|Select the **Check Existing Data on Creation or Enabling** option.|  
    |Disable the constraint when new data is added to the table or when existing data is updated in the table.|Clear the **Enforce Constraint for INSERTs and UPDATEs** option.|  
    |Disable the constraint when a replication agent inserts or updates data in your table.|Clear the **Enforce For Replication** option.|  
  
    > [!NOTE]  
    >  Some databases have different functionality for check constraints.  
  
5.  Click **Close**.  
  
6.  On the **File** menu, click **Save***table name*.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
 **To modify a check constraint**  
  
 To modify a `CHECK` constraint using [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)], you must first delete the existing `CHECK` constraint and then re-create it with the new definition. For more information, see [Delete Check Constraints](../../relational-databases/tables/delete-check-constraints.md) and [Create Check Constraints](../../relational-databases/tables/create-check-constraints.md).  
  
###  <a name="TsqlExample"></a>  