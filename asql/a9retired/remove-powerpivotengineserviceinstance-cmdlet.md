---
title: "Remove-PowerPivotEngineServiceInstance cmdlet | Microsoft Docs"
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
ms.assetid: 4375eee3-6193-422d-b4f0-8f302a82bfc0
caps.latest.revision: 10
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Remove-PowerPivotEngineServiceInstance cmdlet
  Removes a SQL Server Analysis Services instance from the farm.  
  
 **Applies to:** SharePoint 2010.  
  
## Syntax  
  
```  
Remove-PowerPivotEngineServiceInstance [-Identity <PowerPivotEngineServiceInstancePipeBind>] DeleteLocal <switch>] [-Confirm <switch>] [- [<CommonParameters>]  
```  
  
## Description  
 The Remove-PowerPivotEngineServiceInstance cmdlet removes instance information about SQL Server Analysis Services from the farm. It does not remove the program files. To permanently remove the program files, you must uninstall them.  
  
 If you remove SQL Server Analysis Services, be sure to also run Remove-PowerPivotSystemServiceInstance to remove the associated web services that use the Analysis Services, followed by Remove-PowerPivotServiceApplication to delete any [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] service applications. The service applications will no longer run once the services are removed.  
  
 To revert this change, you can run New-PowerPivotEngineServiceInstance -Provision:$true to re-enable instance information.  
  
## Parameters  
  
### -Identity \<PowerPivotEngineServiceInstancePipeBind>  
 Specifies the GUID of the [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] Engine Service instance you want to remove. There is one service instance on each application server that has an installation of [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|0|  
|Default value||  
|Accept pipeline input?|true|  
|Accept wildcard characters?|false|  
  
### -DeleteLocal \<switch>  
 Deletes the instance of [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] Engine Service that is installed on the local computer, allowing you to remove the instance without having to specify an object identity.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -Confirm \<switch>  
 Prompts you for confirmation before executing the command. This value is enabled by default. To bypass the confirmation response in a command, specify Confirm:$false on the command.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### \<CommonParameters>  
 This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable,OutBuffer and OutVariable. For more information, see [About_CommonParameters](http://go.microsoft.com/fwlink/?linkID=227825).  
  
## Inputs and Outputs  
 The input type is the type of the objects that you can pipe to the cmdlet. The return type is the type of the objects that the cmdlet returns.  
  
|||  
|-|-|  
|Inputs|None.|  
|Outputs|None.|  
  
## Example 1  
  
```  
C:\PS>Remove-PowerPivotEngineServiceInstance -deletelocal  
```  
  
 This example deletes the local SQL Server Analysis Services ([!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)]) instance from SharePoint. The service will still be installed. Use SQL Server Setup to uninstall the instance.  
  
  