---
title: "Create an Alert Using an Error Number | Microsoft Docs"
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
  - "alerts [SQL Server], creating"
  - "SQL Server Agent, alerts"
  - "alerts [SQL Server], error numbers"
ms.assetid: 03dd7fac-5073-4f86-babd-37e45a86023c
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
# Create an Alert Using an Error Number
This topic describes how to create a Microsoft SQL Server Agent alert occurs in SQL Server 2016 that will be raised when an error of a specific number occurs by using SQL Server Management Studio or Transact-SQL.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To create an alert using an error number, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   SQL Server Management Studio provides an easy, graphical way to manage the entire alerting system and is the recommended way to configure an alert infrastructure.  
  
-   Events generated with **xp_logevent** occur in the master database. Therefore, **xp_logevent** does not trigger an alert unless the **@database_name** for the alert is **'master'** or NULL.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
By default, only members of the **sysadmin** fixed server role can execute **sp_add_alert**.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To create an alert using an error number  
  
1.  In **Object Explorer,** click the plus sign to expand the server where you want to create an alert using an error number.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Right-click **Alerts** and select **New Alert**.  
  
4.  In the **New Alert** dialog box, in the **Name** box, enter a name for this alert.  
  
5.  Check the **Enable** check box to enable the alert to run. By default, **Enable** is checked.  
  
6.  In the **Type** list, select **SQL Server event alert**.  
  
7.  Under **Event alert definition**, in the **Database name** list, select a database to restrict the alert to a specific database.  
  
8.  Under **Alerts will be raised based on**, click **Error number**, and then type a valid error number for the alert. Alternately, click **Severity** and then select the specific severity that will raise the alert.  
  
9. Check the box corresponding to **Raise alert when message contains** check box to restrict the alert to a particular character sequence, and then enter a keyword or character string for the **Message text**. The maximum number of characters is 100.  
  
10. Click **OK**.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To create an alert using an error number  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- adds an alert (Test Alert) that runs the Back up the AdventureWorks2012 Database job when fired   
    -- assumes that the message 55001 and the Back up the AdventureWorks2012 Database job already exist.  
    USE msdb ;  
    GO  
  
    EXEC dbo.sp_add_alert  
        @name = N'Test Alert',  
        @message_id = 55001,   
       @severity = 0,   
       @notification_message = N'Error 55001 has occurred. The database will be backed up...',   
       @job_name = N'Back up the AdventureWorks2012 Database' ;  
    GO  
    ```  
  
For more information, see [sp_add_alert (Transact-SQL)](http://msdn.microsoft.com/en-us/d9b41853-e22d-4813-a79f-57efb4511f09).  
  
