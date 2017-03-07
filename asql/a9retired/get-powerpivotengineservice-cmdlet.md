---
title: "Get-PowerPivotEngineService cmdlet | Microsoft Docs"
ms.custom: ""
ms.date: "01/21/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 4083fc85-ebdf-4c5f-b2c0-48a5bb3a66f3
caps.latest.revision: 8
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Get-PowerPivotEngineService cmdlet
  Returns the global properties of the SQL Server Analysis Services object in the farm.  
  
 **Applies to:** SharePoint 2010.  
  
## Syntax  
  
```  
Get-PowerPivotEngineService [-Identity <PowerPivotEngineServicePipeBind>] [<CommonParameters>]  
```  
  
## Description  
 The Get-PowerPivotEngineService cmdlet returns the global properties of the SQL Server Analysis Services object. This object provides properties that are shared by all instances of SQL Server Analysis Services ([!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)]) that run on individual application servers in the farm. The parent object shows farm-level settings that do not vary by instance.  
  
 All instances of SQL Server Analysis Services are installed as '[!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)]' named instances. If the farm includes multiple [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint installations, a comma-delimited list of the instances will indicate how many SQL Server Analysis Services servers are in the farm.  
  
## Parameters  
  
### -Identity \<PowerPivotEngineServicePipeBind>  
 Specifies the parent object to get. The value must be a valid GUID that uniquely identifies the object in the farm.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|0|  
|Default value||  
|Accept pipeline input?|true|  
|Accept wildcard characters?|false|  
  
### \<CommonParameters>  
 This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable,OutBuffer and OutVariable. For more information, see [About_CommonParameters](http://go.microsoft.com/fwlink/?linkID=227825).  
  
## Inputs and Outputs  
 The input type is the type of the objects that you can pipe to the cmdlet. The return type is the type of the objects that the cmdlet returns.  
  
|||  
|-|-|  
|Inputs|None.|  
|Outputs|None.|  
  
  