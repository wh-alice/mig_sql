---
title: "SQL Server Agent Properties (Connection Page) | Microsoft Docs"
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
  - "sql13.ag.agent.connection.f1"
ms.assetid: d6a677ff-60ad-47ba-a0cb-df4193b165e0
caps.latest.revision: 3
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
# SQL Server Agent Properties (Connection Page)
Use this page to view and modify the settings for the connection from the Microsoft SQL Server Agent service to SQL Server.  
  
## Options  
**Alias local host server**  
Specifies the alias to use to connect to the local instance of SQL Server. If you cannot use the default connection options for SQL Server Agent, define an alias for the instance and specify the alias here.  
  
**Use Windows Authentication**  
Sets Microsoft Windows Authentication as the authentication method used to connect to the SQL Server instance. SQL Server Agent connects as the account that the SQL Server Agent service runs as.  
  
**Use SQL Server Authentication**  
Sets SQL Server Authentication as the authentication method used to connect to the SQL Server instance.  
  
> [!IMPORTANT]  
> SQL Server Authentication is provided for backward compatibility. For improved security, use Windows Authentication if possible.  
  
**Login**  
Specifies the login name to use to connect to SQL Server.  
  
**Password**  
Specifies the password to use to connect to SQL Server.  
  
