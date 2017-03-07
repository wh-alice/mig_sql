---
title: "Script an Extended Event Session | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
  - "xevents"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 80f9fdde-1f13-4292-a4fc-55da826be3b4
caps.latest.revision: 15
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# Script an Extended Event Session
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  This topic describes how to script an event session. You can export, alter, or drop the event session, or drop and create the event session to the following:  
  
-   **New Query Editor Window**  
  
-   **File**  
  
-   **Clipboard**  
  
-   **Agent Job**  
  
### To script an existing event session  
  
1.  In Object Explorer, expand the **Management** node, and then expand **Extended Events**.  
  
2.  Right-click the session you want to script, point to **Script Session as**, point to **CREATE to**, and then select where you want to script the session.  
  
### To script a new event session  
  
1.  In Object Explorer, expand the **Management** node, and then expand **Extended Events**.  
  
2.  Right-click **Sessions**, and then click **New Session**.  
  
3.  In the **New Session** UI, create the event session, and then select where you want to script the event session from the **Script** drop-down list.  
  
### To script a modified event session  
  
1.  In Object Explorer, expand the **Management** node, and then expand **Extended Events**.  
  
2.  Right-click the session you want to modify, and then click **Properties**.  
  
3.  In the **Session Properties** dialog box, modify the event session, and then select where you want to script the modified session from the **Script** drop-down list.  
  
## See Also  
 [Extended Events](../relational-databases/extended-events/extended-events.md)  
  
  