---
title: "Browse for Servers (Network Servers) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.browseservers.network.f1"
ms.assetid: a59ffcd6-4b69-4c5c-9740-699ccb2183fb
caps.latest.revision: 4
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Browse for Servers (Network Servers)
If you are connecting to a SQL Server component and you do not know the exact name of the SQL Server instance, click **Browse for more** in the **Server name** box to open the **Browse for Servers** dialog box.  
  
This dialog is populated by the SQL Server Browser service on the server computers. There are several reasons why the name of an instance might not appear in the list:  
  
-   The SQL Server Browser service might not be running on the computer running SQL Server.  
  
-   UDP port 1434 might be blocked by a firewall.  
  
-   The **HideInstance** flag might be set.  
  
To connect to an instance that does not appear in the list, type a full connection string for the instance, including the TCP/IP port number or the named pipes pipe name.  
  
## Options  
**Select a SQL Server instance in the network for your connection**  
Designate the server you want to connect to by clicking on the SQL Server instance displayed in the tree. You can show or hide portions of the tree view by clicking on the nodes marked with a **+** or **–** symbol.  
  
