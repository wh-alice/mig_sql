---
title: "Rename a SQL Server Agent Error Log (SQL Server Management Studio) | Microsoft Docs"
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
  - "logs [SQL Server], SQL Server Agent"
  - "renaming SQL Server Agent error log"
  - "SQL Server Agent, errors"
  - "errors [SQL Server Agent]"
ms.assetid: dee2b199-48af-44cb-9177-d029a5edb169
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
# Rename a SQL Server Agent Error Log (SQL Server Management Studio)
This topic describes how to rename the file where Microsoft SQL Server Agent errors are written in SQL Server 2016 by using SQL Server Management Studio.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   [To rename a SQL Server Agent error log using SQL Server Management Studio](#SSMSProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   Object Explorer only displays the SQL Server Agent node if you have permission to use it.  
  
-   SQL Server Agent will not write to the new log file until the SQL Server Agent service is restarted.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
To perform its functions, SQL Server Agent must be configured to use the credentials of an account that is a member of the **sysadmin** fixed server role in SQL Server. The account must have the following Windows permissions:  
  
-   Log on as a service (SeServiceLogonRight)  
  
-   Replace a process-level token (SeAssignPrimaryTokenPrivilege)  
  
-   Bypass traverse checking (SeChangeNotifyPrivilege)  
  
-   Adjust memory quotas for a process (SeIncreaseQuotaPrivilege)  
  
For more information about the Windows permissions required for the SQL Server Agent service account, see [Select an Account for the SQL Server Agent Service](../ssms/select-an-account-for-the-sql-server-agent-service.md) and [Setting Up Windows Service Accounts](http://msdn.microsoft.com/en-us/309b9dac-0b3a-4617-85ef-c4519ce9d014).  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To rename a SQL Server Agent error log  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the SQL Server Agent error log that you want to rename.  
  
2.  Click the plus sign to expand **SQL Server Agent**.  
  
3.  Right-click the **Error Logs** folder and select **Configure**.  
  
4.  In the **Configure SQL Server Agent Error Logs** dialog box, in the **Error log file** box, enter the new file path and file name for the error log. Alternately, click the ellipsis **(...)** to open the **Specify agent error log location** dialog box.  
  
5.  When finished, click **OK**.  
  
