---
title: "Add a Chart to a Report (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a6b595dc-f775-4a53-8554-74a0bf9335ec
caps.latest.revision: 8
ms.author: "maggies"
manager: "erikre"
---
# Add a Chart to a Report (Report Builder and SSRS)
  When you want to summarize data in a visual format in a [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] paginated report, use a Chart data region. It is important to choose an appropriate chart type for the type of data that you are presenting. This affects how well the data can be interpreted when put in chart form. For more information, see [Charts &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/charts-report-builder-and-ssrs.md).  
  
 The simplest way to add a Chart data region to your report is to run the New Chart Wizard. The wizard offers column, line, pie, bar, and area charts. For these and other chart types, you can also add a chart manually.  
  
 After you add a Chart data region to the design surface, you can drag report dataset fields for numeric and non-numeric data to the Chart Data pane of the chart. Click the chart to display the Chart Data pane with its three areas: Series Groups, Category Groups, and Values.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
## To add a chart to a report by using the Chart Wizard  
  
1.  > [!NOTE]  
    >  The Chart Wizard is only available in Report Builder.  
  
     On the **Insert** tab, click **Chart**, and then click **Chart Wizard**.  
  
2.  Follow the steps in the **New** Chart wizard.  
  
3.  On the **Home** tab, click **Run** to see the rendered report.  
  
4.  On the **Run** tab, click **Design** to continue working on the report.  
  
## To add a chart to a report  
  
1.  Create a report and define a dataset. For more information, see [Report Datasets &#40;SSRS&#41;](../../reporting-services/report-data/report-datasets-ssrs.md).  
  
2.  On the **Insert** tab, click **Chart**, and then click **Insert Chart**.  
  
3.  Click on the design surface where you want the upper-left corner of the chart, and then drag to where you want the lower-right corner of the chart.  
  
     The **Select Chart Type** dialog box appears.  
  
4.  Select the type of chart you want to add. [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
5.  Click the chart to display the **Chart Data** pane.  
  
6.  Add one or more fields to the **Values** area. This information will be plotted on the value axis.  
  
7.  Add a grouping field to the **Category Groups** area. When you add this field to the **Category Groups** area, a grouping field is automatically created for you. Each group represents a data point in your series.  
  
8.  To summarize the data by category, right-click the data field and click **Series Properties**. In the **Category** box, select the category field from the drop-down list. [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
9. On the **Home** tab, click **Run** to see the rendered report.  
  
10. On the **Run** tab, click **Design** to continue working on the report.  
  
 On charts with axes, such as bar and column charts, the category axis may not display all the category labels. For more information about how to change the axis labels, see [Specify an Axis Interval &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/specify-an-axis-interval-report-builder-and-ssrs.md).  
  
## See Also  
 [Charts &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/charts-report-builder-and-ssrs.md)   
 [Chart Types &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/chart-types-report-builder-and-ssrs.md)   
 [Empty and Null Data Points in Charts &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/empty-and-null-data-points-in-charts-report-builder-and-ssrs.md)   
 [Tutorial: Adding a Bar Chart to Your Report (Report Builder)](http://go.microsoft.com/fwlink/?LinkId=198052)   
 [Tutorial: Adding a Bar Chart to a Report (Report Designer)](http://go.microsoft.com/fwlink/?LinkId=198042)   
 [Tutorial: Adding a Pie Chart to Your Report (Report Builder)](http://go.microsoft.com/fwlink/?LinkId=198051)   
 [Tutorial: Adding a Pie Chart to a Report (Report Designer)](http://go.microsoft.com/fwlink/?LinkId=198041)  
  
  