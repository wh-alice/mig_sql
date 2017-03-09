---
title: "Create a Reporting Services mobile report | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e84dc855-aede-4fb4-b721-e6d8787961f4
caps.latest.revision: 10
ms.author: "maggies"
manager: "erikre"
---
# Create a Reporting Services mobile report
With [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-long.md)], you can quickly create [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/sscurrent.md)] [!INCLUDE[ssRSnoversion](../../reporting-services/mobile-reports/includes/ssrsnoversion.md)] mobile reports that scale well to any screen size, on a design surface with adjustable grid rows and columns, and flexible mobile report elements.  
  
The first time you create a mobile report, you can install [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)] on your local machine from the [!INCLUDE[ssRSnoversion](../../reporting-services/mobile-reports/includes/ssrsnoversion.md)] web portal. Or you can install it from the [Microsoft Download Center](http://go.microsoft.com/fwlink/?LinkID=733527). After the first time, you can start it either from the web portal or locally.   
    
1. In the top bar of the [!INCLUDE[ssRSnoversion](../../reporting-services/mobile-reports/includes/ssrsnoversion.md)] web portal, select **New** > **Mobile Report**.  
  
   ![PBI_SSMRP_NewMenu](../../reporting-services/mobile-reports/media/pbi-ssmrp-newmenu.png)  
     
2. On the **Layout** tab in [!INCLUDE[SS_MobileReptPub_Long](../../reporting-services/mobile-reports/includes/ss-mobilereptpub-short.md)], select a navigator, gauge, chart, map, or datagrid and drag it to the design grid.  
  
3. Grab the lower-right corner of the element and drag it to the size you want.  
  
   ![SSMRP_ResizeChart](../../reporting-services/mobile-reports/media/ssmrp-resizechart.png)  
  
   This is the **Master** design grid, where you create the elements you want in your report. Later, you can [lay out the report for a tablet or phone](../../reporting-services/mobile-reports/lay-out-a-reporting-services-mobile-report-for-phone-or-tablet.md).     
     
   In **Visual Properties** below the design grid, notice the various properties you can set.  
     
4. Select the **Data** tab in the upper-left corner, and you see the chart already has simulated data associated with it.   
  
   ![SSMRP_SimTable](../../reporting-services/mobile-reports/media/ssmrp-simtable.png)  
  
5. Select **Add Data** in the upper-right corner.  
  
6. Select **Local Excel** or **Report Server**.  
  
   >**Tips**: If you're adding data from Excel, make sure:  
    >* You [prepare the Excel data](../../reporting-services/mobile-reports/prepare-excel-data-for-reporting-services-mobile-reports.md) to work in your mobile report.  
    >* You close the file first.  
7. Select the worksheets you want, and select **Import**.   
   You can add more than one worksheet from a workbook at a time.  
    
     ![SSMRP_AddExcelData](../../reporting-services/mobile-reports/media/ssmrp-addexceldata.png)  
  
8. Still on the **Data** tab, in the **Data Properties** box select the table and field you want in the chart.  
  
   ![SSMRP_DataProps](../../reporting-services/mobile-reports/media/ssmrp-dataprops.png)  
  
9. Back on the **Layout** tab, in the **Visual Properties** box you can set properties like **Title**, **Time Unit**, and **Number Format**.  
  
   ![SSMRP_ChartVizProps](../../reporting-services/mobile-reports/media/ssmrp-chartvizprops.png)  
    
10. Select **Preview** in the upper left to see how your report is shaping up.  
  
11. Time to save your report. Select the Save icon in the upper left, and either **Save Locally** or **Save to Server**.  
  
   To save it to a server, you need access to a [!INCLUDE[PRODUCT_NAME](../../reporting-services/mobile-reports/includes/sscurrent.md)] [!INCLUDE[ssRSnoversion](../../reporting-services/mobile-reports/includes/ssrsnoversion.md)] report server.  
     
   ### See also  
     
-   [Create and publish mobile reports with SQL Server Mobile Report Publisher](../../reporting-services/mobile-reports/create-mobile-reports-with-sql-server-mobile-report-publisher.md)  
-   [Lay out a Reporting Services mobile report for phone or tablet](../../reporting-services/mobile-reports/lay-out-a-reporting-services-mobile-report-for-phone-or-tablet.md)  
  
   