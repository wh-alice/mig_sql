---
title: "Delivery Extensions Overview | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "subscriptions [Reporting Services], delivery extensions"
  - "delivery extensions [Reporting Services], about extensions"
ms.assetid: a30600a9-bbed-4519-9426-3470ff2982e7
caps.latest.revision: 37
ms.author: "carlasab"
manager: "erikre"
---
# Delivery Extensions Overview
  [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] enables users to create and publish reports that, once created and published, can be delivered to various locations. In addition, [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] includes several delivery extensions and a delivery API that enable developers to create additional delivery extensions to further extend the functionality of delivery in [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
 The following table lists the delivery extensions included with [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
|Delivery extension|Description|  
|------------------------|-----------------|  
|Report Server E-Mail|Uses an SMTP server to e-mail reports to individual users or groups.|  
|Report Server File Share|Used to distribute reports within your organization to network file shares. Provides the ability to automatically copy a report to a file share on a designated schedule.|  
  
 ![Reporting Services delivery extension architecture](../../../reporting-services/extensions/delivery-extension/media/bk-reportservicedelivery.gif "Reporting Services delivery extension architecture")  
Reporting Services delivery extension architecture  
  
 Delivery extensions are paired with subscriptions. When creating a subscription, a user can choose one of the available delivery extensions to determine how the report is delivered. In [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], subscriptions are located in the report server database. When an event occurs, [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] matches the event against subscriptions contained in the report server database. For each subscription tied to the event, the report server creates a notification. For data-driven subscriptions, a notification is created for each recipient. Once a notification is created, the report server invokes a particular delivery extension and passes in values for the extensions settings specified in the notification. The delivery extension sends the notification to the user as specified by the selected delivery extension.  
  
 Delivery extensions implement the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] delivery extension API. By supporting the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] delivery extension API, delivery extensions are able to receive notifications from the report server and provide status of the notification.  
  
 The report server does not manage delivery destinations for notifications and reports. Gathering destination information is accomplished through the code you write in your delivery extension.  
  
## Subscriptions and Delivery Extensions  
 Client applications create subscriptions that use delivery extensions using two methods of the Report Server Web service: <xref:ReportService2010.ReportingService2010.CreateSubscription%2A> and <xref:ReportService2010.ReportingService2010.CreateDataDrivenSubscription%2A>. For modifying subscriptions that already exist, the <xref:ReportService2010.ReportingService2010.SetSubscriptionProperties%2A> and <xref:ReportService2010.ReportingService2010.SetDataDrivenSubscriptionProperties%2A> methods are used. When creating a subscription, the user also selects a delivery extension for the subscription and enters values for the required extension settings. When a user saves a subscription, it is stored in the report server database. Subscriptions create notifications based on a schedule or an event. When a delivery begins, the selected delivery extension first loads any configuration data from the configuration file. Next, the extension settings for the subscription are retrieved, and values are set. Finally, the <xref:Microsoft.ReportingServices.Interfaces.IDeliveryExtension.Deliver%2A> method is called, and the notification is sent.  
  
## Developer Requirements  
 Developing a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] delivery extension requires you to have:  
  
-   A deployment computer with a report server installed.  
  
-   A development computer with [!INCLUDE[vsOrcas](../../../relational-databases/server-management-objects-smo/includes/vsorcas-md.md)] or the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] Software Development Kit (SDK) installed.  
  
-   An in-depth understanding of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] features and capabilities, specifically subscription and delivery.  
  
-   An in-depth understanding of [!INCLUDE[vstecasp](../../../database-engine/configure/windows/includes/vstecasp-md.md)] and Web controls if you are planning to implement your own subscription user interface for Report Manager.  
  
-   Development experience in a [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] language such as [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Visual C# or [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[vbprvb](../../../analysis-services/data-mining/includes/vbprvb-md.md)] .NET.  
  
## See Also  
 [Implementing a Delivery Extension](../../../reporting-services/extensions/delivery-extension/implementing-a-delivery-extension.md)   
 [Reporting Services Extension Library](../../../reporting-services/extensions/reporting-services-extension-library.md)  
  
  