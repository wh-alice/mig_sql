---
title: "Verifying a Report Run | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "auditing [Reporting Services]"
  - "verifying report execution"
  - "logs [Reporting Services], verifying report run"
  - "report execution data [Reporting Services]"
  - "status information [Reporting Services]"
  - "report processing [Reporting Services], verifying execution"
  - "checking report execution"
ms.assetid: 18a98f2f-6b40-454e-9b37-568ed1a96458
caps.latest.revision: 37
ms.author: "asaxton"
manager: "erikre"
---
# Verifying a Report Run
  To view information about the status of report processing, you can use log files or refer to status information that is displayed with the report in Report Manager.  
  
## Sources of Report Execution Data  
 The report execution logs provide comprehensive information about report execution, including the name of the report, the name of the user who ran the report, report execution time, and the delivery extension used to distribute the report. To view and analyze this data, you can copy the report execution log into database tables that are easy to query and report on.  
  
 Log files contain many entries about report execution and other server activity. Because log files contain so much data, you may want to use Report Manager if you only want to verify when the report last ran. If you require additional information, you must view the log files.  
  
> [!NOTE]  
>  Report Manager does not show the processing times of reports that run on demand.  
  
 The following table describes how to view the processing date and time for various types of reports.  
  
|For this type of report|Date and time information is located here|To view the information, do the following|  
|-----------------------------|-----------------------------------------------|-----------------------------------------------|  
|A report that runs as a report snapshot.|On the Contents page. For more information, see [Contents Page &#40;Report Manager&#41;](http://msdn.microsoft.com/library/6b16869b-158a-4934-9c85-bee934b35378).|1) Locate the folder that contains the report.<br /><br /> 2) Set the folder in Details view.<br /><br /> 3) Note the date and time in the **When Run** column.|  
|A snapshot in report history.|On the History Properties page. For more information, see [Snapshot Options Properties Page &#40;Report Manager&#41;](http://msdn.microsoft.com/library/f6641f59-5267-4f57-8957-63b93d1a9679).|1) Open the report.<br /><br /> 2) Click the **Properties** page.<br /><br /> 3) Click the **History** tab.<br /><br /> 4) Note the date and time in the **When Run** column.|  
|A cached report.|In the schedule used to create and refresh the cached report.|1) Open the report.<br /><br /> 2) Click the **Properties** page.<br /><br /> 3) Click the **Execution** tab.<br /><br /> 4) Open the schedule.|  
  
## See Also  
 [Reporting Services Log Files and Sources](../../reporting-services/report-server/reporting-services-log-files-and-sources.md)   
 [Set Report Processing Properties](../../reporting-services/report-server/set-report-processing-properties.md)   
 [Report Manager  &#40;SSRS Native Mode&#41;](http://msdn.microsoft.com/library/80949f9d-58f5-48e3-9342-9e9bf4e57896)  
  
  