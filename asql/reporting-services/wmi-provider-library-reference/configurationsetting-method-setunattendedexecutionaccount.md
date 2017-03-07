---
title: "SetUnattendedExecutionAccount Method (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "SetUnattendedExecutionAccount (WMI MSReportServer_ConfigurationSetting Class)"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "SetUnattendedExecutionAccount method"
ms.assetid: 1ba6be6f-b05c-4ea0-af98-cd0780290b70
caps.latest.revision: 18
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - SetUnattendedExecutionAccount
  Specifies the account used to execute reports unattended.  
  
## Syntax  
  
```vb#  
Public Sub SetUnattendedExecutionAccount(UserName as String, _  
    Password as String, ByRef HRESULT as Int32)  
```  
  
```c#  
public void SetUnattendedExecutionAccount (string UserName,   
    string Password, out Int32 HRESULT);  
```  
  
## Parameters  
 *UserName*  
 A Windows account to be used for unattended executions.  
  
 *Password*  
 The password for the specified account.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful. A non-zero value indicates that an error has occurred.  
  
## Remarks  
 The SetUnattendedExecutionAccount method does not verify whether the report server can log in as the specified user.  
  
 It is not possible to use the SetUnattendedExecutionAccount method to run unattended executions in the context of the report server Windows service.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  