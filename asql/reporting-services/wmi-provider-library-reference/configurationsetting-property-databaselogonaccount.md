---
title: "DatabaseLogonAccount Property (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
apiname: 
  - "DatabaseLogonAccount"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "DatabaseLogonAccount property"
ms.assetid: 55f2863f-1ac1-4519-b512-e7f11c0ea5ea
caps.latest.revision: 24
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Property - DatabaseLogonAccount
  Specifies the logon account that the report server uses when connecting to the report server database. Read only.  
  
## Syntax  
  
```vb#  
Public Dim DatabaseLogonAccount As String  
```  
  
```c#  
public string DatabaseLogonAccount;  
```  
  
## Property Values  
 A **String** object that represents the logon account name.  
  
## Example Code  
 [MSReportServer_ConfigurationSetting Class](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-class.md)  
  
## Remarks  
 Valid values for this property will vary depending on the value of the [DatabaseLogonType](../Topic/DatabaseLogonType%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md) property.  
  
 This property is ignored if the [DatabaseLogonType](../Topic/DatabaseLogonType%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md) property is set to **2 (Service)**.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  