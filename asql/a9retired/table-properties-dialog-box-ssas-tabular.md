---
title: "Table Properties Dialog Box (SSAS - Tabular) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.asvs.ssmsimbi.TableProperties.f1"
ms.assetid: 77571ccd-bdba-4e07-af55-465509dc6a33
caps.latest.revision: 5
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Table Properties Dialog Box (SSAS - Tabular)
  Use the **Table Properties** dialog box in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to view the properties of a table in a tabular model database. All properties are read-only.  
  
 You can display the **Table Properties** dialog box by right-clicking a table in Object Explorer and selecting **Properties**.  
  
## Options  
  
|Term|Definition|  
|----------|----------------|  
|**Name**|Displays the name of the table.|  
|**ID**|Displays the identifier of the table.|  
|**Description**|Displays the description of the table.|  
|**Create Timestamp**|Displays the date and time the table was created.|  
|**Last Schema Update**|Displays the date and time the metadata for the table was last updated.|  
|**State**|Displays the processing state of the table. For more information about the values for this property, see <xref:Microsoft.AnalysisServices.ProcessableMajorObject.State%2A>.|  
|**Last Processed**|Displays the date and time the table was last processed.|  
|**Current Storage Mode**|Displays the current storage mode for the table. Storage mode is set at the database level and inherited by all tables. You cannot use different storage modes at the table level. Valid values are InMemory (default), InMemoryWithDirectQuery, DirectQuery, DirectQueryWithinMemory.|  
  
  