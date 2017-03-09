---
title: "OData Source Properties | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4fde5bb0-6d78-4ec4-8f0b-67f91c53fe99
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
---
# OData Source Properties
  When you right-click **OData Source** in the data flow and click **Properties**, you will see properties for the **OData Source** component in the **Properties** window.  
  
|||  
|-|-|  
|Property|Description|  
|CollectionName|Name of the collection you wish to retrieve from the OData service. The **CollectionName** property is used when **UseResourcePath** is False.<br /><br /> This property is expression-able, allowing the value to be set at runtime. However, if the metadata of the collection does not match the metadata that was used at design time, a validation error will occur, causing the data flow execution to fail.|  
|DefaultStringLength|This value specifies default length for string columns that have no max length.<br /><br /> **Default:** 4000|  
|Query|The OData query parameters. This property is expression-able and can be set at runtime.|  
|ResourcePath|Use this property when you need to specify a full resource path, rather than just selecting a collection name. This property is used when **UseResourcePath** is True.|  
|UseResourcePath|When set to True, the **ResourcePath** value is appended to the base URL to determine the OData feed location. When set to False, the **CollectionName** value is used.<br /><br /> **Default:** False|  
  
  