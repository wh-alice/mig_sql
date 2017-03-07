---
title: "Reporting Services Security and Protection | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-26"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "security [Reporting Services]"
  - "Reporting Services, security"
ms.assetid: 270075c5-bf12-4467-a775-abbda3d954a5
caps.latest.revision: 21
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services Security and Protection
  You can use information in this section to learn about the security features of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)][!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)]. This section also explains the authorization models and authentication providers supported in [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)].  
  
## Extended Protection for Authentication  
 Beginning with [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)], support for Extended Protection for Authentication is available. The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] feature supports the use of channel binding and service binding to enhance protection of authentication. The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] features need to be used with an operating system that supports Extended Protection. For more information, see [Extended Protection for Authentication with Reporting Services](../../reporting-services/security/extended-protection-for-authentication-with-reporting-services.md).  
  
## Authentication and Authorization  
 [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] provides different authentication types for users and client applications to authenticate with the report server. Using the right authentication type for your report server enables your organization to achieve the appropriate level of security required by your organization. For more information, see [Authentication with the Report Server](../../reporting-services/security/authentication-with-the-report-server.md).  
  
 [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] also employs roles and permissions to control user access to content in the report server catalog (in other words, who can access what, and how s/he can access it). For more information, see [Roles and Permissions &#40;Reporting Services&#41;](../../reporting-services/security/roles-and-permissions-reporting-services.md).  
  
## Related Tasks  
  
|Task Descriptions|Links|  
|-----------------------|-----------|  
|Configure the Secure Socket Layer (SSL) to secure client connections to the report server.|[Configure SSL Connections on a Native Mode Report Server](../../reporting-services/security/configure-ssl-connections-on-a-native-mode-report-server.md)|  
  
  