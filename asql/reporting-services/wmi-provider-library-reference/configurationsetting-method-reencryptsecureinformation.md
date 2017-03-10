---
title: "ReencryptSecureInformation Method (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "ReencryptSecureInformation (WMI MSReportServer_ConfigurationSetting Class)"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "ReencryptSecureInformation method"
ms.assetid: 8a487497-c207-45b2-8c92-87c58cc68716
caps.latest.revision: 18
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - ReencryptSecureInformation
  Generates a new encryption key and re-encrypts all secure information in the catalog using this new key.  
  
## Syntax  
  
```vb#  
Public Sub ReencryptSecureInformation(ByRef HRESULT as Int32, ByRef ExtendedErrors() As String)  
```  
  
```c#  
public void ReencryptSecureInformation (out Int32 HRESULT, out string[] ExtendedErrors);  
```  
  
## Parameters  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
 *ExtendedErrors[]*  
 [out] A string array containing additional errors returned by the call.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful. A non-zero value indicates that an error has occurred.  
  
## Remarks  
 The ReencryptSecureInformation method allows the administrator to replace the existing encryption key with a new key.  
  
 When this method is invoked, the report server generates a new encryption key and iterates through all encrypted content to re-encrypt it with the new encryption key.  
  
 Delivery extensions can store secured information in their delivery settings structures. When ReencryptSecureInformation is called, the report server loads each subscription and the corresponding delivery extension to re-encrypt information stored in the associated settings.  
  
 If this method is run on a computer in a scale-out deployment, each computer in the scale-out deployment will need to be initialized again.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  