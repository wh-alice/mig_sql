---
title: "Subscriber Properties | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.rep.configdistwizard.subscribers.f1"
helpviewer_keywords: 
  - "Subscriber Properties dialog box"
ms.assetid: 32aa0347-64e4-4aa4-ac57-6bd3e5d52070
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# Subscriber Properties
  The **Subscriber Properties** dialog box contains information relevant to Subscribers running versions of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] before [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)].  
  
## Options  
 **Agent Connection to the Subscriber**  
 The context under which the Distribution Agent and Merge Agent connect from the Distributor to the Subscriber This applies only to versions before [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)].  
  
 Select **Impersonate agent process account** to make connections to the Subscriber using the context of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Agent account at the Distributor, or specify **SQL Server Authentication**, and then enter a value for **Login** and **Password**. [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] recommends that you select **Impersonate agent process account**.  
  
 For [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] and later versions, connection information is specified for each subscription in the New Subscription Wizard and can be changed in the **Subscription Properties** dialog box.  
  
 **Default Agent Schedules**  
 The default schedule used in the New Subscription Wizard for Subscribers running versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] before [!INCLUDE[ssVersion2000](../../a9notintoc/includes/ssversion2000-md.md)].  
  
 **Miscellaneous**  
 Includes information on the Subscriber and Subscriber type.  
  
## See Also  
 [View and Modify Distributor and Publisher Properties](../../relational-databases/replication/view-and-modify-distributor-and-publisher-properties.md)   
 [Properties Reference &#40;Replication&#41;](../../relational-databases/replication/properties-reference-replication.md)   
 [Subscribe to Publications](../../relational-databases/replication/subscribe-to-publications.md)  
  
  