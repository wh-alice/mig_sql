---
title: "ReserveURL Method (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "ReservedURL method"
ms.assetid: b9008a62-3edd-4f8a-99f2-7598c2133899
caps.latest.revision: 14
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - ReserveURL
  Adds a URL reservation for a given application.  
  
## Syntax  
  
```vb#  
Public Sub ReserveURL(Application as String, _  
    UrlString as String, Lcid as Int32, _   
    ByRef [Error] as String, ByRef HRESULT as Int32)  
```  
  
```c#  
public void ReserveURL(string Application, string UrlString, int Lcid,   
    out string error, out int HRESULT);  
```  
  
## Parameters  
 *Application*  
 The name of application to reserve the URL for.  
  
 *URLString*  
 The URL for the reservation.  
  
 *lcid*  
 The locale to use for the error messages returned.  
  
 *Error*  
 [out] The description of the error that occurred.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful; an error code indicates the call was not successful.  
  
## Remarks  
 *UrlString* does not include the virtual directory name. The [SetVirtualDirectory](../../reporting-services/wmi-provider-library-reference/configurationsetting-method-setvirtualdirectory.md) method is provided for that purpose.  
  
 URL reservations are created for the current windows service account. Changing the windows service account requires updating all the URL reservations manually.  
  
 This method causes all application domains to hard recycle. Application domains are restarted after this operation is complete.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  