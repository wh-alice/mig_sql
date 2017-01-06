---
title: "Unsuppress Run Custom Report Warnings | Microsoft Docs"
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
  - "SQL Server Management Studio [SQL Server], custom reports"
ms.assetid: 0deed900-c910-4d12-aac0-6ab9e39eb068
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
# Unsuppress Run Custom Report Warnings
There are two warning dialog boxes for custom reports. This topic describes how to unsuppress the display of these boxes in SQL Server 2016 by using SQL Server Management Studio.  
  
By default, the **Run Custom Reports** dialog box appears before a custom report runs. If you select the **Please don't show this warning again** check box, the dialog box will no longer appear. Also by default, the **Run Custom Reports** dialog box appears when you open a custom report and then click a link to open another custom report. This dialog box displays the fill path to the drill-through custom report file. If you select the **Please don't show this warning again** check box, the dialog box will no longer appear.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To unsuppress the main custom report warning dialog box  
  
1.  Connect to \<*Server*>\\<*Share*>|\<*Drive*>\Documents and Settings\\<UserProfile>\Application Data\Microsoft\Microsoft SQL Server\130\Tools\Shell\reports.xml.  
  
2.  Right-click **reports.xml**, and then click **Edit**.  
  
3.  Change**<SuppressWarning>true\<\/SuppressWarning> to <SuppressWarning>false\<\/SuppressWarning>**.  
  
4.  Restart SQL Server Management Studio.  
  
#### To unsuppress the drill-through custom report warning dialog box  
  
1.  Connect to \<*Server*>\\<*Share*>|\<*Drive*>\Documents and Settings\\<UserProfile>\Application Data\Microsoft\Microsoft SQL Server\130\Tools\Shell\reports.xml.  
  
2.  Right-click **reports.xml**, and click **Edit**.  
  
3.  Change **<SuppressDrillthroughWarning>true\<\/SuppressDrillthroughWarning>to <SuppressDrillthroughWarning>false\<\/SuppressDrillthroughWarning>**.  
  
4.  Restart SQL Server Management Studio.  
  
## See Also  
[Custom Reports in Management Studio](../ssms/custom-reports-in-management-studio.md)  
[Add a Custom Report to Management Studio](../ssms/add-a-custom-report-to-management-studio.md)  
[Use Custom Reports with Object Explorer Node Properties](../ssms/use-custom-reports-with-object-explorer-node-properties.md)  
  
