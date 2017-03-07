---
title: "Get-PowerPivotEngineServiceInstance cmdlet | Microsoft Docs"
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
ms.assetid: 13389ebf-7b43-4ce3-ba81-8f521137af36
caps.latest.revision: 8
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Get-PowerPivotEngineServiceInstance cmdlet
  Returns one or more instances of SQL Server Analysis Services running on application servers in the farm.  
  
 **Applies to:** SharePoint 2010.  
  
## Syntax  
  
```  
Get-PowerPivotEngineServiceInstance [-Identity <PowerPivotEngineServiceInstancePipeBind>] [<CommonParameters>]  
```  
  
## Description  
 The Get-PowerPivotEngineServiceInstance cmdlet returns the properties of one or more SQL Server Analysis Services ([!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)]) instances running in the farm. The cmdlet reports the application type, status (online or offline), and the identity. To view additional properties of a specific instance, add the Identity parameter and the format-list option to the cmdlet.  
  
## Parameters  
  
### -Identity \<PowerPivotEngineServiceInstancePipeBind>  
 Specifies the service instance to get. The value must be a valid GUID that uniquely identifies the object in the farm.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|0|  
|Default value||  
|Accept pipeline input?|true|  
|Accept wildcard characters?|false|  
  
### \<CommonParameters>  
 This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable,OutBuffer and OutVariable. For more information, see [About_CommonParameters](http://go.microsoft.com/fwlink/?linkID=227825)  
  
## Inputs and Outputs  
 The input type is the type of the objects that you can pipe to the cmdlet. The return type is the type of the objects that the cmdlet returns.  
  
|||  
|-|-|  
|Inputs|None.|  
|Outputs|None.|  
  
## Example 1  
  
```  
C:\PS>Get-PowerPivotEngineServiceInstance -Identity 1234567-890a-bcde-fghijklm | format-list  
```  
  
 This example returns additional properties of the specified instance, including the server name, version, configuration properties, and upgrade status.  
  
  