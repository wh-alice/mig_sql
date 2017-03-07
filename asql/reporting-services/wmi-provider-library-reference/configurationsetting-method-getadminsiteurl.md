---
title: "GetAdminSiteUrl Method (WMI) | Microsoft Docs"
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
  - "GetAdminSiteUrl method"
ms.assetid: fbc5bf3c-120c-4aec-a4f2-f5391bd415f6
caps.latest.revision: 14
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - GetAdminSiteUrl
  Gets the absolute URL for the Central Administration Web site for the Microsoft [!INCLUDE[winSPServ](../../relational-databases/tables/includes/winspserv-md.md)], [!INCLUDE[offSPServ](../../a9retired/includes/offspserv-md.md)], [!INCLUDE[SPF2010](../../a9retired/includes/spf2010-md.md)], or [!INCLUDE[SPS2010](../../a9retired/includes/sps2010-md.md)] farm that the report server is integrated with.  
  
## Syntax  
  
```vb#  
Public Sub GetAdminSiteUrl(ByRef AdminSiteUrl as String, _  
ByRef HRESULT as Int32)  
```  
  
```c#  
public void GetAdminSiteUrl(out string AdminSiteUrl, out Int32 HRESULT);  
```  
  
## Parameters  
 *AdminSiteUrl*  
 [out] A string that contains the absolute URL for the Central Administration Web site for the SharePoint farm that the report server is integrated with.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful. A non-zero value indicates that an error has occurred.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Methods](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-methods.md)  
  
  