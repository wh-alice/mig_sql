---
title: "View Job Step Information | Microsoft Docs"
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
  - "displaying job step information"
  - "jobs [SQL Server Agent], viewing"
  - "SQL Server Agent jobs, viewing"
  - "viewing job step information"
ms.assetid: e3f06492-dc86-4e06-b186-ea58aff6d591
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
# View Job Step Information
This topic describes how to view job step details in the Job Step Properties dialog. It also includes information about viewing job step output.  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To view job step information, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
If the job step has been configured to write its output to a table or file and the job has run at least once, you can view its output on the **Advanced** page of the **Job Step Properties** dialog. When a job or job step is deleted, the output log is automatically deleted.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
You can view only those jobs that you own, unless you are a member of the **sysadmin** fixed server role. Members of this role can view all jobs and job step details.  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To view job step information  
  
1.  In **Object Explorer,** connect to an instance of the Microsoft SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, expand **Jobs**, right-click the job that contains the job step to be viewed, and click **Properties**.  
  
3.  In the **Job Properties** dialog, click the **Steps** page.  
  
4.  Click the job step to be viewed, and click **Edit**.  
  
5.  On the **General** page of the **Job Step Properties** dialog, you can view the type of job step and what it does.  
  
6.  Click the **Advanced** page to view the actions SQL Server Agent takes if the job step succeeds or fails, how many times the job step should be attempted, where the job step output is written, and the user the job step runs as.  
  
#### To view job step output  
  
1.  In the **Job Step Properties** dialog, click the **Advanced** page.  
  
2.  Depending on the version of SQL Server you are connected to, you can view either the job step output file or table as follows:  
  
    -   When you are connected to SQL Server or later, you can click **View** only when **Log to table** is checked. In this case, the job step output is written to the **sysjobstepslogs** table in the **msdb** database.  
  
    -   The **View** button is disabled when job step output is written to a file. To view a job step output file, use Notepad.  
  
