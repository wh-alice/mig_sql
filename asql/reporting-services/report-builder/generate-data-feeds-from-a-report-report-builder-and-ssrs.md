---
title: "Generate Data Feeds from a Report (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: e68baae2-9f2a-4f13-9179-9ac7f29111c5
caps.latest.revision: 11
ms.author: "maggies"
manager: "erikre"
---
# Generate Data Feeds from a Report (Report Builder and SSRS)
  You can generate Atom-compliant data feeds from paginated reports, and then use the data feeds in applications, such as the [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] client, that can consume data feeds.  
  
 The [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Atom rendering extension generates an Atom service document that lists the data feeds available from a report. The document lists at least one data feed for each data region in the report. Depending on the type of data region and the data that the data region displays, [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] might generate multiple data feeds from a data region.  
  
 Atom service document contains a unique identifier for each the data feed and you use the identifier in a URL to view the content of the data feed.  
  
 For more information, see [Generating Data Feeds from Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-builder/generating-data-feeds-from-reports-report-builder-and-ssrs.md).  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
### To generate an Atom service document  
  
1.  on the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] web portal, navigate to the report for which you want to generate data feeds.  
  
2.  Click the report.  
  
     The report is run.  
  
3.  On the toolbar, click the **Export to Data Feed** icon.  
  
     A message appears asking you if you want to save or open the atom document that contains the data feed.  
  
4.  Click **Save** to save the document to the file system, or click **Open** to view the document content before saving. **By default, the document opens in a browser.**  
  
5.  Browse to the location to save the document.  
  
6.  Optionally, change the name of the document.  
  
    > [!NOTE]  
    >  By default, the document name is the report name.  
  
7.  Verify the document type is **ATOMSVC File**, and then click **Save**.  
  
8.  Optionally, open the .atomsvc file in a browser or text or XML editor.  
  
### To view an Atom-compliant data feed  
  
1.  If the Atom service document is not already open, locate it and open it in a browser such as Internet Explorer.  
  
2.  Copy the URL of the data feed that you want to view from the Atom service document to the browser.  
  
     The format of the URL is the following:  
  
     `http://<server name>/ReportServer?%2f<ReportName>rs%3aCommand=Render&rs%3aFormat=ATOM&rc%3aDataFeed=<Identifier>`  
  
3.  Press ENTER.  
  
     A message appears asking you if you want to save or open the atom document that contains the data feed.  
  
4.  Click **Save** to save the document to the file system, or click **Open** to view the data feed before saving.  
  
5.  Browse to the location to save the document.  
  
6.  Optionally, change the name of the document.  
  
    > [!NOTE]  
    >  By default the document name is the report name. If the Atom service document has multiple feeds, by default all use the same name, the report name. To differentiate them, rename them to use meaningful names.  
  
7.  Verify the document type is **ATOM File**, and then click **Save**.  
  
8.  Optionally, open the .atom file in a browser or text editor or XML editor.  
  
## See Also  
 [Export Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-builder/export-reports-report-builder-and-ssrs.md)  
  
  