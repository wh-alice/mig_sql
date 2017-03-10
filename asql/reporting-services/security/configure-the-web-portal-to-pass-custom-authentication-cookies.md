---
title: "Configure the Web Portal to Pass Custom Authentication Cookies | Microsoft Docs"
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
  - "authentication [Reporting Services]"
  - "extensions [Reporting Services], custom security"
ms.assetid: 91aeb053-149e-4562-ae4c-a688d0e1b2ba
caps.latest.revision: 18
ms.author: "asaxton"
manager: "erikre"
---
# Configure the Web Portal to Pass Custom Authentication Cookies
  If you are using a custom authentication extension, you should configure the [!INCLUDE[ssRSWebPortal](../../reporting-services/includes/ssrswebportal.md)] to transmit custom authentication cookies. Otherwise, the [!INCLUDE[ssRSWebPortal](../../reporting-services/includes/ssrswebportal.md)] will only transmit cookies through HTTP requests specific to the report server. If you want to transmit additional cookies, you must modify the RSReportServer.Config file.  
  
## Modifying the RSReportServer.Config File  
 You can enable the [!INCLUDE[ssRSWebPortal](../../reporting-services/includes/ssrswebportal.md)] to transmit additional cookies through to the report server by adding a \<**PassThroughCookies**> element to the [!INCLUDE[ssRSWebPortal](../../reporting-services/includes/ssrswebportal.md)] configuration settings in the RSReportServer.config file. Transmitting additional cookies is helpful in a single sign-on authentication solution that requires not only the report server authentication cookies, but also cookies from a third-party authentication system.  
  
 To enable additional cookies to be transmitted through HTTP requests when using the [!INCLUDE[ssRSWebPortal](../../reporting-services/includes/ssrswebportal.md)], set the following elements in the RSReportServer.config file:  
  
```  
<UI>  
   <CustomAuthenticationUI>  
      ...  
      <PassThroughCookies>  
         <PassThroughCookie>cookiename1</PassThroughCookie>  
         <PassThroughCookie>cookiename2</PassThroughCookie>  
      </PassThroughCookies>  
   </CustomAuthenticationUI>  
      ...  
</UI>  
```  
  
## See Also  
 [Authentication with the Report Server](../../reporting-services/security/authentication-with-the-report-server.md)   
 [RsReportServer.config Configuration File](../../reporting-services/report-server/rsreportserver.config-configuration-file.md)   
 [Security Extensions Overview](../../reporting-services/extensions/security-extension/security-extensions-overview.md)   
 [Configure and Administer a Report Server &#40;SSRS Native Mode&#41;](../../reporting-services/report-server/configure-and-administer-a-report-server-ssrs-native-mode.md)  
  
  