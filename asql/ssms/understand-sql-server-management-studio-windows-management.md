---
title: "Understand SQL Server Management Studio Windows Management | Microsoft Docs"
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
  - "autohide [SQL Server Management Studio]"
  - "SQL Server Management Studio [SQL Server], tool windows"
  - "push pin [SQL Server Management Studio]"
  - "tool windows [SQL Server Management Studio]"
ms.assetid: bebf8383-dcaf-466e-84f5-63b81c9cfe52
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
# Understand SQL Server Management Studio Windows Management
The tool windows in Microsoft SQL Server Management Studio are a highly functional, flexible, and efficient system that allows you to:  
  
-   Maximize the user workspace for development and management.  
  
-   Reduce the number of unused windows displayed at one time.  
  
-   Easily customize the user environment.  
  
Manipulating windows is central to the Management Studio environment. Users can easily access the tools and windows they use frequently. Users can control how much space they want to allocate to different information, and the environment should maximize the space available for editing queries accordingly. Windows can be moved to different locations on the screen. Many windows can be undocked and dragged out of the Management Studio frame. This is particularly useful when using more than one monitor.  
  
To increase your editing space while maintaining functionality, all windows offer the Auto Hide feature, which displays the window as a tab within a bar along the border of the main Management Studio environment. When the pointer is placed over one of these tabs, the underlying window reveals itself. Auto Hide for a window can be toggled by clicking the **Auto Hide** button, represented by a pushpin in the upper-right corner of the window. There is also an **Auto Hide All** option on the **Window** menu.  
  
Some components can be configured in either tabbed mode where components appear as tabs in the same docking location, or in multiple document interface (MDI) mode where each document has its own window. To configure this feature, on the **Tools** menu, click **Options**, click **Environment**, and then click **General**.  
  
> [!IMPORTANT]  
> When a login (or a contained database user) connects and is authenticated, the connection stores identity information about the login. For a Windows Authentication login, this includes information about membership in Windows groups. The identity of the login remains authenticated as long as the connection is maintained. To force changes in the identity, such as a password reset or change in Windows group membership, the login must logoff from the authentication authority (Windows or SQL Server), and log in again. A member of the **sysadmin** fixed server role or any login with the **ALTER ANY CONNECTION** permission can use the **KILL** command to end a connection and force a login to reconnect. SQL Server Management Studio can reuse connection information when opening multiple connections to Object Explorer and Query Editor windows. Close all connections to force reconnection.  
  
> [!IMPORTANT]  
> When a login (or a contained database user) connects and is authenticated, the connection caches identity information about the login. For a Windows Authentication login, this includes information about membership in Windows groups. The identity of the login remains authenticated as long as the connection is maintained. To force changes in the identity, such as a password reset or change in Windows group membership, the login must logoff from the authentication authority (Windows or SQL Server), and log in again. A member of the **sysadmin** fixed server role or any login with the **ALTER ANY CONNECTION** permission can use the **KILL** command to end a connection and force a login to reconnect. SQL Server Management Studio can reuse connection information when opening multiple connections to Object Explorer and Query Editor windows. Close all connections to force reconnection.  
  
## See Also  
[Use SQL Server Management Studio](../ssms/use-sql-server-management-studio.md)  
[The SQL Server Management Studio Environment](../ssms/the-sql-server-management-studio-environment.md)  
  
