---
title: "Create an Operator | Microsoft Docs"
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
  - "jobs [SQL Server Agent], notification options"
  - "operators (users) [Database Engine], creating with Management Studio"
  - "SQL Server Agent jobs, notification options"
  - "jobs [SQL Server Agent], operators"
  - "notifications [SQL Server], job status"
ms.assetid: 1359d790-5905-4927-a208-e7155e7768a2
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
# Create an Operator
This topic describes how to configure a user to receive notifications about Microsoft SQL Server Agent jobs in SQL Server 2016 by using SQL Server Management Studio or Transact-SQL.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To create an operator, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
    [Transact-SQL](#TsqlProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   The Pager and **net send** options will be removed from SQL Server Agent in a future version of MicrosoftSQL Server. Avoid using these features in new development work, and plan to modify applications that currently use these features.  
  
-   Note that SQL Server Agent must be configured to use Database Mail to send e-mail and pager notifications to operators. For more information, see [Assign Alerts to an Operator](http://msdn.microsoft.com/library/ms190038.aspx).  
  
-   SQL Server Management Studio provides an easy, graphical way to manage jobs, and is the recommended way to create and manage the job infrastructure.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
Only members of the **sysadmin** fixed server role can create operators.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To create an operator  
  
1.  In **Object Explorer**, click the plus sign to expand the server where you want to create a SQL Server Agent operator.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Right-click the **Operators** folder and select **New Operator**.  
  
    The following options are available on the **General** page of the **New Operator** dialog box:  
  
    **Name**  
    Change the name of the operator.  
  
    **Enabled**  
    Enable the operator. When not enabled, no notifications are sent to the operator.  
  
    **E-mail name**  
    Specifies the e-mail address for the operator.  
  
    **Net send address**  
    Specify the address to use for **net send**.  
  
    **Pager e-mail name**  
    Specifies the e-mail address to use for the operator's pager.  
  
    **Pager on duty schedule**  
    Sets the times at which the pager is active.  
  
    **Monday - Sunday**  
    Select the days that the pager is active.  
  
    **Workday begin**  
    Select the time of day after which SQL Server Agent sends messages to the pager.  
  
    **Workday end**  
    Select the time of day after which SQL Server Agent no longer sends messages to the pager.  
  
    The following options are available on the **Notifications** page of the **New Operator** dialog box:  
  
    **Alerts**  
    View the alerts in the instance.  
  
    **Jobs**  
    View the jobs in the instance.  
  
    **Alert list**  
    Lists the alerts in the instance.  
  
    **Job list**  
    Lists the jobs in the instance.  
  
    **E-mail**  
    Notify this operator using e-mail.  
  
    **Pager**  
    Notify this operator by sending e-mail to the pager address.  
  
    **Net send**  
    Notify this operator using **net send**.  
  
4.  When finished creating the new operator, click **OK**.  
  
## <a name="TsqlProcedure"></a>Using Transact-SQL  
  
#### To create an operator  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- sets up the operator information for user 'danwi.' The operator is enabled.   
    -- SQL Server Agent sends notifications by pager from Monday through Friday from 8 A.M. to 5 P.M.  
    USE msdb ;  
    GO  
  
    EXEC dbo.sp_add_operator  
        @name = N'Dan Wilson',  
        @enabled = 1,  
        @email_address = N'danwi',  
        @pager_address = N'5551290AW@pager.Adventure-Works.com',  
        @weekday_pager_start_time = 080000,  
        @weekday_pager_end_time = 170000,  
        @pager_days = 62 ;  
    GO  
    ```  
  
For more information, see [sp_add_operator (Transact-SQL)](http://msdn.microsoft.com/en-us/817cd98a-4dff-4ed8-a546-f336c144d1e0).  
  
