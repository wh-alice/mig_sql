---
title: "Upgrade Lookup Transformations | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "Lookup transformation and upgrading"
  - "upgrading caching for Lookup transformation"
  - "upgrading Lookup transformation"
ms.assetid: d9b2c281-91ee-4e20-bdf0-0cd77d4a4241
caps.latest.revision: 16
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Upgrade Lookup Transformations
  When you upgrade from [!INCLUDE[ssVersion2005](../a9notintoc/includes/ssversion2005-md.md)] to [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] consider modifying packages to take advantage of the new features in the Lookup Transformation. The transformation supports the caching types and data output options available in [!INCLUDE[ssISversion2005](../a9retired/includes/ssisversion2005-md.md)]. For more information about additional the caching and data outputs, see [Lookup Transformation](../integration-services/data-flow/transformations/lookup-transformation.md).  
  
 In [!INCLUDE[ssISversion2005](../a9retired/includes/ssisversion2005-md.md)], the available caching types are full caching, partial caching, and no caching. In [!INCLUDE[ssISCurrent](../a9retired/includes/ssiscurrent-md.md)], you can configure a Lookup transformation to use one of these caching types. For more information about how to implement partial caching or no caching, see [Implement a Lookup in No Cache or Partial Cache Mode](../integration-services/data-flow/transformations/implement-a-lookup-in-no-cache-or-partial-cache-mode.md). For information about how to implement full caching, see [Implement a Lookup Transformation in Full Cache Mode Using the Cache Connection Manager](../integration-services/data-flow/transformations/lookup-transformation-full-cache-mode-cache-connection-manager.md) and [Implement a Lookup Transformation in Full Cache Mode Using the OLE DB Connection Manager](../integration-services/data-flow/transformations/lookup-transformation-full-cache-mode-ole-db-connection-manager.md).  
  
 In [!INCLUDE[ssISversion2005](../a9retired/includes/ssisversion2005-md.md)], the Lookup transformation had an input, an output, and an error output. Rows in the input that had matching entries in the reference dataset were handled by the output. Rows in the input that did not have matching entries were treated as errors and could be redirected to the error output. In [!INCLUDE[ssISCurrent](../a9retired/includes/ssiscurrent-md.md)], the Lookup transformation has two outputs: a match output and a no match output.  
  
 By default, when you run a Lookup transformation that was created in [!INCLUDE[ssVersion2005](../a9notintoc/includes/ssversion2005-md.md)], [!INCLUDE[ssISCurrent](../a9retired/includes/ssiscurrent-md.md)] treats the rows without matching entries as errors and enables you to redirect the rows to an error output. You have the option of configuring the Lookup transformation to treat the rows as non-errors and redirect the rows to the no match output.  
  
 For more information, see [Lookup Transformation Editor &#40;General Page&#41;](../integration-services/data-flow/transformations/lookup-transformation-editor-general-page.md).  
  
## See Also  
 [Lookup Transformation](../integration-services/data-flow/transformations/lookup-transformation.md)  
  
  