---
title: "Create a Multiserver Environment | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-06"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Agent, multiserver environments"
  - "master servers [SQL Server], about master servers"
  - "target servers [SQL Server], about target servers"
  - "multiserver environments [SQL Server]"
ms.assetid: edc2b60d-15da-40a1-8ba3-f1d473366ee6
caps.latest.revision: 6
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
# Create a Multiserver Environment
Multiserver administration requires that you set up a master server (MSX) and one or more target servers (TSX). Jobs that will be processed on all the target servers are first defined on the master server and then downloaded to the target servers.  
  
By default, full Secure Sockets Layer (SSL) encryption and certificate validation are enabled for connections between master servers and target servers. For more information, see [Set Encryption Options on Target Servers](../ssms/set-encryption-options-on-target-servers.md).  
  
If you have a large number of target servers, avoid defining your master server on a production server that has significant performance requirements from other SQL Server functionality, because target server traffic can slow performance on your production server. If you also forward events to a dedicated master server, you can centralize administration on one server. For more information, see [Manage Events](../ssms/manage-events.md).  
  
> [!NOTE]  
> To use multiserver job processing, the SQL Server Agent service account must be a member of the **msdb** database role **TargetServersRole** on the master server. The Master Server Wizard automatically adds the service account to this role as part of the enlistment process  
  
## Considerations for Multiserver Environments  
  
Consider the following issues when creating a multiserver environment:  
  
-   Use the most recent version as the master server. The current and two previous versions are supported.

-   Each target server reports to only one master server. You must defect a target server from one master server before you can enlist it into a different one.  
  
-   When changing the name of a target server, you must defect it before changing the name and re-enlist it after the change.  
  
-   If you want to dismantle a multiserver configuration, you must defect all the target servers from the master server.  
  
-   SQL Server Integration Services only supports target servers that are the same version or higher than the master server version.  
  
## Related Tasks  
The following topics document common tasks for creating a multiserver environment.  
  
|Description|Topic|  
|---------------|---------|  
|Describes how to create a master server.|[Make a Master Server](../ssms/make-a-master-server.md)|  
|Describes how to create a target server.|[Make a Target Server](../ssms/make-a-target-server.md)|  
|Describes how to enlist a target server into a master server.|[Enlist a Target Server to a Master Server](../ssms/enlist-a-target-server-to-a-master-server.md)|  
|Describes how to defect a target server from a master server.|[Defect a Target Server from a Master Server](../ssms/defect-a-target-server-from-a-master-server.md)|  
|Describes how to defect multiple target servers from a master server.|[Defect Multiple Target Servers from a Master Server](../ssms/defect-multiple-target-servers-from-a-master-server.md)|  
|Describes how to check the status of a target server.|[sp_help_targetserver (Transact-SQL)](http://msdn.microsoft.com/en-us/f841d3bd-901a-4980-ad0b-1c6eeba3f717)<br /><br />[sp_help_targetservergroup (Transact-SQL)](http://msdn.microsoft.com/en-us/ec3a4a68-b591-431c-9518-053ede522d0c)|  
  
## See Also  
[Troubleshoot Multiserver Jobs That Use Proxies](../ssms/troubleshoot-multiserver-jobs-that-use-proxies.md)  
  
