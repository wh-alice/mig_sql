---
title: "Connect to Oracle | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "connOra"
ms.assetid: 711ac7ff-5d3d-4533-80ca-d1fecdb3048f
caps.latest.revision: 5
ms.author: "douglasl"
manager: "jhubbard"
---
# Connect to Oracle
  When you add or edit the tables used in the CDC instance for the first time, you may be asked to connect to the Oracle database. You should enter the credentials of an Oracle user who can access the schema of the tables to be captured. Enter the following in this dialog box:  
  
 **Authentication**  
  
 Select one of the following:  
  
-   **Windows Authentication**: Select this to use the current Windows domain credentials. You can use this option only if the Oracle database is configured to work with Windows authentication.  
  
-   **Oracle Authentication**: If you select this option, you must type the **User Name** and **Password** for the user in the Oracle database you are connecting to.  
  
## See Also  
 [Add Tables to a CDC Instance](../../integration-services/change-data-capture/add-tables-to-a-cdc-instance.md)  
  
  