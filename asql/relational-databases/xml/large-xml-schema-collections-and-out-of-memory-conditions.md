---
title: "Large XML Schema Collections and Out-of-Memory Conditions | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "out-of-memory conditions"
  - "XML schema collections [SQL Server], large"
ms.assetid: 29b9d839-aaaf-48fb-be17-840c751f36f1
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# Large XML Schema Collections and Out-of-Memory Conditions
  During a call to the built-in XML_SCHEMA_NAMESPACE() function on a large XML schema collection, or when you try to drop large XML schema collections, an out-of-memory condition may occur. The following are solutions you can use to handle this:  
  
-   When the system load is light, use the DROP_XML_SCHEMA_COLLECTION command. If this fails, put the database in single-user mode by using the ALTER DATABASE statement and trying DROP XML SCHEMA COLLECTION again. If the XML schema collection exists in **master**, **model**, or **tempdb**, a server restart is required for single-user mode.  
  
-   When you call the XML_SCHEMA_NAMESPACE, you can try to retrieve a single XML schema namespace, you can try the call when the system load is lighter, or you can try the call in single-user mode.  
  
## See Also  
 [Requirements and Limitations for XML Schema Collections on the Server](../../relational-databases/xml/requirements-and-limitations-for-xml-schema-collections-on-the-server.md)  
  
  