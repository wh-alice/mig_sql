---
title: "DatabaseLogonType Property (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "DatabaseLogonType"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "DatabaseLogonType property"
ms.assetid: 6b592582-4c35-4029-ab86-982fff47d8d6
caps.latest.revision: 24
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Property - DatabaseLogonType
  Specifies whether the report server uses a [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows service account, a Windows user account, or a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] login to access the report server database. Read-only.  
  
## Syntax  
  
```vb#  
Public Dim DatabaseLogonType As Integer  
```  
  
```c#  
public int DatabaseLogonType;  
```  
  
## Property Values  
 An **integer** object that represents the login type.  
  
## Example Code  
 [MSReportServer_ConfigurationSetting Class](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-class.md)  
  
## Remarks  
 Values are:  
  
-   0 for Windows login  
  
-   1 for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] login  
  
-   2 to log in as a service  
  
 If you specify 0 (Windows), you must set the value in the [DatabaseLogonAccount](../../reporting-services/wmi-provider-library-reference/configurationsetting-property-databaselogonaccount.md) property to a corresponding a valid Windows user account.  
  
 If you specify 1 (SQL Server), make sure the value of the [DatabaseLogonAccount](../../reporting-services/wmi-provider-library-reference/configurationsetting-property-databaselogonaccount.md) corresponds to a valid [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] login.  
  
 If you specify 2 (Windows service), the report server uses an [!INCLUDE[vstecasp](../../database-engine/configure/windows/includes/vstecasp-md.md)] account and the Windows service account to access the report server database. The DatabaseLogonAccount property is ignored.  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  