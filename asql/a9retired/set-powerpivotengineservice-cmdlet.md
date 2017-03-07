---
title: "Set-PowerPivotEngineService cmdlet | Microsoft Docs"
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
ms.assetid: cfe632ae-f167-477b-8eee-2aa029791d9f
caps.latest.revision: 9
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Set-PowerPivotEngineService cmdlet
  Sets the global properties of the PowerPivotEngineService object at the farm-level.  
  
 **Applies to:** SharePoint 2010.  
  
## Syntax  
 `Set-PowerPivotEngineService [-Identity] <PowerPivotEngineServicePipeBind> [-UpdateAssemblyInformation <switch>] [-Confirm <switch>] [-ServiceLogOnAsPassword <SecureString>] [-ServiceLogOnAsUserName <string>] [<CommonParameters>]`  
  
## Description  
 The Set-PowerPivotEngineService cmdlet updates the properties of the [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] Engine Service parent object in the farm.  
  
## Parameters  
  
### -Identity \<PowerPivotEngineServicePipeBind>  
 Specifies the parent object for which you are updating properties. The value must be a valid GUID or an instance of the object. You can use Get-PowerPivotEngineService to return an instance of the object.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|0|  
|Default value||  
|Accept pipeline input?|true|  
|Accept wildcard characters?|false|  
  
### -UpdateAssemblyInformation \<switch>  
 Used for upgrade purposes only. If the assembly version deployed in the farm is different from the version that is stored in the SharePoint configuration database, you can run this cmdlet to update the assembly information in the configuration database. Assembly version information is available in the file properties of the Microsoft.AnalysisServices.SharePoint.Integration.dll that is stored in the global assembly.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|1|  
|Default value||  
|Accept pipeline input?|false|  
|Accept wildcard characters?|false|  
  
### -ServiceLogOnAsUserName \<string>  
 Specifies a domain user account under which an operation is performed.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|true|  
|Accept wildcard characters?|false|  
  
### -ServiceLogOnAsPassword \<SecureString>  
 Specifies the password of the domain user account.  
  
|||  
|-|-|  
|Required?|false|  
|Position?|named|  
|Default value||  
|Accept pipeline input?|true|  
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
 This cmdlet supports the common parameters: -Verbose, -Debug, -ErrorAction, -ErrorVariable, -OutBuffer, and -OutVariable. For more information, see [About_CommonParameters](http://go.microsoft.com/fwlink/?linkID=227825).  
  
## Inputs and Outputs  
 The input type is the type of the objects that you can pipe to the cmdlet. The return type is the type of the objects that the cmdlet returns.  
  
|||  
|-|-|  
|Inputs|None.|  
|Outputs|None.|  
  
## Example  
  
```  
C:\PS>$credentials = Get-SPCredential "Contoso\Ann"   
C:\PS>Set-PowerPivotEngineService –ServiceLogOnAsUserName $credentials.UserName -ServiceLogOnAsPassword $credentials.Password  
```  
  
 In a custom function or script, you can use these credential options to run server operations in the context of another user.  
  
  