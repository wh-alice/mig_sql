---
title: "Monitor Running Packages and Other Operations | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: cbbcd79f-ab9b-46ec-84cb-4821c1d16b99
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
---
# Monitor Running Packages and Other Operations
  You can monitor [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package executions, project validations, and other operations by using one of more of the following tools. Certain tools such as data taps are available only for projects that are deployed to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server.  
  
-   Logs  
  
     For more information, see [Integration Services &#40;SSIS&#41; Logging](../../integration-services/performance/integration-services-ssis-logging.md).  
  
-   Reports  
  
     For more information, see [Reports for the Integration Services Server](../../integration-services/performance/reports-for-the-integration-services-server.md).  
  
-   Views  
  
     For more information, see [Views &#40;Integration Services Catalog&#41;](../../integration-services/system/views/views-integration-services-catalog.md).  
  
-   Performance counters  
  
     For more information, see [Performance Counters](../../integration-services/performance/performance-counters.md).  
  
-   Data taps  
  
## Operation Types  
 Several different types of operations are monitored in the **SSISDB** catalog, on the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server. Each operation can have multiple messages associated with it. Each message can be classified into one of several different types. For example, a message can be of type Information, Warning, or Error. For the full list of message types, see the documentation for the Transact-SQL [catalog.operation_messages &#40;SSISDB Database&#41;](../../integration-services/system/views/catalog.operation-messages-ssisdb-database.md) view. For a full list of the operations types, see [catalog.operations &#40;SSISDB Database&#41;](../../integration-services/system/views/catalog.operations-ssisdb-database.md).  
  
 Nine different status types are used to indicate the status of an operation. For a full list of the status types, see the [catalog.operations &#40;SSISDB Database&#41;](../../integration-services/system/views/catalog.operations-ssisdb-database.md) view.  
  
## Related Content  
 Blog entry, [SSIS T-SQL API Overview](http://go.microsoft.com/fwlink/?LinkId=249051), on blogs.msdn.com.  
  
  