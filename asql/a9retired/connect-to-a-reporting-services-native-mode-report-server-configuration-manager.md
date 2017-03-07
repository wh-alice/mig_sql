---
title: "Connect to a Reporting Services Native Mode Report Server (Configuration Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "SQL13.rsconfigtool.connectiondialog.F1"
helpviewer_keywords: 
  - "report servers [Reporting Services], configuring"
ms.assetid: 8b9ea8d3-827c-4011-9e02-be2eac3bb364
caps.latest.revision: 11
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Connect to a Reporting Services Native Mode Report Server (Configuration Manager)
  Use this dialog box to connect to a local or remote [!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)] or later [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] report server instance. You cannot use this tool to connect to earlier versions of [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] report servers. You can only connect to one instance at a time.  
  
 [!INCLUDE[applies](../a9retired/includes/applies-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Native mode.  
  
> [!NOTE]  
>  The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager is not used to configure and administer [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint mode. You Use SharePoint Central Administration and PowerShell scripts to configure a report server in SharePoint mode. For more information, see [Install Reporting Services SharePoint Mode for SharePoint 2010](http://msdn.microsoft.com/en-us/47efa72e-1735-4387-8485-f8994fb08c8c)  
  
> [!TIP]  
>  The[!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager (RSConfigTool.exe) is installed with a privilege level of “highestAvailable”. This behavior is by design. The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager requires communication with [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] WMI APIs. Some of the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] WMI communication requires a higher level or administrative of privileges.  
  
-   To connect to a local report server instance, use the default values and click **Connect**. The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager provides the local server name and detects the default instance. In most cases, you can click **Connect** without having to change the values. If you installed more than one instance, you must select the one that you want to use.  
  
-   To connect to a remote report server instance, type the server name, click **Find**, select the instance, and then click **Connect**.  
  
 To open this dialog box, start the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager. This dialog box appears immediately when you start the tool. For more information, see [Reporting Services Configuration Manager &#40;Native Mode&#41;](../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md).  
  
## Options  
 **Server Name**  
 Enter the network name of the computer on which [!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)] or later [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] is installed. Type just the computer name; do not include a prefix or slashes.  
  
 **Find**  
 Find the computer specified in **Server Name**.  
  
 **Report Server Instance**  
 Select which instance to connect to if multiple report server instances are installed. Only valid instances are available for selection. If you are running older versions of [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] side-by-side a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] instance, those instances will not appear in the list.  
  
 **Connect**  
 Connect to the server and instance you specified.  
  
## See Also  
 [Reporting Services Configuration Manager &#40;Native Mode&#41;](../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md)  
  
  