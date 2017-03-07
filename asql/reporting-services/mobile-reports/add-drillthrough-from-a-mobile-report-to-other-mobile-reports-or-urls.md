---
title: "Add drillthrough from a mobile report to other mobile reports or URLs | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-20"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 30d0a3fd-5588-417e-b25d-cc5b7624cdb1
caps.latest.revision: 12
ms.author: "maggies"
manager: "erikre"
---
# Add drillthrough from a mobile report to other mobile reports or URLs
You can add drillthrough from any gauge, chart, or data grid in a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] mobile report to another mobile report or custom URL. 

A *drillthrough*  is a link from a source report that opens another target report or URL. The target drillthrough report often contains details about some item in the summary report. Depending on the source mobile report, one or more parameters can be passed to the target mobile report or integrated into a custom URL.  
  
When you view the source mobile report in the [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] web portal and select an element with a drillthrough target, you go to that target, either another mobile report or a URL.  

Report items with drillthrough, either to a URL or another mobile report, have the drillthrough icon ![mobile-report-drill-through-icon](../../reporting-services/mobile-reports/media/mobile-report-drill-through-icon.png) in the upper-right corner.

![mobile-report-gauge-drill-through](../../reporting-services/mobile-reports/media/mobile-report-gauge-drill-through.png) 

>**Tip**: Create the target report and save it to a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] web portal first. If you plan to pass parameters from the source report, add the parameters to the target report, too. Then you can set up drillthrough from the source report to the target report. [Add parameters to a mobile report](../../reporting-services/mobile-reports/add-parameters-to-a-mobile-report-reporting-services.md).
 
## Set up drillthrough to a mobile report  

1. In Layout view in [!INCLUDE[SS_MobileReptPub_Long](../../a9retired/includes/ss-mobilereptpub-long.md)], select a visualization that supports drillthrough.   

   Maps and gauges support drillthrough, as do most charts and simple data grids.
   
2. In the **Visual Properties** pane, select **Drillthrough target** > **Mobile report**.  
3. Select the server and the target mobile report.  

   >Note: If the target mobile report is not on the same server as the source mobile report, connect to it with a custom URL instead, as explained in the next section.  
 
4. After you select a target mobile report, you see its available input parameters, including properties that can be bound to navigator controls and parameters configured on datasets of the target mobile report.  

   ![mobile-report-drillthrough-target](../../reporting-services/mobile-reports/media/mobile-report-drillthrough-target.PNG)
   
   *Drillthrough properties for the target mobile report*  
  
5. Select the arrow to the right of each property to connect properties with matching data types to available output properties on the source mobile report. You can also set defaults for each output here, in case the report user hasn't interacted with the source mobile report before drilling through to the destination mobile report.  
  
## Set up a drillthrough to a custom URL  
  
1. In Layout view in [!INCLUDE[SS_MobileReptPub_Long](../../a9retired/includes/ss-mobilereptpub-long.md)], select a visualization that supports drillthrough targets.    
2. In the **Visual Properties** pane, select **Drillthrough target** > **Custom URL**.  this will open the drillthrough configuration dialog.  
  
3. In **Set drillthrough URL**, enter the destination URL to go to when the visualization is clicked, and and select from **Available parameters** listed on the right. A preview of the custom URL combined with sample resolved parameters (if included) is displayed in the panel below.  
  
   ![mobile-report-drillthrough-url](../../reporting-services/mobile-reports/media/mobile-report-drillthrough-url.PNG)
  
   *Drill through to custom URL properties*  
  
4. Click **Apply**.  

  
When you preview a mobile report in [!INCLUDE[SS_MobileReptPub_Short](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)], if you click a visualization with drillthrough, you see a message that drillthrough is disabled. You can only actually drill through to the target after you save or publish a mobile report and then view it, not from within [!INCLUDE[SS_MobileReptPub_Short](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] layout or preview mode.  

## Hide a target mobile report on the web portal
If you're not going to set a default value for the target report, consider hiding it on the web portal. Otherwise, when someone tries to view it on the web portal directly, without going through the source report, it will be empty.

1. In the web portal, select the ellipsis (...) on the target report you want to hide, then select Manage.

2. In **Properties**, select **Hide in tile view**.

You can choose to view hidden items in the web portal: 

* In the upper-right of the web portal, select **View** > **Show hidden.** 

Hidden items are displayed in a lighter color..
    
### See also  
 
* [Add parameters to a Reporting Services mobile report](../../reporting-services/mobile-reports/add-parameters-to-a-mobile-report-reporting-services.md)
* [Create mobile reports with SQL Server Mobile Report Publisher](../../reporting-services/mobile-reports/create-mobile-reports-with-sql-server-mobile-report-publisher.md) 
* [Web portal (SSRS Native Mode)](../../reporting-services/web-portal-ssrs-native-mode.md)
