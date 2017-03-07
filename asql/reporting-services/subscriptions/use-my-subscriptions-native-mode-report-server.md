---
title: "Use My Subscriptions (Native Mode Report Server) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "subscriptions [Reporting Services], My Subscriptions page"
  - "My Subscriptions page [Reporting Services]"
ms.assetid: e96623ba-677e-4748-8787-f32bed3b5c12
caps.latest.revision: 40
ms.author: "asaxton"
manager: "erikre"
---
# Use My Subscriptions (Native Mode Report Server)
The [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Web portal includes a **My Subscriptions** page that organizes all of your subscriptions into one place. You can use *My Subscriptions* to view, modify, enable, disable, and delete existing subscriptions. However, you cannot use it to create subscriptions.  My Subscriptions shows only the subscriptions that you create. It does not list subscriptions that are owned by other users, even if you are added as a subscriber to those subscriptions, nor does it show data-driven subscriptions.
  
||  
|-|  
|**[!INCLUDE[applies](../../a9retired/includes/applies-md.md)]**  [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] Native mode|  
  
The search field will dynamically filter the list of subscriptions as youYou cannot search for subscriptions by name, nor can you search for subscriptions based on trigger information, status information, and so forth. For more information, see [Create and Manage Subscriptions for Native Mode Report Servers](../../reporting-services/subscriptions/create-and-manage-subscriptions-for-native-mode-report-servers.md).
  
## To open the My Subscriptions page  
1. Open the [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] Web portal.
2. Click settings ![ssrs_portal_settings_gear](../../reporting-services/subscriptions/media/ssrs-portal-settings-gear.png) in the toolbar.
3. Click **My Subscriptions**.

For more information, see [Web portal (SSRS Native Mode)](../../reporting-services/web-portal-ssrs-native-mode.md).

## Use Windows PowerShell to list MySubscriptions  
 ![PowerShell related content](../../analysis-services/instances/install/windows/media/rs-powershellicon.jpg "PowerShell related content")  
  
 The following PowerShell script will return the list of subscriptions and subscription properties for the current user. For more information, see [ReportingService2010.ListMySubscriptions Method](http://technet.microsoft.com/library/reportservice2010.reportingservice2010.listmysubscriptions.aspx).  
  
```  
#server -  all subscriptions of the current user at the given server or site  
$server="[server name]/reportserver"  
$rs2010 = New-WebServiceProxy -Uri "http://$server/ReportService2010.asmx" -Namespace SSRS.ReportingService2010 -UseDefaultCredential;  
  
$subscriptions=ListMySubscriptions(ItemPathOrSiteURL)  
$subscriptions | select Path, report, Description, Owner, SubscriptionID, lastexecuted,Status  
#uncomment the following to list all the subscription properties  
#$subscriptions

```  
  
## See Also  
 [Data-Driven Subscriptions](../../reporting-services/subscriptions/data-driven-subscriptions.md)   
 [Subscriptions and Delivery &#40;Reporting Services&#41;](../../reporting-services/subscriptions/subscriptions-and-delivery-reporting-services.md)   
 [old_Create and Manage Subscriptions for Native Mode Report Servers](http://msdn.microsoft.com/en-us/7f46cbdb-5102-4941-bca2-5e0ff9012c6b)  
  
  