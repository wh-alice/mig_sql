---
title: "Resize the Job History Log | Microsoft Docs"
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
  - "resizing job history log"
  - "size [SQL Server], job history log"
  - "logs [SQL Server], jobs"
  - "SQL Server Agent jobs, history"
  - "historical information [SQL Server], jobs"
ms.assetid: ddee1ce8-9d1b-4017-9894-bf7256aed95d
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
# Resize the Job History Log
This topic describes how to set size limits for Microsoft SQL Server Agent job history logs in SQL Server 2016 by using SQL Server Management Studio.  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To set size limits for job history logs, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To resize the job history log based on raw size  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Right-click **SQL Server Agent**, and then click **Properties**.  
  
3.  Select the **History** page, and then confirm that **Limit size of job history log**is checked.  
  
4.  In the **Maximum job history log size** box, enter the maximum number of rows the job history log should allow.  
  
5.  In the **Maximum job history rows per job** box, enter the maximum number of job history rows to allow for a job.  
  
#### To resize the job history log based on time  
  
1.  In **Object Explorer**, connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Right-click **SQL Server Agent**, and then click **Properties**.  
  
3.  Select the **History** page, and then click **Automatically remove agent history**.  
  
4.  Select the appropriate number of **Days(s)**, **Week(s)**, or **Month(s)**.  
  
