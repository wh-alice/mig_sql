---
title: "Designate an Events Forwarding Server (SQL Server Management Studio) | Microsoft Docs"
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
  - "event forwarding servers [SQL Server]"
  - "events [SQL Server], forwarding"
  - "alerts [SQL Server], forwarded events"
ms.assetid: 81dfcbe4-3000-4e77-99de-bf85fef63a12
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
# Designate an Events Forwarding Server (SQL Server Management Studio)
This topic describes how to designate a server to which Microsoft SQL Server forwards events in SQL Server 2016 by using SQL Server Management Studio . Note that event forwarding applies to events forwarded between servers, not to events forwarded between instances of SQL Server hosted on a single computer. Also note that in order to receive forwarded events, the alerts management server must be a default instance of SQL Server.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To designate an events forwarding server, using:**  
  
    [SQL Server Management Studio](#SSMSProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
Requires membership in the **sysadmin** fixed server role.  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To designate an events forwarding server  
  
1.  In **Object Explorer,** click the plus sign to expand the server from which you want to forward events to another server.  
  
2.  Right-click **SQL Server Agent** and select **Properties**.  
  
3.  In the **SQL Server Agent Properties –***server_name* dialog box, under **Select a page**, select **Advanced**.  
  
4.  Under **SQL Server event forwarding**, select the **Forward events to a different server** check box.  
  
5.  In the **Server** list, select a server, and then, under **Events**, select one of the following:  
  
    -   Select **Unhandled events** to forward only the events that have not been handled by local alerts.  
  
    -   Select **All events** to forward all events regardless of whether they have been handled by local alerts.  
  
6.  In the **If event has severity at or above** list, click the severity level at which events are forwarded to the selected server.  
  
7.  When finished, click **OK**.  
  
