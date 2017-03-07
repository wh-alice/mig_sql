---
title: "Monitoring the Error Logs | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logs [SQL Server]"
  - "database performance [SQL Server], errors"
  - "Windows application logs [SQL Server]"
  - "monitoring performance [SQL Server], errors"
  - "server performance [SQL Server], errors"
  - "comparing error and application log output"
  - "errors [SQL Server], logs"
  - "tuning databases [SQL Server], errors"
  - "database monitoring [SQL Server], errors"
  - "SQL Server error log"
  - "logs [SQL Server], SQL Server error logs"
  - "error logs [SQL Server]"
  - "logs [SQL Server], Windows application logs"
ms.assetid: e250336b-0695-44f6-a42f-23222f94e377
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# Monitoring the Error Logs
  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] logs certain system events and user-defined events to the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log and the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows application log. Both logs automatically timestamp all recorded events. Use the information in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log to troubleshoot problems related to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 The Windows application log provides an overall picture of events that occur on the Windows operating system, as well as events in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent. Use the Windows Event Viewer to view the Windows application log and to filter the information. For example, you can filter events, such as information, warning, error, success audit, and failure audit.  
  
## Comparing Error and Application Log Output  
 You can use both the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log and the Windows application log to identify the cause of problems. For example, while monitoring the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log, you may encounter error messages that do not contain cause information. By comparing the dates and times for events between these logs, you can narrow the list of probable causes. The [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] Log File Viewer lets you integrate [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent, and the Windows logs into a single list, making it easy to understand related server events and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] events. For more information, see the topic "Log File Viewer" in SQL Server Books Online.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Viewing the SQL Server Error Log](../../tools/configuration-manager/viewing-the-sql-server-error-log.md)|Contains information about the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log and how to view it.|  
|[Viewing the Windows Application Log](../../tools/configuration-manager/viewing-the-windows-application-log.md)|Contains information about the Windows application log and how to view it.|  
  
  