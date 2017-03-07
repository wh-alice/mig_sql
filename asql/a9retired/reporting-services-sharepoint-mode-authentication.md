---
title: "Reporting Services SharePoint Mode Authentication | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Upgrade SharePoint Mode [Reporting Services]"
  - "SharePoint integration"
  - "SharePoint Mode"
ms.assetid: 2c19794a-dd55-4fe5-b901-6dd93e9f6beb
caps.latest.revision: 9
ms.author: "mikeray"
manager: "erikre"
robots: noindex,nofollow
---
# Reporting Services SharePoint Mode Authentication
  Use the **Reporting Services SharePoint Mode Authentication** page of the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation Wizard to specify the credentials of the service account that is used in the current [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] installation. The credentials will be used to create a new SharePoint application pool. Also, one new [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint service application will be created. The service application name will contain the name of the previous [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] instance name.  
  
## Options  
  
-   The **SSRS Application Pool Account Name:** option is read only. The value is automatically populated with the current value from the existing [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] installation that you are upgrading.  
  
-   The **SSRS Application Pool Account Password:** option will be disabled if the application pool account does not require a password. For example, “NT Authority\NetworkSerivce”. If the application pool account does require a password, you cannot continue with upgrade until you type the correct password.  
  
 For more information, see [Upgrade and Migrate Reporting Services](http://go.microsoft.com/fwlink/?LinkID=245628) (http://go.microsoft.com/fwlink/?LinkID=245628).  
  
## See Also  
 [Upgrade and Migrate Reporting Services](http://go.microsoft.com/fwlink/?LinkID=245628)  
  
  