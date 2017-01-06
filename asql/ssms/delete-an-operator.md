---
title: "Delete an Operator | Microsoft Docs"
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
  - "canceling operators"
  - "removing operators"
  - "deleting operators"
  - "dropping operators"
  - "jobs [SQL Server Agent], operators"
  - "operators (users) [Database Engine], deleting with Management Studio"
ms.assetid: 2b7b8627-082d-4189-8584-abd3a9b604cf
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
# Delete an Operator
This topic describes how to remove an operator so they no longer receive Microsoft SQL Server Agent alert notifications in SQL Server 2016 by using SQL Server Management Studio or Transact-SQL.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To delete an operator, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
When an operator is removed, all the notifications associated with the operator are also removed.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
Members of the **sysadmin** fixed server role can delete operators.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To delete an operator  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the operator you want to delete.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Click the plus sign to expand the **Operators** folder.  
  
4.  Right-click the operator that you want to delete and select **Delete**.  
  
5.  In the **Delete Object** dialog box, make sure that the correct operator is selected, and then click **OK**. If you want another operator to receive the alerts and jobs sent to the deleted operator, check **Reassign to** and select an operator in the list.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To delete an operator  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- deletes operator 'Test Operator' and reassigns all alerts and jobs sent to that operator to 'François Ajenstat'  
    USE msdb ;  
    GO  
  
    EXEC sp_delete_operator @name = 'Test Operator',  
        @reassign_to_operator = 'François Ajenstat';  
    GO  
    ```  
  
For more information, see [sp_delete_operator (Transact-SQL)](http://msdn.microsoft.com/en-us/ff6c2c4b-e9fe-4d0c-bbc2-a2ddcc1acb95).  
  
