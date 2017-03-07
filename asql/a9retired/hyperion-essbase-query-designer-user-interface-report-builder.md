---
title: "Hyperion Essbase Query Designer User Interface (Report Builder) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "10013"
helpviewer_keywords: 
  - "Hyperion Essbase query designer"
  - "query designers, Hyperion"
ms.assetid: d89a6773-dbe5-48e5-bda9-db0e67100696
caps.latest.revision: 14
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Hyperion Essbase Query Designer User Interface (Report Builder)
  [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] provides a graphical query designer for building Multidimensional Expression (MDX) queries for a [!INCLUDE[extEssbase](../a9retired/includes/extessbase-md.md)] data source. The MDX graphical query designer has two modes: Design mode and Query mode. Each mode provides a Metadata pane from which you can drag members from a cube defined on the data source to build an MDX query that retrieves data when the report is processed.  
  
> [!IMPORTANT]  
>  Users access data sources when they create and run queries. You should grant minimal permissions on the data sources, such as read-only permissions.  
  
 This section describes the toolbar buttons and query designer panes for each mode of the graphical query designer.  
  
## Graphical Query Designer in Design Mode  
 When you edit an MDX query for a dataset that uses a [!INCLUDE[extEssbase](../a9retired/includes/extessbase-md.md)] data source, the graphical query designer opens in Design mode. The following figure labels the panes for Design mode.  
  
 ![Query Designer for Hyperion Essbase data source](../a9retired/media/rsqd-dshyperionessbase-mdx-designmode.gif "Query Designer for Hyperion Essbase data source")  
  
 The following table lists the panes in this mode.  
  
|Pane|Function|  
|----------|--------------|  
|Select Cube button|Displays the currently selected cube.|  
|Metadata pane|Displays a hierarchical list of cubes.|  
|Calculated Members pane|Displays the currently defined calculated members available for use in the query.|  
|Filter pane|Displays the filters to apply in the query.|  
|Data pane|Displays the results of running the query.|  
  
 You can drag dimensions and measures from the Metadata pane, and calculated members from the Calculated Member pane onto the Data pane. If the **AutoExecute** toggle button on the toolbar is on, the query designer runs the query every time you drop an object onto the Data pane. If **AutoExecute** is off, the query designer does not run the query as you make changes to the Data pane. You can manually run the query using the **Run** button on the toolbar.  
  
 In the Filter pane, you can select dimension values to limit the data retrieved from the data source. Values you define in the filter in Design mode appear in the MDX Where clause in Query mode.  
  
### Toolbar for the Graphical Query Designer in Design Mode Toolbar  
 The query designer toolbar provides buttons to help you design MDX queries using the graphical interface. The following table shows the buttons and describes their functions.  
  
|Button|Description|  
|------------|-----------------|  
|**Edit As Text**|Toggle between the text-based query designer and the graphical query designer. Not available for this data source type.|  
|**Import**|Import an existing query from a report definition (.rdl) file on the file system.|  
|![Refresh dataset fields](../a9retired/media/rsqdicon-refreshfields.gif "Refresh dataset fields")|Refresh metadata from the data source.|  
|![Add calculated member](../a9retired/media/rsqdicon-addcalculatedmember.gif "Add calculated member")|Display the **Calculated Member Builder** dialog box. Use this to create or edit expressions for a calculated member, including setting the **Solve Order** property.|  
|![Toggle for show empty cells](../a9retired/media/rsqdicon-showemptycells.gif "Toggle for show empty cells")|Switch between showing and not showing empty cells in the Data pane. (This is the equivalent to using the NON EMPTY clause in MDX).|  
|![AutoExecute the query](../a9retired/media/rsqdicon-autoexecute.gif "AutoExecute the query")|Automatically run the query and show the result every time a change is made, for example, deleting a column in the Data pane. Results are shown in the Data pane.|  
|![Delete](../a9retired/media/rsqdicon-delete.gif "Delete")|Delete the selected item from the query. Use this button to delete selected rows in the Filter pane.|  
|![Run the query](../a9retired/media/rsqdicon-run.gif "Run the query")|Run the query and display the results in the Data pane.|  
|![Cancel the query](../a9retired/media/rsqdicon-cancel.gif "Cancel the query")|Cancel the query.|  
|![Switch to Design mode](../a9retired/media/rsqdicon-designmode.gif "Switch to Design mode")|Switch between Design mode and Query mode.|  
  
## Graphical Query Designer in Query Mode  
 To change the graphical query designer to Query mode, click the **Design Mode** toggle button on the toolbar.  
  
 ![Query Designer in Query Mode for Hyperion](../a9retired/media/rsqd-hyperionessbase-mdx-querymode.gif "Query Designer in Query Mode for Hyperion")  
  
 The following table describes the function of each pane.  
  
|Pane|Function|  
|----------|--------------|  
|Select Cube button|Displays the currently selected cube.|  
|Metadata/Functions pane|Displays a tabbed window that shows a list of available metadata or functions that can be used to build the query text.|  
|Query pane|Displays the current query text.|  
|Result pane|Displays the results of the query.|  
  
 From the Metadata pane, you can drag measures and dimensions from the **Metadata** tab onto the MDX Query pane. You can drag functions from the **Functions** tab onto the MDX Query pane. When you execute the query, the Result pane displays the results for the current MDX query.  
  
### Toolbar for the Graphical Query Designer in Query Mode  
 The query designer toolbar provides buttons to help you design MDX queries using the graphical interface. The toolbar buttons are identical between Design mode and Query mode, but the following buttons are not enabled for Query mode:  
  
-   **Edit As Text**  
  
-   **Add Calculated Member** (![Add calculated member](../a9retired/media/rsqdicon-addcalculatedmember.gif "Add calculated member"))  
  
-   **Show Empty Cells** (![Toggle for show empty cells](../a9retired/media/rsqdicon-showemptycells.gif "Toggle for show empty cells"))  
  
-   **AutoExecute** (![AutoExecute the query](../a9retired/media/rsqdicon-autoexecute.gif "AutoExecute the query"))  
  
## See Also  
 [Query Designers &#40;Report Builder&#41;](../a9retired/query-designers-report-builder.md)  
  
  