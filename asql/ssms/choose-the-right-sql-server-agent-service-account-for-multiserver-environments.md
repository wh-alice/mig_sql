---
title: "Choose the Right SQL Server Agent Service Account for Multiserver Environments | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Agent, service accounts"
  - "multiserver environments [SQL Server], SQL Server Agent service account behavior"
ms.assetid: a07e2f38-281c-495b-965b-13fad03ba548
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
# Choose the Right SQL Server Agent Service Account for Multiserver Environments
The Windows account you choose for the SQL Server Agent service can affect the behavior of a multiserver environment, as follows:  
  
-   If you run the SQL Server Agent service under an account that is not a member of the local Windows Administrators group, enlisting target servers to master servers may fail. If it does, the following error message is returned:  
  
    "The enlistment operation failed."  
  
    Restart the SQL Server and the SQL Server Agent services to resolve this issue.  
  
-   When the SQL Server Agent service is run under the Local System account, master server-target server operations are supported only if both the master server and the target server reside on the same computer. If you use this configuration, the following message is returned when you enlist target servers to a master server:  
  
    "Ensure the agent start-up account for *<target_server_computer_name>* has rights to log on as targetServer."  
  
    You can ignore this informational message. The enlistment operation should complete successfully.  
  
For more information about choosing an account for the SQL Server Agent service, see [Select an Account for the SQL Server Agent Service](../ssms/select-an-account-for-the-sql-server-agent-service.md).  
  
