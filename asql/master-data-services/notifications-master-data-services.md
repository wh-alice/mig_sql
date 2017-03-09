---
title: "Notifications (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "notifications [Master Data Services]"
  - "notifications [Master Data Services], about notifications"
  - "e-mail [Master Data Services]"
  - "e-mail [Master Data Services], about e-mail notifications"
ms.assetid: d7ad32d5-9fe5-48fd-8c61-0b00c0aff082
caps.latest.revision: 15
ms.author: "carlasab"
manager: "jhubbard"
---
# Notifications (Master Data Services)
  [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] can be configured to send an email notification when business rule validation fails, the status of a model version changes, or the status of a changeset changes.  
  
## How Notifications Are Sent  
 You configure notifications in [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)]. Notifications send email messages by using Database Mail on the instance of [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../analysis-services/instances/install/windows/includes/ssde-md.md)] that hosts the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] database. For more information about Database Mail, see [Database Mail Configuration Objects](../relational-databases/database-mail/database-mail-configuration-objects.md) in [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.  
  
## When Notifications Are Sent  
 After notifications are configured, automated email notifications can be sent in the following instances.  
  
|Instance|Description|  
|--------------|-----------------|  
|Data fails business rule validation|Individual business rules must be configured to send email when an attribute value fails business rule validation. The notification contains the following information.<br /><br /> Model<br /><br /> Version<br /><br /> Entity<br /><br /> Member Code<br /><br /> Failed business rule<br /><br /> Link to the member for which the attribute value fails the business rule<br /><br /> Notification issued time<br /><br /> For more information, see [Configure Business Rules to Send Notifications &#40;Master Data Services&#41;](../master-data-services/configure-business-rules-to-send-notifications-master-data-services.md).|  
|Model version status changes|Each time a model version's status changes, users that are model administrators receive notifications automatically. The notification contains the following information.<br /><br /> Model<br /><br /> Version<br /><br /> Prior and new status of the version<br /><br /> Notification issued time<br /><br /> For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).|  
|Changeset status changes|Each time a changeset status changes for an entity that requires approval, entity administrators and/or change set owners receive notifications automatically. The notification contains the following information.<br /><br /> Model<br /><br /> Version<br /><br /> Changeset Name<br /><br /> Prior Status<br /><br /> New Status<br /><br /> Link to apply the changeset in order to view and modify the pending changes.<br /><br /> For more information, see [Changesets &#40;Master Data Services&#41;](../master-data-services/changesets-master-data-services.md)|  
  
## System Settings  
 There are settings in [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] that affect notifications. You can adjust these settings in [!INCLUDE[ssMDScfgmgr](../database-engine/install/windows/includes/ssmdscfgmgr-md.md)] or directly in the System Settings table in the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] database. For more information, see [System Settings &#40;Master Data Services&#41;](../master-data-services/system-settings-master-data-services.md).  
  
## Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Configure [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] to send email notifications.|[Configure Email Notifications &#40;Master Data Services&#41;](../master-data-services/configure-email-notifications-master-data-services.md)|  
|Configure [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] to send notifications when attribute values change.|[Configure Business Rules to Send Notifications &#40;Master Data Services&#41;](../master-data-services/configure-business-rules-to-send-notifications-master-data-services.md)|  
  
## Related Content  
  
-   [Business Rules &#40;Master Data Services&#41;](../master-data-services/business-rules-master-data-services.md)  
  
-   [Versions &#40;Master Data Services&#41;](../master-data-services/versions-master-data-services.md)  
  
-   [Troubleshooting Email Notifications (Master Data Services)](http://social.technet.microsoft.com/wiki/contents/articles/troubleshooting-email-notifications-master-data-services.aspx)  
  
  