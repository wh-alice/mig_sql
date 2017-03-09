---
title: "Grant Permissions to Integration Services Service | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0c2caa68-7834-4ea0-bd77-4f3a7c86d634
caps.latest.revision: 8
ms.author: "douglasl"
manager: "jhubbard"
---
# Grant Permissions to Integration Services Service
  In previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], by default when you installed [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] all users in the Users group had access to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service. When you install the current release of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], users do not have access to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service. The service is secure by default. After [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is installed, the administrator must grant access to the service.  
  
### To grant access to the Integration Services service  
  
1.  Run Dcomcnfg.exe. Dcomcnfg.exe provides a user interface for modifying certain settings in the registry.  
  
2.  In the **Component Services** dialog, expand the Component Services > Computers > My Computer > DCOM Config node.  
  
3.  Right-click **Microsoft SQL Server Integration Services 13.0**, and then click **Properties**.  
  
4.  On the **Security** tab, click **Edit** in the **Launch and Activation Permissions** area.  
  
5.  Add users and assign appropriate permissions, and then click Ok.  
  
6.  Repeat steps 4 - 5 for Access Permissions.  
  
7.  Restart SQL Server Management Studio.  
  
8.  Restart the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] Service.  
  
  