---
title: "View or Modify the Properties of a Policy-Based Management Policy | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-06"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Policy-Based Management, modify policies"
  - "Policy-Based Management, view policies"
ms.assetid: ba805504-5db5-4731-a8da-a0e89cb20c37
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
---
# View or Modify the Properties of a Policy-Based Management Policy
  This topic describes how to view or modify a Policy-Based Management policy's properties in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
  
####  <a name="Permissions"></a> Permissions  
 Requires membership in the PolicyAdministratorRole role in the msdb database.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view the properties of all policies on an object  
  
1.  In Object Explorer, right-click a server, server object, database, or database object, point to **Policies** and select **View**. For more information on the available options in the **View Policies –***object_name* dialog box, see [View Policies Dialog Box](../../relational-databases/policy-based-management/view-policies-dialog-box.md).  
  
2.  When finished, click **Close**.  
  
#### To view or modify a specific policy's properties  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the Policy-Based Management policy that you want to view or modify.  
  
2.  Click the plus sign to expand the **Management** folder.  
  
3.  Click the plus sign to expand **Policy Management**.  
  
4.  Click the plus sign to expand the **Policies** folder.  
  
5.  Right-click the policy that you want to view or modify and select **Properties**. For more information on the available options in the **Open Policy –***policy_name* dialog box, see [Create New Policy or Open Policy Dialog Box, General Page](../../relational-databases/policy-based-management/create-new-policy-or-open-policy-dialog-box-general-page.md) and [Create New Policy or Open Policy Dialog Box, Description Page](../../relational-databases/policy-based-management/create-new-policy-or-open-policy-dialog-box-description-page.md).  
  
6.  When finished, click **OK**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To view a policy's properties  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE msdb;  
    GO  
    SELECT name,  
       execution_mode,  
       description,  
       is_enabled,  
       job_id  
    FROM syspolicy_policies;  
    GO  
    ```  
  
 For more information, see [syspolicy_policies &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/syspolicy-policies-transact-sql.md).  
  
  