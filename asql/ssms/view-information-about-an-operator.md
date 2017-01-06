---
title: "View Information About an Operator | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Agent jobs, operators"
  - "viewing operators"
  - "operators (users) [Database Engine], viewing with Management Studio"
  - "jobs [SQL Server Agent], operators"
  - "notifications [SQL Server], job status"
  - "displaying operators"
ms.assetid: 92c82cdf-f704-444e-9539-82aea7fe6fb7
caps.latest.revision: 5
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# View Information About an Operator
This topic describes how to view information about a Microsoft SQL Server Agent operator in SQL Server 2016 by using SQL Server Management Studio or Transact-SQL.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To view information about an operator, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
By default, members of the **sysadmin** fixed server role can execute this stored procedure. Other users must be granted one of the following SQL Server Agent fixed database roles in the **msdb** database:  
  
-   **SQLAgentUserRole**  
  
-   **SQLAgentReaderRole**  
  
-   **SQLAgentOperatorRole**  
  
For details about the permissions of these roles, see [SQL Server Agent Fixed Database Roles](../ssms/sql-server-agent-fixed-database-roles.md).  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To view information about an operator  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the operator you want to view.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Click the plus sign to expand the **Operators** folder.  
  
4.  Right-click the operator that you want to view and select **Properties**.  
  
    For more information on the available options contained in the *operator_name***Properties** dialog box, see:  
  
    -   [Operator Properties - New Operator &#40;General Page&#41;](../ssms/operator-properties---new-operator--general-page-.md)  
  
    -   [Operator Properties - New Operator &#40;Notifications Page&#41;](../ssms/operator-properties---new-operator--notifications-page-.md)  
  
    -   [Operator Properties &#40;History Page&#41;](../ssms/operator-properties--history-page-.md)  
  
5.  When finished, click **OK**.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To view information about an operator  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- reports information about operator François Ajenstat   
    -- This example assumes that the operator exists.  
    USE msdb ;  
    GO  
  
    EXEC dbo.sp_help_operator  
        @operator_name = N'François Ajenstat' ;  
    GO  
    ```  
  
For more information, see [sp_help_operator (Transact-SQL)](http://msdn.microsoft.com/en-us/caedc43d-44b8-415a-897e-92923f6de3b8).  
  
