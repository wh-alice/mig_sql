---
title: "SetWindowsServiceIdentity Method (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "SetWindowsServiceIdentity (WMI MSReportServer_ConfigurationSetting Class)"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "SetWindowsServiceIdentity method"
ms.assetid: 9bbc734c-9e69-48c2-8bec-8abe7c6cc987
caps.latest.revision: 19
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - SetWindowsServiceIdentity
  Makes the Report Server Windows service run as a specified Windows user, and grants this account sufficient file system permissions to allow the report server to operate.  
  
## Syntax  
  
```vb#  
Public Sub SetWindowsServiceIdentity(UseBuiltInAccount as Boolean, _  
    Account as String, Password as String, ByRef HRESULT as Int32)  
```  
  
```c#  
public void SetWindowsServiceIdentity(boolean UseBuiltInAccount,   
    string Account, string Password, out Int32 HRESULT);  
```  
  
## Parameters  
 *UseBuiltInAccount*  
 Indicates whether the specified account is a built-in Windows account.  
  
 *Account*  
 The Windows account to use to run the Windows service, in the format "DOMAIN\alias".  
  
 *Password*  
 The password for the account.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful. A non-zero value indicates that an error has occurred.  
  
## Remarks  
 When the *UseBuiltInAccount* parameter is set to **true** and the report server is running on Microsoft [!INCLUDE[win2kfamily](../../relational-databases/replication/security/includes/win2kfamily-md.md)] or Windows XP, the value of the *Name*, *Domain*, and *Password* parameters are ignored and the Local system account is used.  
  
 When the *UseBuiltInAccount* parameter is set to **true** and the report server is running on Windows Server 2003, the *Domain* and *Password* properties are ignored, and the name field must contain either “Builtin\NetworkService” or “Builtin\System” or “Builtin\LocalService”.  
  
 The SetWindowsServiceIdentity method sets file permissions on files and folders in the report server installation directory.  
  
 The account specified in the *Account* parameter requires **LogonAsService** rights in Windows. The method grants this right to the specified account.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  