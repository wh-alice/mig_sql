---
title: "Logging for Load Balanced Packages on Remote Servers | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logs [Integration Services], remote packages"
ms.assetid: fd571567-b625-4f9a-8b7e-42c5c588b11b
caps.latest.revision: 24
ms.author: "douglasl"
manager: "jhubbard"
---
# Logging for Load Balanced Packages on Remote Servers
  It is easier for an administrator to manage the logs for all the child packages that are running on various servers when all the child packages use the same log provider and they all write to the same destination. One way that you can create a common log file for all child packages is to configure the child packages to log their events to a SQL Server log provider. You can configure all the packages to use the same database, the same server, and the same instance of the server.  
  
 To view the log files, the administrator only has to log on to a single server to view the log files for all child packages.  
  
## Related Tasks  
 For information about how to enable logging in a package, see [Enable Package Logging in SQL Server Data Tools](../../integration-services/performance/enable-package-logging-in-sql-server-data-tools.md).  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Logging](../../integration-services/performance/integration-services-ssis-logging.md)  
  
  