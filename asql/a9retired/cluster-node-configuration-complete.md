---
title: "Cluster Node Configuration (Complete) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 64174d54-edee-49b8-9b43-039574bf2ca1
caps.latest.revision: 11
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Cluster Node Configuration (Complete)
  Use the Cluster Node Configuration (Complete) page to specify an existing instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] that has been prepared for clustering.To install or upgrade a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] failover cluster, you must run the Setup program on each node of the failover cluster. To add a node to an existing [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] failover cluster, you must run [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup on the node that is to be added to the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] failover cluster instance.  
  
## Options  
 From the drop-down boxes:  
  
-   [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] instance name — Select the instance name for the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] failover cluster.  
  
-   Name of this node — This field is pre-populated with the computer name where the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup program is running.  
  
-   [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Failover Cluster Network Name — This field is not pre-populated. Specify the network name for the new [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] failover cluster instance. This is the name that identifies the failover cluster instance on the network.  
  
  