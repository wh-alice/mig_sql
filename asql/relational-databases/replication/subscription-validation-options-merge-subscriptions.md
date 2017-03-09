---
title: "Subscription Validation Options (Merge Subscriptions) | Microsoft Docs"
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
  - "sql13.rep.validate.mergeoptions.f1"
helpviewer_keywords: 
  - "Subscription Validation Options dialog box"
ms.assetid: 4958c4ab-2025-42ce-b836-6fb4e9e6f24d
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Subscription Validation Options (Merge Subscriptions)
  Use the **Subscription Validation Options** dialog box to specify whether validation should use a row count only or a row count and a binary checksum.  
  
## Options  
 **Verify the row counts only**  
 Select to validate whether the table at the Subscriber has the same number of rows as the table at the Publisher. This method does not validate that the content of the rows matches. Row count validation provides a lightweight approach to validation that can make you aware of issues with your data.  
  
 **Verify the row counts and compare checksums to verify the row data**  
 In addition to taking a count of rows at the Publisher and Subscriber, a checksum of all the data is calculated using the binary checksum algorithm. If the row count fails, the checksum is not performed. This option is not valid for [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssEW](../../analysis-services/instances/includes/ssew-md.md)].  
  
## See Also  
 [Validate Data at the Subscriber](../../relational-databases/replication/validate-data-at-the-subscriber.md)   
 [Validate Replicated Data](../../relational-databases/replication/validate-replicated-data.md)  
  
  