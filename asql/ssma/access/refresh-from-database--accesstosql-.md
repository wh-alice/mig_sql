---
title: "Refresh from Database (AccessToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: 3b671f49-c4cc-44fd-801e-e738a8c79415
caps.latest.revision: 4
ms.author: "lonnyb"
manager: "lonnyb"
---
# Refresh from Database (AccessToSQL)
The **Refresh from Database** dialog box lets you select which objects to refresh from the Access database. Rows in the dialog box are color coded based on the state of the metadata:  
  
-   If the object metadata has changed locally and in the Access database, the row is blue.  
  
-   If the object metadata has changed in the Access database but not in SSMA, the row is yellow.  
  
-   If the object metadata has changed locally, but not in the Access database, the row is green.  
  
-   If the object is new in the Access database, the row is pink.  
  
You can specify default object refresh settings in the **Project Settings** dialog box. For more information, see [Project Settings &#40;Loading Objects&#41; &#40;AccessToSQL&#41;](../../ssma/access/project-settings--loading-objects---accesstosql-.md)  
  
To access the **Refresh from Database** dialog box, right-click any **database** node in Access Metadata Explorer and click **Refresh from Database**.  
  
