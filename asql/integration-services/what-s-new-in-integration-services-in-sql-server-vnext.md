---
title: "What&#39;s New in Integration Services in SQL Server vNext | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e26d7884-e772-46fa-bfdc-38567fe976a1
caps.latest.revision: 4
ms.author: "douglasl"
manager: "jhubbard"
---
# What&#39;s New in Integration Services in SQL Server vNext
This topic describes the features that have been added or updated in [!INCLUDE[ssSQLv14_md](../advanced-analytics/r-services/includes/sssqlv14-md.md)] [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)].

>   [!NOTE]
> SQL Server vNext also includes the features of SQL Server 2016 and the features added in SQL Server 2016 updates. For info about the new SSIS features in SQL Server 2016, see [What's New in Integration Services in SQL Server 2016](../integration-services/what-s-new-in-integration-services-in-sql-server-2016.md).

## New in SSIS in SQL Server vNext CTP 1.1

There are no new SSIS features in SQL Server vNext CTP 1.1.

## New in SSIS in SQL Server vNext CTP 1.0

### Scale Out for SSIS

The Scale Out feature makes it much easier to run [!INCLUDE[ssIS_md](../a9retired/includes/ssis-md.md)] on multiple machines. 
   
After installing the Scale Out Master and Workers, the package can be distributed to execute on different Workers automatically. If the execution is terminated unexpectedly, the execution is retried automatically. Also, all the executions and Workers can be centrally managed using the Master.
   
For more information, see [Integration Services Scale Out](../integration-services/integration-services-ssis-scale-out.md).
   
### Support for Microsoft Dynamics Online Resources

The OData Source and OData Connection Manager now support connecting to the OData feeds of Microsoft Dynamics AX Online and Microsoft Dynamics CRM Online.
