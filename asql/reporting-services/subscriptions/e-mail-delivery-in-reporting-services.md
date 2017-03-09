---
title: "E-Mail Delivery in Reporting Services | Microsoft Docs"
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
helpviewer_keywords: 
  - "subscriptions [Reporting Services], e-mail"
  - "e-mail [Reporting Services]"
  - "mail [Reporting Services]"
ms.assetid: fda2f130-97b9-4258-9dbb-e93a70f4d08a
caps.latest.revision: 45
ms.author: "asaxton"
manager: "erikre"
---
# E-Mail Delivery in Reporting Services
  SQL Server [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] includes an e-mail delivery extension that provides a way to e-mail a report to individual users or groups. To distribute a report by e-mail, you 1) configure the report server for e-mail delivery and 2) define either a standard subscription or a data-driven subscription. A single subscription cannot deliver multiple reports in a single e-mail message. However you can create multiple subscriptions.  
  
 The report server connects with an e-mail server through a standard connection. It does not use communication that has been encrypted using Secure Sockets Layer (SSL). The e-mail server must be a remote or local Simple Mail Transport Protocol (SMTP) server on the same network as the report server.  
  
 For detailed steps that walk you through creating a subscription, see the following:  
  
-   [Create and Manage Subscriptions for Native Mode Report Servers](../../reporting-services/subscriptions/create-and-manage-subscriptions-for-native-mode-report-servers.md)  
  
-   [Create and Manage Subscriptions for SharePoint Mode Report Servers](../../reporting-services/subscriptions/create-and-manage-subscriptions-for-sharepoint-mode-report-servers.md)  
  
||  
|-|  
|**[!INCLUDE[applies](../../analysis-services/includes/applies-md.md)]**  [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] SharePoint mode &#124; [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Native mode|  
  
## E-Mail Delivery Options  
 Report server e-mail delivery can deliver reports in the following way  
  
-   Send a notification and a hyperlink to the generated report.  
  
-   Send a notification in the Subject: line of an e-mail message. By default, the Subject: line in the subscription definition includes the following variables that are replaced by report-specific information when the subscription is processed:  
  
     **@ReportName** specifies the name of the report.  
  
     **@ExecutionTime** specifies when the report was executed.  
  
     You can combine these variables with static text or modify the text in the Subject: line for each subscription.  
  
-   Send an embedded or attached report. The rendering format and browser determine whether the report is embedded or attached.  
  
     If your browser supports HTML 4.0 and MHTML, and you choose the Web archive rendering format, the report is embedded as part of the message. All other rendering formats (CSV, PDF, and so on) deliver reports as attachments. For native mode report servers you can disable this functionality in the RSReportServer.config configuration file.  
  
     [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] does not check the size of the attachment or message before sending the report. If the attachment or message exceeds the maximum limit allowed by your mail server, the report is not delivered. Choose one of the other delivery options (such as URL or notification) if for large reports.  
  
 You set delivery options that determine how a report is delivered when you create the subscription. For example, if you select **Include Link** in the subscription, the e-mail message includes a hyperlink to the report.  
  
## Native mode role-based e-Mail Settings  
 In a Native mode report server environment, the e-mail delivery settings you work with vary depending on whether your role includes the "Manage individual subscriptions" task or the "Manage all subscriptions" task.  
  
|Task|Available settings|  
|----------|------------------------|  
|Manage individual subscriptions|Shows fields that enable a user to automate and deliver a report to himself or herself. In this mode, fields that accept e-mail aliases are not available.|  
|Manage all subscriptions|Shows fields that support wider distribution, including To:, Cc:, Bcc:, and Reply-To: fields, providing more ways to route a report to more subscribers. The availability of e-mail alias fields is defined through the RSReportServer configuration file settings.|  
  
## Specifying E-Mail Addresses in a Subscription  
 If you are distributing reports within an intranet and you are using an SMTP gateway to a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Exchange server, type the e-mail alias (as if you were sending e-mail to a coworker). If delivery is to an external e-mail account, type the full e-mail address. If you specify more e-mail addresses to add others to your subscription, subscribers get an exact copy of the report that is produced from this subscription.  
  
 The report server does not validate e-mail addresses or obtain e-mail addresses from an e-mail server. You must know in advance which e-mail addresses you want to use. By default, you can e-mail reports to any valid e-mail account within or outside of your organization. Configuration settings can be used, however, to restrict e-mail delivery to mail server hosts that you identify by name. You can specify additional hosts if you want to support e-mail delivery to people that are not members of your organization.  
  
 The e-mail message used to deliver the report must be sent from an e-mail account that is defined on the e-mail server. A configuration setting specifies the e-mail account. The e-mail account is used for all reports delivered by the e-mail delivery extension; you cannot specify multiple accounts or vary the account for individual reports.  
  
## Controlling E-Mail Delivery  
 You can configure a report server to limit e-mail distribution to specific host domains. For example, you can prevent a Native report server from delivering a report to all domains except those listed in the **RSReportServer.config** configuration file.  
  
 You can also set configuration settings to hide the **To** field in a subscription. In this case, reports are delivered only to the user defining the subscription. However, after a report is sent to a user, you cannot explicitly prevent it from being forwarded.  
  
 The most effective way to control report distribution is to configure a report server to send only a report server URL. The report server uses Windows Authentication and a role-based authorization model to control access to a report. If a user accidentally receives through e-mail a report that he or she is not authorized to view, the report server will not display the report. For more information about subscriptions, see the following.  
  
## E-Mail Server Configuration  
 For a Native mode report server, the e-mail delivery extension is configured through the Native mode [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager and by editing the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] configuration files. For a SharePoint mode report server, the e-mail delivery extension is configured in SharePoint management pages and PowerShell scripts.  
  
 
 For information on how to configure a native mode report server, see [email settings - Reporting Services Native mode (Configuration Manager)](https://msdn.microsoft.com/library/ms189342.aspx)
 
 
 For information on how to configure a SharePoint mode report server, see the following:  
  
  
## See Also  
 [Tasks and Permissions](../../reporting-services/security/tasks-and-permissions.md)   
 [Subscriptions and Delivery &#40;Reporting Services&#41;](../../reporting-services/subscriptions/subscriptions-and-delivery-reporting-services.md)   
 [Data-Driven Subscriptions](../../reporting-services/subscriptions/data-driven-subscriptions.md)   
 [Role Assignments](../../reporting-services/security/role-assignments.md)  
  
  