---
title: "Defect Multiple Target Servers from a Master Server | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Agent jobs, target servers"
  - "target servers [SQL Server], defecting"
  - "SQL Server Agent jobs, master servers"
  - "master servers [SQL Server], defecting target servers"
  - "defecting target servers"
  - "multiple target server defections"
ms.assetid: 61a3713b-403a-4806-bfc4-66db72ca1156
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
# Defect Multiple Target Servers from a Master Server
This topic describes how to defect multiple target servers from a multiserver administration configuration in SQL Server 2016 by using SQL Server Management Studio. Run this procedure from the master server.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To defect multiple target servers from a master server  
  
1.  In **Object Explorer**, expand a server that is configured as a master server.  
  
2.  Right-click **SQL Server Agent**, point to **Multi Server Administration**, and then click **Manage Target Servers**.  
  
3.  Click **Post Instructions**, and then in the **Instruction type** list, select **Defect**.  
  
4.  Under **Recipients**, do one of the following:  
  
    -   Click **All target servers** to defect all target servers of this master server. Use this option if you want to completely uninstall the current multiserver administration configuration.  
  
    -   Click **These target servers**, and then click the corresponding **Select** box, to defect some, but not all, target servers of this master server.  
  
## See Also  
[Create a Multiserver Environment](../ssms/create-a-multiserver-environment.md)  
[Automated Administration Across an Enterprise](../ssms/automated-administration-across-an-enterprise.md)  
[Defect a Target Server from a Master Server](../ssms/defect-a-target-server-from-a-master-server.md)  
  
