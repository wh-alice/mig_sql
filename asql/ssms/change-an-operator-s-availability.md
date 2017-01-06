---
title: "Change an Operator&#39;s Availability | Microsoft Docs"
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
  - "reactivating operators"
  - "removing operators"
  - "deleting operators"
  - "available operators [SQL Server]"
  - "dropping operators"
  - "jobs [SQL Server Agent], operators"
  - "notifications [SQL Server], job status"
  - "disabling operators"
  - "operators (users) [Database Engine], changing availability with Management Studio"
ms.assetid: 10d58b92-b67b-47e2-af9c-9f9fd6968bba
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
# Change an Operator&#39;s Availability
This topic describes how to change an operator's schedule for receiving alert notifications in SQL Server 2016 by using SQL Server Management Studio or Transact-SQL.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To change an operator's availability, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
Only members of the **sysadmin** fixed server role can edit operators.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To change an operator's availability  
  
1.  In **Object Explorer**, click the plus sign to expand server that contains the operator that you want to enable or disable.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Click the plus sign to expand the **Operators** folder.  
  
4.  Right-click the operator that you want to enable or disable and select **Properties**, then click the **General** tab.  
  
5.  In the *operator_name***Properties** dialog box, select or clear the **Enabled** check box.  
  
6.  Click **OK**.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To change an operator's availability  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- disables the 'François Ajenstat' operator  
    USE msdb ;  
    GO  
  
    EXEC dbo.sp_update_operator   
        @name = N'François Ajenstat',  
        @enabled = 0;  
    GO  
    ```  
  
For more information, see [sp_update_operator (Transact-SQL)](http://msdn.microsoft.com/en-us/231750a6-4828-4d03-afe6-b91d38c42ed3).  
  
