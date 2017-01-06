---
title: "Proxy Account Properties - New Proxy Account (General Page) | Microsoft Docs"
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
  - "sql13.ag.proxy.general.f1"
ms.assetid: 5cd81265-bf59-413b-8397-150ddc70d0c7
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
# Proxy Account Properties - New Proxy Account (General Page)
Use this page to view or change the properties of a Microsoft SQL Server Agent proxy account.  
  
## Options  
**Proxy name**  
Type the name of the proxy.  
  
**Credential name**  
Type the name of the credential for the proxy.  
  
> [!NOTE]  
> The credential name provided must be the name of an existing credential. For information on creating credentials, see [How to: Create a Proxy (SQL Server Management Studio)](http://msdn.microsoft.com/en-us/c1e77e91-2a69-40d9-b8b3-97cffc710586)  
  
**...**  
Launches the **Select Credential** dialog.  
  
**Description**  
Type the description for the proxy.  
  
**Active to the following subsystems**  
Select the subsystems that the proxy account has access to.  
  
**Reassign job steps to**  
Select the proxy to reassign job steps to. This list is enabled when you revoke access to a subsystem that the proxy previously had access to.  
  
## See Also  
[Create a SQL Server Agent Proxy](../ssms/create-a-sql-server-agent-proxy.md)  
  
