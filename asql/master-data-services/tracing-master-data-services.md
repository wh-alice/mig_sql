---
title: "Tracing (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 45823fc8-723a-49f2-9a11-94d241245cfd
caps.latest.revision: 7
ms.author: "carlasab"
manager: "erikre"
---
# Tracing (Master Data Services)
  The Web.config file contains a tracing section, as shown below. This section is new in [!INCLUDE[ssSQL15](../analysis-services/powershell/includes/sssql15-md.md)][!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)]  
  
```  
<sources>  
      <!-- Adjust the switch value to control the types of messages that should be logged.   
           http://msdn.microsoft.com/en-us/library/system.diagnostics.sourcelevels  
           Use the a switchValue of Verbose to generate a full log. Please be aware that   
           the trace file can get quite large very quickly -->  
      <source name="MDS" switchType="System.Diagnostics.SourceSwitch" switchValue="Warning, ActivityTracing">  
        <listeners>  
          <!-- Set a directory path where the service account you chose while setting up Master Data Services has read and write privileges.  
               Default path is Logs in WebApplication folder, for example C:\Program Files\Microsoft SQL Server\130\Master Data Services\WebApplication  
               New log file will be created every day or every 10 mb.  
               When directory size hits the 200mb limitation, the oldest file will be deleted.-->  
          <add name="FileTraceListener"  
               type="Microsoft.MasterDataServices.Core.Logging.FileTraceListener, Microsoft.MasterDataServices.Core"   
               initializeData="DirectoryPath = Logs; FileSizeInMb = 10; MaxDirectorySizeInMb = 200"/>  
          <remove name="Default"/>  
        </listeners>  
      </source>  
    </sources>  
  
```  
  
 The following is the default tracing behavior.  
  
-   Tracing is enabled for Warning and ActivityTracing messages.  
  
     For more information, see [SourceLevels Enumeration](https://msdn.microsoft.com/en-us/library/system.diagnostics.sourcelevels).  
  
-   The logs are saved in the Logs folder under the WebApplication folder. The default location is C:\Program Files\Microsoft SQL Server\130\Master Data Services\WebApplication\Logs.  
  
-   The file is created for each day or every 10 MB.  
  
-   When the size of the directly reaches 200MB, the oldest log is deleted.  
  
-   The log format is CSV. The following table describes the log format.  
  
    |Element|Description|  
    |-------------|-----------------|  
    |Time|When the trace entry occurs.|  
    |CorrelationID|One correlation ID is assigned for each request. All the traces trigged by this request will share the same correlation ID.<br /><br /> When an error occurs in the UI, the correlation ID appears in the error message.|  
    |Operation|Request operation name. If the request is a web UI request, the operation name is the url. If the request is an API request, the operation name is the service name.|  
    |Level|Level of this trace entry.|  
    |Message|Message body of the trace|  
  
## External Resources  
 Blog post, [Troubleshooting Logging Improvement](http://go.microsoft.com/fwlink/p/?LinkId=615377), on msdn.com.  
  
  