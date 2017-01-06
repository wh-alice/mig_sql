---
title: "Designate a Fail-Safe Operator | Microsoft Docs"
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
  - "fail-safe operator [SQL Server]"
  - "jobs [SQL Server Agent], operators"
  - "notifications [SQL Server], job status"
ms.assetid: 0f4eb513-5c0a-4523-974e-e85c1deeb57f
caps.latest.revision: 4
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
# Designate a Fail-Safe Operator
A fail-safe operator is a user who receives the alert if the designated operator cannot be reached. This topic describes how to set a fail-safe operator to receive Microsoft SQL Server Agent alert notifications in SQL Server 2016 by using SQL Server Management Studio.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To designate a fail-safe operator, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   The Pager and **net send** options will be removed from SQL Server Agent in a future version of MicrosoftSQL Server. Avoid using these features in new development work, and plan to modify applications that currently use these features.  
  
-   Note that SQL Server Agent must be configured to use Database Mail to send e-mail and pager notifications to operators. For more information, see [Assign Alerts to an Operator](http://msdn.microsoft.com/library/ms190038.aspx).  
  
-   SQL Server Management Studio provides an easy, graphical way to manage jobs, and is the recommended way to create and manage the job infrastructure.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
Only members of the **sysadmin** fixed server role can designate fail-safe operators.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To designate a fail-safe operator  
  
1.  In **Object Explorer,** click the plus sign to expand the server that contains the SQL Server Agent operator that you want to designate as a fail-safe.  
  
2.  Right-click **SQL Server Agent** and select **Properties**.  
  
3.  In the **SQL Server Agent Properties –***server_name* dialog box, under **Select a page**, select **Alert System**.  
  
4.  Under **Fail-safe operator**, select **Enable fail-safe operator**.  
  
5.  In the **Operator** list, select the operator that you want to make a fail-safe.  
  
6.  Select either any or all of the following check boxes to specify how the operator will be notified: **E-mail**, **Pager**, or **Net send**.  
  
7.  When finished, click **OK**.  
  
