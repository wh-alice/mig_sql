---
title: "Analysis Server Properties (Service Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8dbe4bc5-6aa9-48ee-857e-0b4ea764b9cb
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# Analysis Server Properties (Service Tab)
  This service is the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. This service must be running for [!INCLUDE[ssAS](../../analysis-services/multidimensional-models/includes/ssas-md.md)] to work properly. The property values in light gray cannot be changed using this application.  
  
## Options  
 **Binary Path**  
 Displays the location of the program files used by this service.  
  
 **Error Control**  
 1 indicates `SERVICE_ERROR_NORMAL`. If the service fails to start during computer start up, the startup program logs the error and displays a pop-up message box but continues the startup operation. This value cannot be changed.  
  
 **Exit Code**  
 When an error occurs, the error number appears in this box. Use this number to troubleshoot failures by searching for the number in the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Knowledge Base or provide the number to your technical support staff.  
  
 **Host Name**  
 Displays the name of the computer or cluster running [!INCLUDE[ssAS](../../analysis-services/multidimensional-models/includes/ssas-md.md)].  
  
 **Name**  
 Indicates the display name of the service.  
  
 **Process ID**  
 Displays the number used by [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows to keep track of this program's processes.  
  
 **SQL Service Type**  
 Displays the type of service provided to calling processes. [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installs several services.  
  
 **Start Mode**  
 Set this service to the following choices:  
  
-   Manual: This service does not automatically start when the computer starts. You must start the service using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, or some other tool.  
  
-   Automatic: This service attempts to start when this computer starts.  
  
-   Disabled: This service cannot be started.  
  
 **State**  
 Indicates whether this service is running, stopped, or disabled.  
  
  