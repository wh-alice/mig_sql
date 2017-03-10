---
title: "ListIPAddresses Method (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "ListIPAddresses method"
ms.assetid: 7e7cf182-fba0-4604-a474-098461e23e9d
caps.latest.revision: 12
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - ListIPAddresses
  Lists the IP addresses for the report server computer.  
  
## Syntax  
  
```vb#  
Public Sub ListIPAddresses (ByRef IPAddress() as String, _  
    ByRef IPVersion()as String, ByRef IsDhcpEnabled () as Boolean, _   
    ByRef Length as Int32, ByRef HRESULT as Int32)  
```  
  
```c#  
public void ListIPAddresses (out string[] IPAddress,   
    out string[] IPVersion, out bool[] isDhcpEnabled, out int length,   
    out int HRESULT);  
```  
  
## Parameters  
 *IPAddress[]*  
 [out] The list of IP address for the computer.  
  
 *IPVersion[]*  
 [out] The version for the IP addresses.  
  
 *IsDhcpEnabled[]*  
 [out] Indicates whether the IP addresses are DHCP enabled.  
  
 *Length*  
 [out] The length of the array returned by the method.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful; an error code indicates the call was not successful.  
  
## Remarks  
 *IPVersion* strings are V4, V6.  
  
 If *IsDhcpEnabled* is **True**, the *IPAddress* is dynamic. It should not be used for SSL bindings.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  