---
title: "Report Server Service Trace Log | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logs [Reporting Services], trace"
  - "traces [Reporting Services]"
  - "system information [Reporting Services]"
  - "versions [Reporting Services]"
ms.assetid: 2fde08b2-137d-4f4b-88e5-216030216e0d
caps.latest.revision: 51
ms.author: "asaxton"
manager: "erikre"
---
# Report Server Service Trace Log
  The [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] report server trace log is an ASCII text file that contains detailed information for Report Server service operations.  Ther information in the file includes operations performed by the Report Server Web service, the web portal, and background processing. The trace log file includes redundant information that is recorded in other log files, plus additional information that is not otherwise available. Trace log information is useful if you are debugging an application that includes a report server or investigating a specific problem that was written to the event log or execution log. For example, when trouble shooting issues with subscriptions.  
 
##  <a name="bkmk_view_log"></a> Where are the Report Server log files?  
 The trace log files are `ReportServerService_<timestamp>.log` and are located in the following folder:  
  
 `C:\Program Files\Microsoft SQL Server\MSRS13.MSSQLSERVER\Reporting Services\LogFiles`  
  
 The trace log is created daily, starting with the first entry that occurs after midnight (local time), and whenever the service is restarted. The timestamp is based on Coordinated Universal Time (UTC). The file is in EN-US format. By default, trace logs are limited to 32 megabytes and by default they are deleted after 14 days.  
  
 View a short video that demonstrates the use of Microsoft Power Query to view [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] log files.  
  
