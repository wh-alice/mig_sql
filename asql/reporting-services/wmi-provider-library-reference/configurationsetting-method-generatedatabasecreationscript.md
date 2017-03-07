---
title: "GenerateDatabaseCreationScript Method (WMI MSReportServer_ConfigurationSetting) | Microsoft Docs"
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
  - "GenerateDatabaseCreationScript (WMI MSReportServer_ConfigurationSetting Class)"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "GenerateDatabaseCreationScript method"
ms.assetid: 25232dc7-00fe-4cd1-8a1c-7e36d552de00
caps.latest.revision: 25
ms.author: "asaxton"
manager: "erikre"
---
# ConfigurationSetting Method - GenerateDatabaseCreationScript
  Generates a SQL Script that can be used to create a report server database.  
  
## Syntax  
  
```vb#  
Public Sub GenerateDatabaseCreationScript(ByVal DatabaseName As String, _  
    ByVal Lcid As Int32, ByVal IsSharePointMode As Boolean, ByRef Script As String, _  
    ByRef HRESULT As Int32)  
```  
  
```c#  
public void GenerateDatabaseCreationScript(string DatabaseName, Int32 Lcid,   
    Boolean IsSharePointMode, out string Script, out Int32 HRESULT);  
```  
  
## Parameters  
 *Databasename*  
 A string containing the name of the report server database to create.  
  
 *Lcid*  
 Value used for localization of role names.  
  
 *IsSharePointMode*  
 Indicates whether to create database in native mode or SharePoint mode.  
  
> [!IMPORTANT]  
>  Beginning in [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], *IsSharePointMode*=**True** is not supported because in SharePoint mode, [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] is a SharePoint shared service and is not controlled by the WMI provider. You should always set this parameter to **False**.  
  
 *Script*  
 [out] A string containing the generated SQL script.  
  
 *HRESULT*  
 [out] Value indicating whether the call succeeded or failed.  
  
## Return Value  
 Returns an *HRESULT* indicating success or failure of the method call. A value of 0 indicates that the method call was successful. A non-zero value indicates that an error has occurred.  
  
## Remarks  
 This method generates an SQL script that creates report server databases for the version of the report server currently connected to.  
  
 The value supplied in the *DatabaseName* parameter must conform to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database naming conventions.  
  
 The method does not check the existence of the database when generating the script.  
  
 This method does not check for the existence of the report server database when generating the script.  
  
 The generated script supports [!INCLUDE[ssVersion2000](../../a9notintoc/includes/ssversion2000-md.md)], [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] 2005, and [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)].  
  
## Requirements  
 **Namespace:** [!INCLUDE[ssRSWMInmspcA](../../reporting-services/wmi-provider-library-reference/includes/ssrswminmspca-md.md)]  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  
  
  