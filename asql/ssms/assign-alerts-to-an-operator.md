---
title: "Assign Alerts to an Operator | Microsoft Docs"
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
  - "assigning alerts to operator"
  - "SQL Server Agent, alerts"
  - "alerts [SQL Server], assigning to operator"
  - "jobs [SQL Server Agent], operators"
  - "notifications [SQL Server], job status"
ms.assetid: aa818155-6fa2-4565-a09f-5c7e31c89754
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
# Assign Alerts to an Operator
This topic describes how to assign Microsoft SQL Server Agent alerts to operators so they can receive notifications about jobs in SQL Server 2016 by using SQL Server Management Studio or Transact-SQL.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To assign alerts to an operator, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   SQL Server Management Studio provides an easy, graphical way to manage the entire alerting system. Using Management Studio is the recommended way to configure your alert infrastructure.  
  
-   To send a notification in response to an alert, you must first configure SQL Server Agent to send mail. For more information, see [Configure SQL Server Agent Mail to Use Database Mail](http://msdn.microsoft.com/en-us/4b8b61bd-4bd1-43cd-b6e5-c6ed2e101dce).  
  
-   If a failure occurs when sending an e-mail message or pager notification, the failure is reported in the SQL Server Agent service error log.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
Only members of the **sysadmin** fixed server role can assign alerts to operators.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To assign alerts to an operator  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the operator to which you want to assign an alert.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Click the plus sign to expand the **Operators** folder.  
  
4.  Right-click the operator to which you want to assign an alert and select **Properties**, and select the **Notifications** page.  
  
5.  In the *operator_name***Properties** dialog box, under **Select a page**, select **Notifications**.  
  
6.  Under **View notifications sent to this user by**, select **Alerts** to view a list of alerts sent to this operator or select **Jobs** to view a list of jobs that send notifications to this operator. Select one or more of the following checkboxes to define the notification method for each notification as necessary: **E-mail**, **Pager**, or **Net send**.  
  
7.  When finished, click **OK**.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To assign alerts to an operator  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- adds an e-mail notification for the specified alert (Test Alert)  
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
  
