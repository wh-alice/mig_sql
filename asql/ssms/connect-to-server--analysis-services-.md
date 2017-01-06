---
title: "Connect to Server (Analysis Services) | Microsoft Docs"
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
  - "sql13.swb.connection.login.analysisserver.f1"
ms.assetid: 7e277d22-8d4b-422e-8882-7c5dd7a6d915
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
# Connect to Server (Analysis Services)
Use this dialog to view or specify options when connecting to Microsoft Analysis Services.  
  
## Options  
**Server type**  
When registering a server from Object Explorer, select the type of server to connect to: Database Engine, Analysis Services, Reporting Services, or Integration Services. The rest of the dialog shows only the options that apply to the selected server type. When registering a server from Registered Servers, the **Server type** box is read-only, and matches the type of server displayed in the Registered Servers component. To register a different type of server, select Database Engine, Analysis Services, Reporting Services, or Integration Services from the Registered Servers toolbar before starting to register a new server.  
  
**Server name**  
Select the server instance to connect to. The server instance last connected to is displayed by default.  
  
**Authentication**  
The following authentication modes are supported when connecting to an instance of Analysis Services: Microsoft Windows Authentication.  
  
**Windows Authentication Mode (Windows Authentication)**  
**Windows Authentication** mode allows a user to connect through a Windows user account.  
  
**User name**  
This option is not available in this release. Enter the user name to connect with. This option is only available if you have selected to connect using **Windows Authentication**.  
  
**Password**  
This option is not available in this release. Enter the password for the login. This option is only editable if you have selected to connect using SQL Server Authentication.  
  
**Connect**  
Click to connect to the server selected above.  
  
**Options**  
Click to display additional server connection options, such as registering a server and remembering the password.  
  
