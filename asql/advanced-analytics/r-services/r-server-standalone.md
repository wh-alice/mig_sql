---
title: "R Server (Standalone) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-01-20"
ms.prod: "r-server"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
ms.assetid: ca9e48f1-67b8-4905-9b78-56752d7a4e81
caps.latest.revision: 20
ms.author: "jeannt"
manager: "jhubbard"
---
# R Server (Standalone)
  **Microsoft R Server (Standalone)** is  part of the enterprise-class analytics platform provided by Microsoft R Services.  
  
 It extends R by providing support, scalability, and security. [!INCLUDE[rsql_platform](../../advanced-analytics/r-services/includes/rsql-platform-md.md)] also addresses the in-memory limitations of open source R by adding parallel and chunked processing of data, enabling users to analyze data at enterprise scale, and use data much bigger than can fit in memory.  
 
For more information, see these resources in the MSDN library:  

+ [Introducing Microsoft R Server](https://msdn.microsoft.com/microsoft-r/rserver)
+ [R Server for Windows](https://msdn.microsoft.com/microsoft-r/rserver-install-windows)

  
## Where to Get Microsoft R Server  
 
 There are multiple options for installing Microsoft R Server, depending on whether you need to use SQL Server data, and how often you want to get updates:
 
+ You can install Microsoft R Server (Standalone) from SQL Server setup if you want to create applications that run in standalone mode or that run in SQL Server. When you do so, a separate instance of the R binaries is created for R Server, and the instance is licensed via the SQL Server Enterprise Edition support policy. 
 
  This option offers updates and customer support over a longer period, and feature updates are tied to the SQL Server release schedule. This ensures that the applications you create using Microsoft R Server are always compatible with the instance of SQL Server that is running R Services (In-Database). For more information,  see [Create a Standalone R Server](../../advanced-analytics/r-services/create-a-standalone-r-server.md).  

+ You can use a new standalone Windows installer to create an instance of Microsoft R Server that uses the Microsoft Modern Software Lifecycle support policy. This server edition also requires a SQL Server Enterprise Edition license, but you are not tied to the SQL Server release cycle, which ensures that you get more frequent updates of R. For more information about this edition of Microsoft R server, see [Run Microsoft R Server for Windows](https://msdn.microsoft.com/microsoft-r/rserver-install-windows).
 
+ You can provision an Azure virtual machine that includes a R Server (Standalone) together with new features for operationalizing predictive models (formerly DeployR). This makes it easier to embed R analytics inside applications and integrate R with backend systems. For more information, see [Provision an R Server Virtual Machine](../../advanced-analytics/r-services/provision-the-r-server-only-sql-server-2016-enterprise-vm-on-azure.md)
  
For samples, tutorials, and more information about Microsoft R, see [Microsoft R Products](https://msdn.microsoft.com/microsoft-r/microsoft-r-getting-started).   
  
## See Also  
 [SQL Server R Services](../../advanced-analytics/r-services/sql-server-r-services.md)   
 [Making R the Enterprise Standard for Cross Platform Analytics On-Premise and in the Cloud](http://blogs.technet.com/b/machinelearning/archive/2016/01/12/making-r-the-enterprise-standard-for-cross-platform-analytics-both-on-premises-and-in-the-cloud.aspx)  
  
  