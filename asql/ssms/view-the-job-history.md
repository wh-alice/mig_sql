---
title: "View the Job History | Microsoft Docs"
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
  - "jobs [SQL Server Agent], history"
  - "viewing job history"
  - "SQL Server Agent jobs, history"
  - "historical information [SQL Server], jobs"
  - "displaying job history"
ms.assetid: 3bbd1556-abdb-48a3-b249-546eace76343
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
# View the Job History
This topic describes how to view the Microsoft SQL Server Agent job history log in SQL Server 2016 by using SQL Server Management Studio, Transact-SQL, or SQL Server Management Objects.  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To view the job history log, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To view the job history log  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, and then expand **Jobs**.  
  
3.  Right-click a job, and then click **View History**.  
  
4.  In the Log File Viewer, view the job history.  
  
5.  To update the job history, click **Refresh**. To view fewer rows, click the **Filter** button and enter filter parameters.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To view the job history log  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- lists all job information for the NightlyBackups job.  
    USE msdb ;  
    GO  
  
    EXEC dbo.sp_help_jobhistory   
        @job_name = N'NightlyBackups' ;  
    GO  
    ```  
  
For more information, see [sp_help_jobhistory (Transact-SQL)](http://msdn.microsoft.com/en-us/a944d44e-411b-4735-8ce4-73888d4262d7).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To view the job history log**  
  
Call the **EnumHistory** method of the **Job** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell. For more information, see [SQL Server Management Objects (SMO)](http://msdn.microsoft.com/library/ms162169.aspx).  
  
