---
title: "Save Metadata  (OracleToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/11/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9e49c25f-9216-43f4-8e99-2eaab298e215
caps.latest.revision: 3
ms.author: "v-pelars"
manager: "v-pelars"
---
# Save Metadata  (OracleToSQL)
The **Save Metadata** dialog box prompts you to load metadata into your SSMA project before saving it. This lets you have a complete project file that you can use offline and send to other people, such as technical support personnel.  
  
To access the **Save Metadata** dialog box, save the project. If any metadata is missing, SSMA will display the **Save Metadata** dialog box.  
  
## Options  
**Name**  
The name of each database in the project.  
  
**Status**  
Indicates if metadata is loaded into the SSMA project, or if metadata is missing.  
  
SSMA loads metadata into the project as necessary. Metadata is loaded automatically when you browse metadata and convert schemas.  
  
**Select All**  
Selects all listed databases.  
  
**Clear**  
Clears the check box for all databases with missing metadata. You cannot clear the check box if a metadata has been loaded.  
  
**Save**  
Saves the project, loading metadata for selected databases that have missing metadata.  
  
**Cancel**  
Cancels the save operation. Missing metadata is not loaded into the project.  
  
