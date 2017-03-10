---
title: "Objects Supported by the Generate Scripts Wizard | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 071eb2cb-f073-41ca-9f4d-11d3b8803495
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# Objects Supported by the Generate Scripts Wizard
  The Generate and Publish Scripts wizard supports a subset of the objects supported by the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
## Supported Objects  
 The following table lists the objects that can be published supported by the Generate and Publish Scripts Wizard.  
  
||||||  
|-|-|-|-|-|  
|Application role|Database role|Schema|User-defined aggregate|View*|  
|Assembly|DEFAULT constraint|Stored procedure*|User-defined data type|XML schema collection|  
|CHECK constraint|Full-text catalog|Synonym|User-defined function||  
|CLR (common language runtime) stored procedure*|Index|Table|User-defined table||  
|CLR user-defined function|Rule|User**|User-defined type||  
  
 *Published without encryption.  
  
 **Any non-system users that exist in the database are published as Roles.  
  
  