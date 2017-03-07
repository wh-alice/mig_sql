---
title: "Update-PowerPivotEngineService cmdlet | Microsoft Docs"
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
ms.assetid: ac739786-a28a-4a73-9daf-5b126b29ef3b
caps.latest.revision: 7
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Update-PowerPivotEngineService cmdlet
  Upgrades the parent object of SQL Server Analysis Services in the farm.  
  
 **Applies to:** SharePoint 2010.  
  
## Syntax  
  
```  
Update-PowerPivotEngineService [-Confirm <switch>] [<CommonParameters>]  
```  
  
## Description  
 The **Update-PowerPivotEngineService** cmdlet runs a series of upgrade actions on the SQL Server Analysis Services parent object and instances in the farm. All of the Analysis Services instances in a [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint deployment must run at the same functional level. This cmdlet runs the upgrade actions on all of these objects.  
  
 Run this cmdlet after you have run SQL Server Setup to install a newer version of [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint or if you have applied a cumulative update on the server. To check whether upgrade is required, run `Get-PowerPivotEngineService` to review the **NeedsUpgrade** property. If **NeedsUpgrade** is true, you should run the cmdlet to upgrade the server objects in the farm.  
  
 Because a [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint deployment includes middle-tier and backend data services, you must run `Update-PowerPivotSystemService` whenever you run `Update-PowerPivotEngineService` to ensure that both tiers are the same version across the farm.  
  
 Upgrade cannot be rolled back to the previous version. If you must revert to a previous version, remove [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] from your SharePoint farm and reinstall the software. To verify the upgrade operation succeeded, run `Get-PowerPivotEngineService` to review the global properties for version information and to verify that **NeedsUpgrade** is no longer set to true.  
  
## Parameters  
  
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
 This cmdlet supports the common parameters:  
  
-   Verbose  
  
-   Debug  
  
-   ErrorAction  
  
-   ErrorVariable  
  
-   WarningAction  
  
-   WarningVariable  
  
-   OutBuffer  
  
-   OutVariable  
  
 For more information, see [About_CommonParameters](http://go.microsoft.com/fwlink/?linkID=227825).  
  
## Inputs and Outputs  
 The input type is the type of the objects that you can pipe to the cmdlet. The return type is the type of the objects that the cmdlet returns.  
  
|||  
|-|-|  
|Inputs|None.|  
|Outputs|None.|  
  
  