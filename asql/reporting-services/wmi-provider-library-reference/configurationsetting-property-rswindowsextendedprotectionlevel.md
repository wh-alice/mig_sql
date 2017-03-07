---
title: "RSWindowsExtendedProtectionLevel Property (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
ms.assetid: 162ffe86-69c3-49d2-b9ed-49d097c05551
caps.latest.revision: 6
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Property - RSWindowsExtendedProtectionLevel
  Returns a string value that indicates the level of protection the report server is configured to support. This property is read-only.  
  
## Syntax  
  
```vb#  
Public Dim RSWindowsExtendedProtectionLevel As String  
```  
  
```c#  
public string RSWindowsExtendedProtectionLevel;  
```  
  
## Remarks  
 Returns a string value that indicates the level of protection the report server is configured to support. If the report server that the WMI provider is connected to does not support extended protection, “” (empty string) is returned. The following list shows valid values:  
  
 `“Off” | “Allow” | “Require”`  
  
## Example Code  
 [MSReportServer_ConfigurationSetting Class](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-class.md)  
  
## See Also  
 [RSWindowsExtendedProtectionScenario Property &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/RSWindowsExtendedProtectionScenario%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)   
 [SetExtendedProtectionSettings Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/SetExtendedProtectionSettings%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)   
 [Extended Protection for Authentication with Reporting Services](../../reporting-services/security/extended-protection-for-authentication-with-reporting-services.md)   
 [RsReportServer.config Configuration File](../../reporting-services/report-server/rsreportserver.config-configuration-file.md)  
  
  