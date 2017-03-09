---
title: "Troubleshoot  Reporting Services Report Issues | Microsoft Docs"
ms.custom: ""
ms.date: "2016-02-27"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a705d103-85b1-49b5-b27f-332b1040d029
caps.latest.revision: 9
ms.author: "asaxton"
manager: "erikre"
---
# Troubleshoot  Reporting Services Report Issues
This topic helps you troubleshoot problems with [!INCLUDE[ssRSnoversion](../../reporting-services/mobile-reports/includes/ssrsnoversion.md)] report design, previewing a report, publishing a report to a report server in native mode or SharePoint mode, viewing a report on the report server, or exporting a report to a different file format.  
## Monitor Report Servers  
You can use system and database tools to monitor report server activity. You can also view report server trace log files, or query the report server execution log for detailed information about specific reports. If you are using Performance Monitor, you can add performance counters for the Report Server Web service and Windows service to identity bottlenecks in on-demand or scheduled processing.  
For more information, see [Monitoring Report Server Performance](../../reporting-services/report-server/monitoring-report-server-performance.md).  
  
  
## View the Report Server Logs  
[!INCLUDE[ssRSnoversion](../../reporting-services/mobile-reports/includes/ssrsnoversion.md)] records many internal and external events to log files that record data about specific reports, debugging information, HTTP requests and responses, and report server events. You can also create performance logs and select performance counters that specify which data to collect. The default directory for log files for a default installation is `<drive>\Program Files\Microsoft SQL Server\MSRS130.MSSQLSERVER\Reporting Services\LogFiles`.   
  
For more information, see [Reporting Services log files and sources](../../reporting-services/report-server/reporting-services-log-files-and-sources.md).  
  
In order to determine specifically whether report waits are due to data retrieval, report processing, or report rendering, use the Execution Log. For more information, see [Report Server ExecutionLog and the ExecutionLog3 view].   
  
## View the Call Stack for Report Processing Error Messages on the Report Server  
When you view a published report in Report Manager, you might see an error message that represents a general processing or rendering error. To see more information, you can view the call stack.   
  
To view the call stack, log on to the report server by using the local administrator credentials, right-click the Report Manager page, and then click **View Source**. The call stack provides detailed context for the error message.  
  
## Use [!INCLUDE[ssManStudioFull](../../reporting-services/troubleshooting/includes/ssmanstudiofull.md)] to Verify Queries and Credentials  
You can use [!INCLUDE[ssManStudioFull](../../reporting-services/troubleshooting/includes/ssmanstudiofull.md)] to validate complex queries before you include them in your report.   
  
For more information, see [Database Engine query editor](../../relational-databases/scripting/database-engine-query-editor-sql-server-management-studio.md) and [Manage Oojects by using Object Explorer](Manage%20Objects%20by%20Using%20Object%20Explorer.xml).  
  
## Analyze Problem Reports with Report Data Cached on the Client  
When a report author creates a report in Business Intelligence Development Studio, the authoring client caches data as an .rdl.data file, which is used when you preview a report. Every time the query changes, the cache is updated. To debug report problems, it is sometimes useful to prevent the refresh for report data so that the data does not change when you are debugging.   
  
To control whether [!INCLUDE[ssBIDevStudioFull](../../reporting-services/troubleshooting/includes/ssbidevstudiofull.md)] can only use cached data, add the following section to devenv.exe.config in the [!INCLUDE[ssBIDevStudio](../../reporting-services/troubleshooting/includes/ssbidevstudio.md)]. The location of the default directory is: `<drive>:Program Files\Microsoft Visual Studio 10.0\Common7\IDE`.   
  
```  
<system.diagnostics>  
      <switches>  
         <add name="Microsoft.ReportDesigner.ReportPreviewStore.ForceCache" value="1" />  
      </switches>  
   </system.diagnostics>  
```  
As long as the value is set to 1, only cached report data is used. Be sure to remove this section when you have finished debugging the report.  
  
## See Also  
[Errors and events (Reporting Services)](../../reporting-services/troubleshooting/errors-and-events-reference-reporting-services.md)  
  
  

[!INCLUDE[feedback_stackoverflow_msdn_connect](../../reporting-services/troubleshooting/includes/feedback-stackoverflow-msdn-connect.md)]