[![see a video demonstrating power query and ssrs log files](../../reporting-services/report-server/media/generic-video-thumbnail.png)](https://technet.microsoft.com/library/sql-server-reporting-services-log-files-and-microsoft-power-query.aspx)  [Use Microsoft Power Query to view Reporting Services log files](https://technet.microsoft.com/library/sql-server-reporting-services-log-files-and-microsoft-power-query.aspx)
  
##  <a name="bkmk_trace_configuration_settings"></a> Trace configuration settings  
 Trace log behavior is managed in the configuration file **ReportingServicesrService.exe.config**. The configuration file is found in the following folder path:  
  
 `\Program Files\Microsoft SQL Server\MSRS13.<instance name>\Reporting Services\ReportServer\bin`.  
  
 The following example illustrates the XML structure of the **RStrace** settings. The value for **DefaultTraceSwitch** determines the kind of information that is added to the log. Except for the **Components** attribute, the values for **RStrace** are the same across the configuration files.  
  
```  
<system.diagnostics>  
      <switches>  
          <add name="DefaultTraceSwitch" value="3" />  
      </switches>  
</system.diagnostics>  
<RStrace>  
      <add name="FileName" value="ReportServerService_" />  
      <add name="FileSizeLimitMb" value="32" />  
      <add name="KeepFilesForDays" value="14" />  
      <add name="Prefix" value="tid, time" />  
      <add name="TraceListeners" value="file" />  
      <add name="TraceFileMode" value="unique" />  
      <add name="Components" value="all" />  
</RStrace>  
```  
  
 The following table provides information about each setting.  
  
|Setting|Description|Values|  
|-------------|-----------------|------------|  
|**RStrace**|Specifies namespaces used for errors and tracing.||  
|**DefaultTraceSwitch**|Specifies the level of information that is reported to the ReportServerService trace log. Each level includes the information reported by all lower-numbered levels. Disabling tracing is not recommended.|Valid values are:<br /><br /> <br /><br /> 0= Disables tracing. The ReportServerService log file is enabled by default. To turn it off, set trace level to 0.<br /><br /> 1= Exceptions and restarts<br /><br /> 2= Exceptions, restarts, warnings<br /><br /> 3= Exceptions, restarts, warnings, status messages (default)<br /><br /> 4= Verbose mode|  
|**FileName**|Specifies the first part of the log file name. The value specified by **Prefix** completes the rest of the name.||  
|**FileSizeLimitMb**|Specifies an upper limit on trace log size. The file is measured in megabytes.<br /><br /> You can control file size by setting tracing levels (0 through 4) to control how much content is recorded. You can also specify which components get traced. If the log file maximum is reached before the 14 day expiration date, older entries will be replaced with newer entries.|Valid values are 0 to a maximum integer. The default value is 32. If you specify 0 or a negative number, the report server treats the value as 1.|  
|**KeepFilesForDays**|Specifies the number of days after which a trace log file will be deleted.|Valid values are 0 to a maximum integer. The default value is 14. If you specify 0 or a negative number, the report server treats the value as 1.|  
|**Prefix**|Specifies a generated value that distinguishes one log instance from another.|By default, timestamp values are appended to trace log file names. This value is set to " tid, time ". Do not modify this setting.|  
|**TraceListeners**|Specifies a target for outputting trace log content. You can specify multiple targets using a comma to separate each one.|Valid values are:<br /><br /> <br /><br /> DebugWindow<br /><br /> File (default)<br /><br /> StdOut|  
|**TraceFileMode**|Specifies whether trace logs contain data for a 24-hour period. You should have one unique trace log for each component on each day.|This value is set to "Unique (default)". Do not modify this value.|  
|**Component Category**|Specifies the components for which trace log information is generated and the trace level in this format:<br /><br /> \<component category>:\<tracelevel><br /><br /> You can specify all or some of the components (**all**, **RunningJobs**, **SemanticQueryEngine**, **SemanticModelGenerator**). If you do not want to generate information for a specific component, you can disable tracing for it (for example, "SemanticModelGenerator:0"). Do not disable tracing for **all**.<br /><br /> You can set "SemanticQueryEngine:4" if you want to view the Transact-SQL statements that are generated for each semantic query. The Transact-SQL statements are recorded in the trace log. The following example illustrates the configuration setting that adds Transact-SQL statements to the log:<br /><br /> \<add name="Components" value="all,SemanticQueryEngine:4" />|Component catogories can be set to:<br /><br /> <br /><br /> **All** is used to trace general report server activity for all processes that are not broken out into the specific categories.<br /><br /> **RunningJobs** is used to trace an in-progress report or subscription operation.<br /><br /> **SemanticQueryEngine** is used to trace a semantic query that is processed when a user performs ad hoc data exploration in a model-based report.<br /><br /> **SemanticModelGenerator** is used to trace model generation.<br /><br /> **http** is used to enable the Report Server HTTP Log file. For more information, see [Report Server HTTP Log](../../reporting-services/report-server/report-server-http-log.md).|  
|**tracelevel** value for component categories|\<component category>:\<tracelevel><br /><br /> <br /><br /> If you do not append a trace level to the component, the value specified for **DefaultTraceSwitch** is used. For example, if you specify "all,RunningJobs,SemanticQueryEngine,SemanticModelGenerator", all components use the default trace level.|Trace level valid values are:<br /><br /> <br /><br /> 0= Disables tracing<br /><br /> 1= Exceptions and restarts<br /><br /> 2= Exceptions, restarts, warnings<br /><br /> 3= Exceptions, restarts, warnings, status messages (default)<br /><br /> 4= Verbose mode<br /><br /> The default value for Report Server is: "all:3".|  
  
##  <a name="bkmk_add_custom"></a> Adding Custom Configuration Setting to Specify a Dump File Location  
 You can add a custom setting to set the location that the Dr. Watson for Windows tool uses to store dump files. The custom setting is **Directory**. The following example provides an illustration of how this configuration setting is specified in the **RStrace** section:  
  
```  
<add name="Directory" value="U:\logs\" />  
```  
  
 For more information, see [Knowledge Base Article 913046](http://support.microsoft.com/?kbid=913046) on the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Web site.  
  
##  <a name="bkmk_log_file_fields"></a> Log File Fields  
 The following fields can be found in a trace log:  
  
-   System information, including operating system, version, number of processors, and memory.  
  
-   [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] component and version information.  
  
-   Events logged the Application log.  
  
-   Exceptions generated by the report server.  
  
-   Low resource warnings logged by a report server.  
  
-   Inbound SOAP envelopes and summarized outbound SOAP envelopes.  
  
-   HTTP header, stack trace, and debug trace information.  
  
 You can review trace log information to determine whether a report delivery occurred, who received the report, and how many delivery attempts were made. Trace logs also record report execution activity and the environment variables that are in effect during report processing. Errors and exceptions are also entered into trace logs. For example, you may find report time-out errors (indicated as a **ThreadAbortExceptions** entry).  

## Previous Versions
In previous releases of [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)], there were multiple trace log files, one for each application. The following files are obsolete and are no longer created in [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] and later versions:
+ ReportServerWebApp_*\<timestamp>*.log
+ ReportServer_*\<timestamp>*.log
+ ReportServerService_main_*\<timestamp>*.log
  
## See Also  
 [Reporting Services Log Files and Sources](../../reporting-services/report-server/reporting-services-log-files-and-sources.md)   
 [Errors and Events Reference &#40;Reporting Services&#41;](../../reporting-services/troubleshooting/errors-and-events-reference-reporting-services.md)  
  
  