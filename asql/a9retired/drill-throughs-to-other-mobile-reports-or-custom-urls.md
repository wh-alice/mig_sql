---
title: "Drill-throughs to Other Mobile Reports or Custom URLs | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c87ab353-bab7-45f9-8754-18076dec24a4
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Drill-throughs to Other Mobile Reports or Custom URLs
Any Gauge, Chart or Datagrid can be configured to initiate a drill-through action to another mobile report or custom URL. Depending on the source mobile report one or more parameters can be passed to the target mobile report or integrated into a custom URL.  
  
At runtime a touch or click on an element configured with a drill-through target will send the user to the that target, either a mobile report or URL.  
  
## Configuring a drill-through to another mobile report  
  
To configure a drill-through to another mobile report, in the mobile report designer first select an element that support drill-through targets on the design surface. Open the Drill-through Target drop down in Visual Properties pane and select Mobile Report, this will open the drill-through configuration dialog.  
  
Select the desired target mobile report from the drill-through configuration dialog. Once a target mobile report has been selected it's available input parameters will be displayed, these parameters include properties which can be bound on navigator controls as well as any parameters configured on data tables of the target mobile report.  
  
<div class="image">  
  <img src="images/drill_throughs_to_other_dashboards_or_custom_urls_screen01.png" width="800" height="412" />  
  <p>Drill-through to another mobile report properties.</p>  
</div>  
  
Properties of matching data types can then be connected to available output properties on the source mobile report by using the dropdown to the right of each property. Defaults for each output may also be configured here in the event a user has not interacted with the mobile report before initiating a drill-through action.  
  
When publishing mobile reports drill-through target mobile reports should be published before drill-throughs are configured on source mobile reports.  
  
## Configuring a drill-through to a custom URL  
  
To configure a drill-through to a custom URL, in the mobile report designer first select an element that support drill-through targets on the design surface. Open the Drill-through Target drop down in Visual Properties pane and select CustomURL, this will open the drill-through configuration dialog.  
  
In the Custom URL Parameter dialog a URL can be combined with available parameters by pasting, or typing the URL as well as touching or clicking on available parameter tokens listed to the right of the URL textbox. Parameters can also be typed or pasted manually into the URL textbox. A preview of the Custom URL combined with sample resolved parameters (if included) will be displayed in the panel below the input textbox.  
  
<div class="image">  
  <img src="images/drill_throughs_to_other_dashboards_or_custom_urls_screen02.png" width="800" height="412" />  
  <p>Drill-through to a custom URL properties.</p>  
</div>  
  
While previewing mobile reports in the mobile report designer a dialog will be shown when drill-throughs are triggered. Drill-throughs can only be initiated when a mobile report is saved or published and viewed, not from within the mobile report designer or preview.  
  
  
  
  
