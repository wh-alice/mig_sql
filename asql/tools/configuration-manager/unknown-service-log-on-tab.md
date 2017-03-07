---
title: "Unknown Service (Log On Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e9b35cb5-d8ae-42ea-b59e-deedc99c4823
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# Unknown Service (Log On Tab)
  [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager is unable to identify this service.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager receives service information from the WMI provider on the computer running the service. Either there was an error while reading the service properties, or the service properties are not complete. To resolve the problem, try closing and reopening [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, or check the WMI provider on the computer running the service.  
  
 The WMI provider is a Windows component. For information on how to check permissions on the WMI provider, see "How to: Configure WMI to Show Server Status in SQL Server Tools" in SQL Server Books Online.  
  
 If you believe you are viewing the correct service, use the **Log On** tab of the **Unknown Service Properties** dialog box to specify the account used by this service, and to start and stop the service.  
  
## Options  
 **Local System account**  
 Specify a local system account, which does not require a password. However, the local system account may prevent the service from interacting with other servers, depending on the privileges granted to the account.  
  
 **This account**  
 Specify a local or domain user account that uses Windows Authentication. We recommend using a domain user account with minimal rights for services. For information about selecting an account, "Setting Up Windows Service Accounts" in SQL Server Books Online.  
  
 **Account Name**  
 Specify the local or domain user account name.  
  
 **Password**  
 Type the password of the account.  
  
 **Confirm password**  
 Type the password of the account again.  
  
 **Start**  
 Start the service.  
  
 **Stop**  
 Stop the service.  
  
 **Pause**  
 Pause the service.  
  
 **Resume**  
 Resume a paused service.  
  
  