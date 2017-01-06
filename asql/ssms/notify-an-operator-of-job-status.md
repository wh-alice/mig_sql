---
title: "Notify an Operator of Job Status | Microsoft Docs"
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
  - "status information [SQL Server], jobs"
  - "jobs [SQL Server Agent], notification options"
  - "SQL Server Agent jobs, status"
  - "jobs [SQL Server Agent], status"
  - "SQL Server Agent jobs, notification options"
  - "notifications [SQL Server], job status"
ms.assetid: e7399505-27ac-48d9-a637-73bf92b9df49
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
# Notify an Operator of Job Status
This topic describes how to set notification options in SQL Server 2016 by using SQL Server Management Studio, Transact-SQL, or SQL Server Management Objects, so Microsoft SQL Server Agent can send notifications to operators about jobs.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To notify an operator of job status, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To notify an operator of job status  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, expand **Jobs**, right-click the job you want to edit, and select **Properties**.  
  
3.  In the **Job Properties** dialog box, select the **Notifications** page.  
  
4.  If you want to notify an operator by e-mail, check **E-mail**, select an operator from the list, and then select one of the following:  
  
    -   **When the job succeeds** to notify the operator when the job completes successfully.  
  
    -   **When the job fails** to notify the operator when the job completes unsuccessfully.  
  
    -   **When the job completes** to notify the operator regardless of completion status.  
  
5.  If you want to notify an operator by pager, check **Page**, select an operator from the list, and then select one of the following:  
  
    -   **When the job succeeds** to notify the operator when the job completes successfully.  
  
    -   **When the job fails** to notify the operator when the job completes unsuccessfully.  
  
    -   **When the job completes** to notify the operator regardless of completion status.  
  
6.  If you want to notify an operator by net send, check **Net send**, select an operator from the list, and then select one of the following:  
  
    -   **When the job succeeds** to notify the operator when the job completes successfully.  
  
    -   **When the job fails** to notify the operator when the job completes unsuccessfully.  
  
    -   **When the job completes** to notify the operator regardless of completion status.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To notify an operator of job status  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- adds an e-mail notification for the specified alert (Test Alert).  
    -- This example assumes that Test Alert already exists and that François Ajenstat is a valid operator name.  
    USE msdb ;  
    GO  
    EXEC dbo.sp_add_notification   
    @alert_name = N'Test Alert',   
    @operator_name = N'François Ajenstat',   
    @notification_method = 1 ;  
    GO  
    ```  
  
For more information, see [sp_add_notification (Transact-SQL)](http://msdn.microsoft.com/en-us/0525e0a2-ed0b-4e69-8a4c-a9e3e3622fbd).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To notify an operator of job status**  
  
Use the **Job** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell. For more information, see [SQL Server Management Objects (SMO)](http://msdn.microsoft.com/library/ms162169.aspx).  
  
