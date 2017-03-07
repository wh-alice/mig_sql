---
title: "Configure Email Notifications (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "e-mail [Master Data Services], configuring"
  - "notifications [Master Data Services], configuring notifications"
ms.assetid: 4241a6ab-7465-471b-9890-57c6b572037e
caps.latest.revision: 7
ms.author: "carlasab"
manager: "jhubbard"
---
# Configure Email Notifications (Master Data Services)
  Configure notification emails when you want [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] to send email messages automatically.  
  
### To configure notifications  
  
1.  In [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)], on the **Database** page, select your [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] database.  
  
2.  In the **System Settings** section, click **Create Profile**.  
  
3.  Complete all required fields. For more information, see [Create Database Mail Profile and Account Dialog Box &#40;Master Data Services Configuration Manager&#41;](../Topic/Create%20Database%20Mail%20Profile%20and%20Account%20Dialog%20Box%20\(Master%20Data%20Services%20Configuration%20Manager\).md).  
  
4.  Click **OK**.  
  
    > [!NOTE]  
    >  After you configure notifications, you cannot use [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] to make changes. You must make changes directly in the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] database. For more information, see [Database Mail Configuration Objects](../relational-databases/database-mail/database-mail-configuration-objects.md).  
  
## Next Steps  
  
-   There are settings in [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] that affect notifications. You can adjust these settings in [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] or directly in the System Settings table in the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] database. For more information, see [System Settings &#40;Master Data Services&#41;](../master-data-services/system-settings-master-data-services.md).  
  
## See Also  
 [Notifications &#40;Master Data Services&#41;](../master-data-services/notifications-master-data-services.md)   
 [Troubleshooting Email Notifications (Master Data Services)](http://social.technet.microsoft.com/wiki/contents/articles/troubleshooting-email-notifications-master-data-services.aspx)   
 [Configure Business Rules to Send Notifications &#40;Master Data Services&#41;](../master-data-services/configure-business-rules-to-send-notifications-master-data-services.md)  
  
  