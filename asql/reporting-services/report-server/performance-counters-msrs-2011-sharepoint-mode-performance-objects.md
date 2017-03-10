---
title: "Performance Counters for the MSRS 2011 Web Service SharePoint Mode and MSRS 2011 Windows Service SharePoint Mode Performance Objects (SharePoint Mode) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "performance counters [Reporting Services]"
  - "counters [Reporting Services]"
  - "Report Server Windows service, performance counters"
  - "RS Windows Service performance object"
  - "Scheduling and Delivery Processor performance object [Reporting Services]"
  - "performance [Reporting Services]"
ms.assetid: 70bf6980-7845-4ab5-8b2a-ebf526d811a6
caps.latest.revision: 52
ms.author: "asaxton"
manager: "erikre"
---
# Performance Counters MSRS 2011 SharePoint Mode Performance Objects
  This topic describes performance counters for the **MSRS 2011 Web Service SharePoint Mode** and **MSRS 2011 Windows Service SharePoint Mode** performance objects that are part of a [!INCLUDE[ssRSCurrent](../../reporting-services/includes/ssrscurrent-md.md)] SharePoint mode deployment.  
  
> [!NOTE]  
>  This performance objects monitor events on the local report server. If you are running a report server in a scale-out deployment, the counts apply to the current server and not the scale-out deployment as a whole.  
  
 The performance objects are available in the Windows Performance Monitor (**Perfmon.exe**). For more information, see the Windows documentation. [Runtime Profiling](http://msdn.microsoft.com/library/w4bz2147.aspx) (http://msdn.microsoft.com/library/w4bz2147.aspx).  
  
 For information regarding performance counters and Native mode report servers, see [Performance Counters for the MSRS 2011 Web Service and MSRS 2011 Windows Service Performance Objects &#40;Native Mode&#41;](../../reporting-services/report-server/performance-counters-msrs-2011-web-service-performance-objects.md)[Performance Counters for the MSRS 2011 Web Service SharePoint Mode and MSRS 2011 Windows Service SharePoint Mode Performance Objects (SharePoint Mode)](../../reporting-services/report-server/performance-counters-msrs-2011-sharepoint-mode-performance-objects.md).  
  
 In this topic:  
  
-   [MSRS 2011 Web Service SharePoint Mode Performance Counters](#bkmk_webservice)  
  
-   [MSRS 2011 Windows Service SharePoint Mode Performance Counters](#bkmk_windowsservice)  
  
-   [Use PowerShell Cmdlets to return lists](#bkmk_powershell)  
  
##  <a name="bkmk_webservice"></a> MSRS 2011 Web Service SharePoint Mode Performance Counters  
 The **MSRS 2011 Web Service SharePoint Mode** performance object monitors report server performance. This performance object includes a collection of counters used to track report server processing typically initiated through interactive report viewing operations. When you set up this counter, you can apply the counter to all instances of [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] or you can select specific instances. These counters are reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service.  
  
 The following table lists the counters that are included with the **MSRS 2011 Web Service SharePoint Mode** performance object.  
  
|Counter|Description|  
|-------------|-----------------|  
|**Active Sessions**|Number of active sessions. This counter provides a cumulative count of all browser sessions generated from report executions, whether they are still active or not.<br /><br /> The counter is decremented as session records are removed. By default, sessions are removed after ten minutes of no activity.|  
|**Cache Hits/Sec**|Number of requests per second for cached reports. These are requests for re-rendered reports, not requests for reports processed directly from the cache. (See **Total Cache Hits** later in this topic.)|  
|**Cache Hits/Sec (Semantic Models)**|Number of requests per second for cached model. These are requests for re-rendered reports, not requests for reports processed directly from the cache.|  
|**Cache Misses/Sec**|Number of requests per second that failed to return a report from cache. Use this counter to find out whether the resources used for caching (disk or memory) are sufficient.|  
|**Cache Misses/Sec (Semantic Models)**|Number of requests per second that failed to return a model from cache. Use this counter to find out whether the resources used for caching (disk or memory) are sufficient.|  
|**First Session Requests/Sec**|Number of new user sessions that are started from the report server cache each second.|  
|**Memory Cache Hits/Sec**|Number of times per second that reports are retrieved from the in-memory cache. *In-memory cache* is a part of the cache that stores reports in CPU memory. When in-memory cache is used, the report server does not query [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] for cached content.|  
|**Memory Cache Misses/Sec**|Number of times per second that reports could not be retrieved from the in-memory cache.|  
|**Next Session Requests/Sec**|Number of requests per second for reports that are open in an existing session (such as reports that are rendered from a session snapshot).|  
|**Report Requests**|Number of reports that are currently active and being handled by the report server.|  
|**Reports Executed/Sec**|Number of successful report executions per second. This counter provides statistics about report volume. Use this counter with **Request/Sec** to compare report execution to report requests that can be returned from cache.|  
|**Requests/Sec**|Number of requests per second made to the report server. This counter tracks all types of requests that are handled by the report server.|  
|**Total Cache Hits**|Total number of requests for reports from the cache after the service started. This counter is reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service.|  
|**Total Cache Hits (Semantic Models)**|Total number of requests for model from the cache after the service started. This counter is reset whenever ASP.NET stops the Report Server Web service.|  
|**Total Cache Misses**|Total number of times that a report could not be returned from the cache after the service started. This counter is reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service. Use this counter to determine whether disk space and memory are sufficient.|  
|**Total Cache Misses (Semantic Models)**|Total number of times that a model could not be returned from the cache after the service started. This counter is reset whenever ASP.NET stops the Report Server Web service. Use this counter to determine whether disk space and memory are sufficient.|  
|**Total Memory Cache Hits**|Total number of cached reports returned from the in-memory cache after the service started. This counter is reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service. *In-memory cache* is a part of the cache that stores reports in CPU memory. When in-memory cache is used, the report server does not query [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] for cached content.|  
|**Total Memory Cache Misses**|Total number of cache misses against the in-memory cache after the service started. This counter is reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service.|  
|**Total Processing Failures**|Number of errors in report server web service request processing.|  
|**Total Rejected Threads**|Total number of threads rejected for asynchronous processing, and subsequently handled as synchronous processes in the same thread. Each data source is processed on one thread. If the volume of threads exceeds capacity, threads are rejected for asynchronous processing, and are then processed in a serial manner.|  
|**Total Reports Executed**|Total number of reports that ran successfully after the service started. This counter is reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service.|  
|**Total Requests**|Total number of all requests made to the report server after the service started. This counter is reset whenever [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] stops the Report Server Web service.|  
  
##  <a name="bkmk_windowsservice"></a> MSRS 2011 Windows Service SharePoint Mode Performance Counters  
 The **MSRS 2011 Windows Service SharePoint Mode** performance object is used to monitor the Report Server Windows service. This performance object includes a collection of counters used to track report processing that is initiated through scheduled operations. Scheduled operations can include subscription and delivery, report execution snapshots, and report history. When you set up this counter, you can apply the counter to all instances of [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] or you can select specific instances.  
  
 The following table lists the counters that are included in the **MSRS 2011 Windows Service SharePoint mode** performance object.  
  
|Counter|Description|  
|-------------|-----------------|  
|**Active Sessions**|Number of active sessions stored in the report server database. This counter provides a cumulative count of all usable browser sessions generated from report subscriptions, whether they are still active or not.|  
|**Alerting: event queue length**||  
|**Alerting: events processed - CreateSchedule**||  
|**Alerting: events processed – Delete schedule**||  
|**Alerting: events processed – DeliverAlert**||  
|**Alerting: events processed – FireAlert**||  
|**Alerting: events processed – FireSchedule**||  
|**Alerting: events processed – GenerateAlert**||  
|**Alerting: events processed – UpdateSchedule**||  
|**Cache Flushes/Sec**|Number of cache flushes per second.|  
|**Cache Hits/Sec**|Number of requests per second for cached reports. These are requests for re-rendered reports, not requests for reports processed directly from the cache. (See **Total Cache Hits** later in this topic.)|  
|**Cache Hits/Sec (Semantic Models)**|Number of requests per second for cached models.|  
|**Cache Misses/Sec**|Number of requests per second that failed to return a report from cache. Use this counter to find out whether the resources used for caching (disk or memory) are sufficient.|  
|**Cache Misses/Sec (Semantic Models)**|Number of requests per second that failed to return a model from cache. Use this counter to find out whether the resources used for caching (disk or memory) are sufficient.|  
|**Delivers/Sec**|Number of report deliveries per second, from any delivery extension.|  
|**Events/Sec**|Number of events processed per second. Events that are monitored include **SnapshotUpdated** and **TimedSubscription**.|  
|**First Session Requests/Sec**|Number of new report execution sessions created per second.|  
|**Memory Cache Hits/Sec**|Number of times per second that reports are retrieved from the in-memory cache. *In-memory cache* is a part of the cache that stores reports in CPU memory. When in-memory cache is used, the report server does not query [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] for cached content.|  
|**Memory Cache Misses/Sec**|Number of times per second that reports cannot be retrieved from the in-memory cache.|  
|**Next Session Requests/Sec**|Number of requests per second for reports that are open in an existing session (such as reports that are rendered from a session snapshot).|  
|**Report Requests**|Number of reports that are currently active and being handled by the report server. Use this counter to evaluate caching strategy. There might be significantly more requests than reports generated.|  
|**Reports Executed/Sec**|Number of reports successfully generated per second.|  
|**Requests/Sec**|Total number of successful requests the report server service processed per second.|  
|**Snapshot Updates/Sec**|Total number of report execution snapshot updates per second.|  
|**Total App Domain Recycles**|Total number of application domain cycles after the Report Server Windows service started.|  
|**Total Cache Flushes**|Total number of report server cache updates after the service started. This counter resets when the application domain recycles. See **Cache Flushes/Sec**.|  
|**Total Cache Hits**|Total number of requests for reports processed directly from the cache after the Report Server Windows service started. This counter resets when the application domain recycles. See **Cache Hits/Sec**.|  
|**Total Cache Hits (Semantic Models)**|Total number of model requests processed directly from the cache after the report server Windows service started. This counter resets when the application domain recycles.|  
|**Total Cache Misses**|Total number of times that a report could not be returned from cache after the Report Server Windows service started. This counter resets when the application domain recycles. See **Cache Misses/Sec**.|  
|**Total Cache Misses (Semantic Models)**|Total number of times that a model could not be returned from cache after the Report Server Windows service started. This counter resets when the application domain recycles.|  
|**Total Deliveries**|Total number of reports delivered by the Scheduling and Delivery Processor, for all delivery extensions. This counter resets when the application domain recycles.|  
|**Total Events**|Total number of events after the Report Server Windows service started. This counter resets when the application domain recycles.|  
|**Total Memory Cache Hits**|Total number of cached reports returned from the in-memory cache after the Report Server Windows service started. This counter resets when the application domain recycles.|  
|**Total Memory Cache Misses**|Total number of cache misses against the in-memory cache after the service started. This counter resets when the application domain recycles.|  
|**Total Processing Failures**|Number of request processing errors for the report server Windows service.|  
|**Total Rejected Threads**|Total number of threads rejected for asynchronous processing, and subsequently handled as a synchronous process in the same thread. Under moderate or heavy load, this counter steadily increases.|  
|**Total Reports Executed**|Total number of reports run.|  
|**Total Requests**|Total number of reports that ran successfully after the service started. This counter resets when the application domain recycles.|  
|**Total Snapshot Updates**|Total number of report execution snapshot updates.|  
  
##  <a name="bkmk_powershell"></a> Use PowerShell Cmdlets to return lists  
 ![PowerShell related content](../../analysis-services/instances/install/windows/media/rs-powershellicon.jpg "PowerShell related content")The following Windows PowerShell script will return the counter sets where the CounterSetName starts with “msr”  
  
```  
get-counter -listset msr*  
Returns a list with the following information  
CounterSetName     : MSRS 2011 Windows Service SharePoint Mode  
CounterSetName     : MSRS 2011 Web Service SharePoint Mode  
```  
  
 The following Windows PowerShell script will return the list of performance counters for the CounterSetName “MSRS 2011 Windows Service SharePoint Mode”.  
  
```  
(get-counter -listset "MSRS 2011 Windows Service SharePoint Mode").paths  
```  
  
## See Also  
 [Monitoring Report Server Performance](../../reporting-services/report-server/monitoring-report-server-performance.md)   
 [Performance Counters for the MSRS 2011 Web Service and MSRS 2011 Windows Service Performance Objects &#40;Native Mode&#41;](../../reporting-services/report-server/performance-counters-msrs-2011-web-service-performance-objects.md)   
 [Performance Counters for the ReportServer:Service  and ReportServerSharePoint:Service Performance Objects](../../reporting-services/report-server/performance-counters-reportserver-service-performance-objects.md)  
  
  