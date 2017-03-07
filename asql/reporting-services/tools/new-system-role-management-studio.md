---
title: "New System Role (Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.reportserver.newsystemrole.f1"
ms.assetid: 7b4a0b98-975b-478a-8359-7db39ccbb347
caps.latest.revision: 28
ms.author: "asaxton"
manager: "erikre"
---
# New System Role (Management Studio)
  Use this page to create a system-level role definition. A system role definition specifies a set of system-level tasks that apply to a report server as whole.  
  
> [!NOTE]  
>  Role definitions are used only on a report server that runs in native mode. If the report server is configured for SharePoint integration, this page is not available.  
  
## Options  
 **Name**  
 Type the name of the role definition. A role definition name must be unique within the report server namespace. A name must contain at least one alphanumeric character. It can also include spaces and some symbols. Do not use the following characters when specifying a name:  
  
 ; ? : @ & = + , $ / * \< >  
  
 " /  
  
 **Description**  
 Provide a description that explains how to use the role and enumerates what the role supports.  
  
 **Task**  
 Select the system-level tasks that can be performed through this role. You cannot create new tasks or modify the existing tasks that are supported by [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. You cannot choose item-level tasks for a system role definition.  
  
 **Task Description**  
 Shows a description of the task that enumerates the operations or permissions that the task supports.  
  
## See Also  
 [Report Server in Management Studio F1 Help](../../reporting-services/tools/report-server-in-management-studio-f1-help.md)   
 [Role Definitions](../../reporting-services/security/role-definitions.md)  
  
  