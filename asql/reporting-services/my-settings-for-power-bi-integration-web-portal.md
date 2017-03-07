---
title: "My Settings for Power BI Integration (web portal) | Microsoft Docs"
ms.date: "2016-05-18"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "pbi"
  - "power bi"
  - "power bi integration"
ms.assetid: 85c2fac7-80bf-45b7-8654-764b5f5231f5
caps.latest.revision: 15
ms.author: "asaxton"
manager: "erikre"
---
# My Settings for Power BI Integration (web portal)
  The **My Settings** page in the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)] is used by individual users to manage their sign-in with [!INCLUDE[sspowerbi](../reporting-services/includes/sspowerbi-md.md)]. When you  go through the steps to pin a report item, you will automatically be prompted to sign.  However,  you can use the **My Settings** page if you need to manually sign in or if you need to sign out.  If the **My Settings** menu option is not visible, the report server has not been integrated with  [!INCLUDE[sspowerbi](../reporting-services/includes/sspowerbi-md.md)].  For more information, see [Power BI Report Server Integration &#40;Configuration Manager&#41;](../reporting-services/install/windows/power-bi-report-server-integration-configuration-manager.md).  
  
![ssRS_WebPortal_MySettings](../reporting-services/media/ssrs-webportal-mysettings.png)  
  
## Why Sign-in  
 When you sign in, you establish a relationship between your [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] user account and  your [!INCLUDE[sspowerbi](../reporting-services/includes/sspowerbi-md.md)] account.  The sign-in creates a security token that is good for 90 days. If the token expires, and you have items pinned to Power BI, you will see a notification.  
   
 ![ssRS_WebPortal_PowerBI_Notification](../reporting-services/media/ssrs-webportal-powerbi-notification.png)    
   
Tiles within [!INCLUDE[sspowerbi](../reporting-services/includes/sspowerbi-md.md)] dashboards will not refresh until you sign in again through **MySettings**.  
  
![ssRS_WebPortal_PowerBI_SignIn_Again](../reporting-services/media/ssrs-webportal-powerbi-signin-again.png)  
  
Once you sign in, a new security token will be created.  Your dashboard tiles will begin updating on their previously configured schedules.  
  
## See Also  
 [Power BI Report Server Integration &#40;Configuration Manager&#41;](../reporting-services/install/windows/power-bi-report-server-integration-configuration-manager.md)   
 [Pin Reporting Services items to Power BI Dashboards](../reporting-services/pin-reporting-services-items-to-power-bi-dashboards.md)   
 [Dashboards in Power BI](https://support.powerbi.com/knowledgebase/articles/424868-dashboards-in-power-bi)  
  
  
[!INCLUDE[feedback_stackoverflow_msdn_connect_md](../integration-services/includes/feedback-stackoverflow-msdn-connect-md.md)]
