---
title: "SQL Full-text Filter Daemon Launcher (Log On Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 13e260f9-a75f-430b-88a3-959ddcead8fe
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Full-text Filter Daemon Launcher (Log On Tab)
  Beginning in [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)], the SQL Full-text Filter Daemon Launcher (FDHOST Launcher) service is used by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] full-text search. This service must be running if you use full-text search. For information about the filter daemon host processes, see "Full-Text Search Architecture" in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
 Use the **Log On** tab of the **SQL Full-text Filter Daemon Launcher  Properties** dialog box to specify the account used by the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] full-text service, to change the password of an account, and to start and stop the service. Changing the password of an account takes affect after restarting the service.  
  
> [!NOTE]  
>  When changing the account name used by a service on a clustered instance, either the new account must be a member of the domain group specified during setup for the service, or you must have permission to add members to that group. If you do not have permission to modify group membership, contact the domain administrator.  
>   
>  For more information about selecting an account to run the service, see "Setting Up Windows Service Accounts" in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
## Options  
 **Built-in account**  
 **Local System**  
 Specify the local system account. This account does not require a password. However, the local system account may prevent the service from interacting with other servers, depending on the privileges granted to the account.  
  
 **Local Service**  
 Specify the local service account. This account does not require a password. However, the local service account may prevent the service from interacting with other servers, depending on the privileges granted to the account.  
  
 **Network Service**  
 We recommend that you do not use the Network Service account for the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services or the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Agent services. Local User or Domain User accounts are more appropriate for these services.  
  
 **This account**  
 Specify a local or domain user account that uses Windows Authentication. We recommend that you use a domain user account that has minimal rights for services.  
  
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
 Pause the service. Not available for this service.  
  
 **Resume**  
 Resume a paused service.  
  
  