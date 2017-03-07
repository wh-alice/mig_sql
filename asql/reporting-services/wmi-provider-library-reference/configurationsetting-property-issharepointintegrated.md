---
title: "IsSharePointIntegrated Property (WMI) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "IsSharePointIntegrated property"
ms.assetid: c548fed8-5e04-4faf-8b10-b37c86178056
caps.latest.revision: 11
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Property - IsSharePointIntegrated
  Specifies whether the report server is in SharePoint integrated mode. Beginning in [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], this property always returns **False** because in SharePoint mode, [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] instances are SharePoint shared services and are not controlled by WMI providers.  
  
## Syntax  
  
```vb#  
Public Dim IsSharePointIntegrated As Boolean  
```  
  
```c#  
public Boolean IsSharePointIntegrated;  
```  
  
## Property Values  
 A **Boolean** object that indicates whether the report server is in SharePoint integrated mode.  
  
## Example Code  
 [MSReportServer_ConfigurationSetting Class](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-class.md)  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  