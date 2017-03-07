---
title: "Dataset Properties Dialog Box, Options | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "sql13.rtp.rptdesigner.datasetproperties.options.f1"
  - "10130"
ms.assetid: 95299049-71ba-427f-b723-775cb696243f
caps.latest.revision: 38
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Dataset Properties Dialog Box, Options
  Select **Options** on the **DatasetProperties** dialog box to change data options, such as collation options and subtotals, for the query. For more information, see [Collation and Unicode Support](../relational-databases/collations/collation-and-unicode-support.md).  
  
## Options  
 **Collation**  
 Select a locale that determines the collation sequence to be used for sorting data. **Default** indicates that the report server should attempt to derive the value from the data provider when the report runs. If the value cannot be derived, the default value is derived from the locale setting of the computer.  
  
 **Case sensitivity**  
 Select a value that determines case sensitivity. This option indicates whether the data is case-sensitive. You can set **Case Sensitivity** to **True**, **False**, or **Auto**. The default value, **Auto**, indicates that the report server should attempt to derive the value from the data provider when the report runs. If the data provider does not support the case-sensitivity type, the report runs as though the value were **False**. If you know the value and you know it is supported, choose **True**.  
  
 **Accent sensitivity**  
 Select a value that determines accent sensitivity. **Accent Sensitivity** indicates whether the data is accent sensitive and can be set to **True**, **False**, or **Auto**. The default value, **Auto**, indicates that the report server should attempt to derive the value from the data provider when the report is run. If the data provider does not support the accent sensitivity type, the report runs as though the value were **False**. If you know the value and you know it is supported, choose **True**.  
  
 **Kanatype sensitivity**  
 Select a value that determines kanatype sensitivity. This option indicates whether the data is kanatype sensitive; it can be set to **True**, **False**, or **Auto**. The default value, **Auto**, indicates that the report server should attempt to derive the value from the data provider when the report runs. If the data provider does not support the kanatype sensitivity type, the report runs as though the value were **False**. If you know the value and you know it is supported, choose **True**.  
  
 **Width sensitivity**  
 Select a value that determines width sensitivity. This option indicates whether the data is width-sensitive and can be set to **True**, **False**, or **Auto**. The default value, **Auto**, indicates that the report server should attempt to derive the value from the data provider when the report runs. If the data provider does not support the width sensitivity type, the report runs as though the value were **False**. If you know the value and you know it is supported, choose **True**.  
  
 **Interpret subtotals as detail rows**  
 Select a value that indicates whether you want subtotal rows to be interpreted as detail rows instead of aggregate rows. The default value, **Auto**, indicates that the subtotal rows should be treated as detail rows if the report does not use the **Aggregate**() function to access any fields in the data set. If you want subtotal rows to be interpreted as aggregate rows, choose **False**. If you want the subtotal rows to be interpreted as detail rows and you know that they do not use the **Aggregate**() function, choose **True**.  
  
## See Also  
 [Set the Locale for a Report or Text Box &#40;Reporting Services&#41;](../reporting-services/report-design/set-the-locale-for-a-report-or-text-box-reporting-services.md)   
 [Report Datasets &#40;SSRS&#41;](../reporting-services/report-data/report-datasets-ssrs.md)   
 [Windows Collation Name &#40;Transact-SQL&#41;](../t-sql/statements/windows-collation-name-transact-sql.md)   
 [SQL Server Collation Name &#40;Transact-SQL&#41;](../t-sql/statements/sql-server-collation-name-transact-sql.md)   
 [Aggregate Function &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/report-builder-functions-aggregate-function.md)  
  
  