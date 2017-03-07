---
title: "Report Server Properties (Log On Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f54be594-f290-4db2-bf18-fd2521728a4a
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# Report Server Properties (Log On Tab)
  Use the **Log On** tab of the **Report Server Properties** dialog box to specify the account used by the Report Server service, and to start and stop the service.  
  
## Options  
 **Local System account**  
 Specify a local system account, which does not require a password. However, the local system account may restrict the service from interacting with other servers, depending on the privileges granted to the account.  
  
 **This account**  
 Specify a local or domain user account that uses [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows Authentication. [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] recommends using a domain user account with minimal rights for services. For information about selecting an account, search Books Online for the topic Setting Up Windows Service Accounts.  
  
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
  
  