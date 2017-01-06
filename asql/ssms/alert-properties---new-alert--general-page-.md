---
title: "Alert Properties - New Alert (General Page) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.ag.alert.general.f1"
ms.assetid: f5c11610-62e3-44df-9800-a5dc35be4a09
caps.latest.revision: 5
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
# Alert Properties - New Alert (General Page)
Use this page to view and modify the general properties of Microsoft SQL Server Agent alerts.  
  
## Options  
**Name**  
Change the name of the alert.  
  
**Enable**  
Enable the alert. When the alert is not enabled, the actions specified in the alert do not occur.  
  
**Type**  
Select the type of alert:  
  
-   **SQL Server event alert** responds to messages in the Microsoft Windows event log.  
  
-   **SQL Server performance condition alert** responds to a specific condition in a performance counter.  
  
-   **WMI event alert** responds to a Windows Management Instrumentation (WMI) event.  
  
## SQL Server Event Alert Options  
**Database name**  
Specify a database for the event, or **all databases** to respond to a message regardless of the database where the event occurs.  
  
**Error number**  
Specify that this event responds to an error, and specify the error number.  
  
**Severity**  
Specify that this event responds to any message with a specific severity level, and specify the severity level.  
  
**Raise alert when message contains**  
Filter events by a specific string. When this option is selected, the alert only responds to events that contain a specific string.  
  
**Message text**  
Specify the string to use to filter events.  
  
## SQL Server Performance Condition Alerts  
**Object**  
Specify the performance object to monitor.  
  
**Counter**  
Specify the counter within the performance object to monitor.  
  
**Instance**  
Specify the instance of the counter to monitor.  
  
**Alert if counter**  
Specify the behavior of the counter that the alert responds to. For example, you may want the alert to respond to a condition where the value of the **Free space in tempdb (KB)** counter falls below a certain value, or you may want the alert to respond to a condition where the **SQL Compilations/sec** rises above a certain value.  
  
**Value**  
Specify a value for the counter.  
  
## WMI Event Alert Options  
**Namespace**  
Specify the namespace to use for the WMI Query Language (WQL) statement. Only namespaces on the computer that runs SQL Server Agent are supported.  
  
**Query**  
Specify the WQL statement that identifies the event that the alert responds to.  
  
## See Also  
[Alerts](../ssms/alerts.md)  
[Using WQL with the WMI Provider for Server Events](http://msdn.microsoft.com/en-us/58b67426-1e66-4445-8e2c-03182e94c4be)  
[Create an Alert Using an Error Number](../ssms/create-an-alert-using-an-error-number.md)  
[Create an Alert Using Severity Level](../ssms/create-an-alert-using-severity-level.md)  
  
