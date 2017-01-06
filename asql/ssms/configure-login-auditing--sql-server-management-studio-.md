---
title: "Configure Login Auditing (SQL Server Management Studio) | Microsoft Docs"
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
  - "auditing [SQL Server]"
  - "audits [SQL Server], logins"
  - "logins [SQL Server], auditing"
ms.assetid: 16961116-57ac-4eef-8037-791b26ade548
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
# Configure Login Auditing (SQL Server Management Studio)
This topic describes how to configure login auditing in SQL Server 2016 to monitor SQL Server Database Engine login activity. Login auditing can be configured to write to the error log on the following events.  
  
-   Failed logins  
  
-   Successful logins  
  
-   Both failed and successful logins  
  
You must restart SQL Server before this option will take effect.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To configure login auditing  
  
1.  In SQL Server Management Studio, connect to an instance of the SQL Server Database Engine with Object Explorer.  
  
2.  In Object Explorer, right-click the server name, and then click **Properties**.  
  
3.  On the **Security** page, under **Login** auditing, click the desired option and close the **Server Properties** page.  
  
4.  In Object Explorer, right-click the server name, and then click **Restart**.  
  
