---
title: "GetDatabaseVersionDisplayName Method (WMI) | Microsoft Docs"
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
  - "GetDatabaseVersionDisplayName method"
ms.assetid: e1286424-7043-4f12-a7ad-1cf69e81baa4
caps.latest.revision: 15
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - GetDatabaseVersionDisplayName
  Gets the display name for a given report server database version string.  
  
## Syntax  
  
```vb#  
Public Sub GetDatabaseVersionDisplayName(Version As String, DisplayName As String, ByRef HRESULT As Int32)  
```  
  
```c#  
public void GetDatabaseVersionDisplayName(string Version, string DisplayName, out Int32 HRESULT);  
```  
  
## Parameters  
 *Version*  
 A string that contains the version string for a report server database.  
  
 *DisplayName*  
 [out] A string that contains the display name that corresponds to the version supplied.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Remarks  
 The following table shows the mapping from database version to display string.  
  
|**Release**|**Version**|**Display Name**|  
|-----------------|-----------------|----------------------|  
|RS 2005 SP2|@DBVersion = 'C.0.8.54'|SQL Server 2005 SP2|  
|RS 2005 SP1|@DBVersion = 'C.0.8.43'|SQL Server 2005 SP1|  
|RS 2005 RTM|@DBVersion = 'C.0.8.40'|SQL Server 2005|  
|RS 2000 SP2|@DBVersion = 'C.0.6.54'|SQL Server 2000 SP2|  
|RS 2000 SP1|@DBVersion = 'C.0.6.51'|SQL Server 2000 SP1|  
|RS 2000 RTM|@DBVersion = 'C.0.6.43'|SQL Server 2000|  
|Hotfix||Closest applicable version|  
  
 For a *Version* prior to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] 2000 an HRESULT of ACT_E_BAD_VERSION is returned.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful. A non-zero value indicates that an error has occurred.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  