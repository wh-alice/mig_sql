---
title: "NS$&lt;service name&gt; Properties (Log On Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5e6816ec-d4c5-4429-8033-b97427584890
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# NS$&lt;service name&gt; Properties (Log On Tab)
  Use the **Log On** tab of the **Notification Services Properties** dialog box to specify the account used by the [!INCLUDE[ssNS](../../tools/configuration-manager/includes/ssns-md.md)] service, and to start and stop the service.  
  
## Options  
 **Local System account**  
 Specify a local system account, which does not require a password. However, the local system account may restrict the service from interacting with other servers, depending on the privileges granted to the account.  
  
 **This account**  
 Specify a local or domain user account that uses [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows Authentication. [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] recommends using a domain user account with minimal rights for services. For information about selecting an account, search Books Online for the topic, "Setting Up Windows Service Accounts."  
  
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
  
  