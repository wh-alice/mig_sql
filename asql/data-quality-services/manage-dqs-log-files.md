---
title: "Manage DQS Log Files | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "data-quality-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logging"
  - "log files"
  - "dqs log files"
ms.assetid: 4fccfd24-aede-4882-be69-ec1e82682e16
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# Manage DQS Log Files
  [!INCLUDE[ssDQSnoversion](../a9retired/includes/ssdqsnoversion-md.md)] (DQS) log files help you in diagnosing and troubleshooting issue with [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)], [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)], and the [!INCLUDE[ssDQSCleansingLong](../data-quality-services/includes/ssdqscleansinglong-md.md)]. Separate log files are generated for [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)], [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)], and the [!INCLUDE[ssDQSCleansing](../data-quality-services/includes/ssdqscleansing-md.md)].  
  
 You can use [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] to configure the log severity setting for [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)] features and modules. Additionally, you can also configure some other (advanced) settings for the DQS log files by manually changing the DQS log configuration settings in the DQS_MAIN database and an XML file on the [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] computer.  
  
##  <a name="DQSServer"></a> Data Quality Server Log File  
 The [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)] log file, DQServerLog.DQS_MAIN.log, includes logs of activities that are run on [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)]. If you installed the default instance of SQL Server, the DQServerLog.DQS_MAIN.log file is available at C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Log. The [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)] log file contains the following pieces of information, each delimited by a pipe (|):  
  
-   Date and time  
  
-   Thread name  
  
-   Thread ID  
  
-   Log severity (FATAL, ERROR, WARN, INFO, and DEBUG)  
  
    > [!NOTE]  
    >  The DEBUG logging severity is same as Verbose.  
  
-   UID (internal DQS infrastructure ID)  
  
-   Namespace  
  
-   Class and method  
  
-   Message  
  
 Along with these, the log file also displays information about the application version, computer name, user name, and operating system.  
  
 A sample entry in the [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)] log file looks like the following:  
  
```  
23-08-2013 01:45:29|[]|4|INFO|PUID|InfInfoModuleStarting|Microsoft.Ssdqs.Core.Startup.ServerInit|Starting DQS ServerInit: version [12.0.0.0], machine name [DQS-TEST], user name [NT Service\MSSQLSERVER], operating system [Microsoft Windows NT 6.1.7600.0]...  
```  
  
 The DQServerLog.DQS_MAIN.log file is a rolling file, and a new log file is created once the existing log file exceeds the rolling file size limit specified in the [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)] log configuration settings. For more information, see [Configure Advanced Settings for DQS Log Files](../data-quality-services/configure-advanced-settings-for-dqs-log-files.md).  
  
##  <a name="DQSClient"></a> Data Quality Client Log File  
 The [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] log file, DQClientLog.log, includes the client side logs. The [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] log file is available at %APPDATA%\SSDQS\Log. The [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] log file contains similar set of information as in the server log file, but for the client side.  
  
 As with the [!INCLUDE[ssDQSServer](../data-quality-services/includes/ssdqsserver-md.md)] log file, the [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] log file is also a rolling file, and a new log file is created once the existing log file exceeds the rolling file size limit specified in the [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)] log configuration settings. For more information, see [Configure Advanced Settings for DQS Log Files](../data-quality-services/configure-advanced-settings-for-dqs-log-files.md).  
  
##  <a name="DQSCleansing"></a> DQS Cleansing Component Log File  
 The [!INCLUDE[ssDQSCleansing](../data-quality-services/includes/ssdqscleansing-md.md)] log file, DQSSSISLog.log, includes logs of activities performed using the [!INCLUDE[ssDQSCleansingLong](../data-quality-services/includes/ssdqscleansinglong-md.md)]. The [!INCLUDE[ssDQSCleansing](../data-quality-services/includes/ssdqscleansing-md.md)] component log file is available at %APPDATA%\SSDQS\Log. The [!INCLUDE[ssDQSCleansing](../data-quality-services/includes/ssdqscleansing-md.md)] log file contains similar set of information as in the server log file, but for the [!INCLUDE[ssDQSCleansing](../data-quality-services/includes/ssdqscleansing-md.md)].  
  
##  <a name="RT"></a> Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Describes how to configure log severity settings for DQS log files using [!INCLUDE[ssDQSClient](../a9retired/includes/ssdqsclient-md.md)].|[Configure Severity Levels for DQS Log Files](../data-quality-services/configure-severity-levels-for-dqs-log-files.md)|  
|Describes how to manually configure advanced settings for DQS log files.|[Configure Advanced Settings for DQS Log Files](../data-quality-services/configure-advanced-settings-for-dqs-log-files.md)|  
  
## See Also  
 [DQS Administration](../data-quality-services/dqs-administration.md)  
  
  