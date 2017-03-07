---
title: "Feature Configuration Rules | Microsoft Docs"
ms.custom: ""
ms.date: "2016-02-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7559dce8-2c84-4e94-b6a6-0141216e49a2
caps.latest.revision: 6
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Feature Configuration Rules
  SQL Server Setup validates your configuration settings before the Setup operation completes. During SQL Server Setup, the System Configuration Checker (SCC) scans the computer where SQL Server will be installed. The SCC checks for configuration settings that prevent a successful SQL Server setup operation. Before Setup starts, the SCC retrieves the status of each item. It then compares the result with required conditions and provides guidance for removal of blocking issues.  
  
 The system configuration check generates a report which contains a short description for each executed rule, and the execution status. The system configuration check report is located at %programfiles%\Microsoft SQL Server\130\Setup Bootstrap\Log\\<YYYYMMDD_HHMM>\\.  
  
  