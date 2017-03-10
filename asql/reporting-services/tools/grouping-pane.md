---
title: "Grouping Pane | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "10033"
  - "sql13.rtp.rptdesigner.group.f1"
helpviewer_keywords: 
  - "Grouping Pane dialog box"
ms.assetid: 8b4bd0b3-ec97-48f8-8bfb-82a53a2f35a1
caps.latest.revision: 22
ms.author: "maggies"
manager: "erikre"
---
# Grouping Pane
When designing [!INCLUDE[ssRSnoversion_md](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] reports, the Grouping pane displays the row groups and column groups for the currently selected Tablix data region. The Grouping pane is not available for the Chart or Gauge data regions. The Grouping pane consists of a Row Groups pane and a Column Groups pane. The Grouping pane has two modes: default and Advanced. Default mode displays a hierarchical view of the dynamic members for row and column groups. Advanced mode displays both dynamic and static members for row and column groups. A group is a named set of data from a report dataset that is displayed on a data region. Groups are organized into hierarchies that include static and dynamic members. For more information, see [Understanding Groups &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/understanding-groups-report-builder-and-ssrs.md).  
  
  ![ssrs_fyi_note](../../analysis-services/instances/install/windows/media/ssrs-fyi-note.png) If you do not see the Grouping pane, on the **Report** menu, click **Grouping**.
  
 Cells in the row and column group areas can be static or dynamic members of a group. Static members repeat once per group and typically contain labels or totals. Dynamic members repeat once per group instance and typically contain the unique values of the group expression. As you select Tablix cells in the row group area or column group area, the corresponding group member is selected in the Row Groups or Column Groups pane. Conversely, if you select groups in the Grouping pane, the corresponding cell associated with the group member is selected on the design surface. For more information about Tablix row and column group areas, see [Tablix Data Region Areas &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/tablix-data-region-areas-report-builder-and-ssrs.md).  
  
 The Grouping pane supports the following modes:  
  
-   **Default.** Use the default mode to add, edit, or delete groups. You can add parent, child, and detail groups by dragging fields from the Report Data pane and inserting them in the group hierarchy. To add an adjacent group, you must use the **Add Group** shortcut. For more information, see [Add or Delete a Group in a Data Region &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/add-or-delete-a-group-in-a-data-region-report-builder-and-ssrs.md).  
  
-   **Advanced**. Use the **Advanced mode** to view all members of row and column groups, and to set properties on static members. When you create groups or add totals, the properties that control how the Tablix data region renders rows and columns on each report page are set automatically. To manually adjust these properties, you must set them on the Tablix member. For more information, see [Controlling the Tablix Data Region Display on a Report Page &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/controlling-the-tablix-data-region-display-on-a-report-page.md).  
  
## Default Mode  
 In default mode, the Row Groups pane and the Column Groups pane display a hierarchical view for all parent groups, child groups, and adjacent groups. A child group appears indented under its parent group. An adjacent group appears at the same indent level as its sibling groups. The following figure shows a Tablix data region with nested row groups and nested and adjacent column groups.  
  
 ![Tablix, nested and adjacent row and column groups](../../reporting-services/report-design/media/rs-basictablixdesigngroupingpane.gif "Tablix, nested and adjacent row and column groups")  
  
 The Grouping pane displays the corresponding row and column groups. In the following figure, the group based on subcategory has been selected in the Row Groups pane, and the [Subcat] grouping cell is selected in the Tablix data region:  
  
 ![Grouping pane for nested row and column groups](../../reporting-services/report-design/media/rs-basictablixdesigngroupingpanedefaultview.gif "Grouping pane for nested row and column groups")  
  
 In the Row Groups pane, the group based on subcategory is a child of the group based on category. In the Column Groups pane, the country/region group is a child of the geography group. The year group and the country/region groups are adjacent groups.  
  
 For more information, see [Tablix Data Region Cells, Rows, and Columns &#40;Report Builder&#41; and SSRS](../../reporting-services/report-design/tablix-data-region-cells-rows-and-columns-report-builder-and-ssrs.md).  
  
## Advanced Mode  
In Advanced mode, you can view all static and dynamic members of a group. When you select a member, the Properties window displays properties for the currently selected **Tablix member**.  
  
![ssrs_fyi_note](../../analysis-services/instances/install/windows/media/ssrs-fyi-note.png) To toggle **Advanced mode**, right-click the down arrow at the side of the Column Groups pane, and then click **Advanced Mode**.  
  
In most cases, properties that control the display of static and dynamic group rows and group columns are set automatically when you create a group or add totals. 

To edit the default values, you must select the group member in the Row or Column Groups pane, and change the property values in the Properties window. If the properties pane is not visible, in the **View** menu, click **Properties** or press **F4**.  The following properties are available:  
  
-   **FixedData**. Boolean. For outer row and column headers. Freeze the row group area when scrolling vertically or the column group area when scrolling horizontally in a renderer such as HTML.  
  
-   **HideIfNoRows**. Boolean. For static members only. If set, Hidden and ToggleItem are ignored. Hide this member if the Tablix data region contains no rows of data.  
  
-   **KeepTogether**.  
  
-   **KeepWithGroup**. Boolean. For static row members only. Where possible, keep this row with the previous or following sibling dynamic member, if it is not hidden.  
  
-   **RepeatOnNewPage**. Boolean. For static row members only and where KeepWithGroup is not None. Where possible, repeat this static row on every page that has at least one instance of the dynamic member specified by KeepWithGroup.  
  
-   **Hidden**. Boolean. Indicates whether the row or column should be initially hidden.  
  
-   **ToggleItem.** String. The name of the text box to which to add the toggle image. The text box must be in the same group scope or a containing scope.  
  
 For more information about how this behavior can be controlled on a Tablix data region, see [Controlling the Tablix Data Region Display on a Report Page &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/controlling-the-tablix-data-region-display-on-a-report-page.md).  
  
 Not every static member has a header that corresponds to a cell on the design surface. In the Grouping pane, the following convention indicates whether a static member has no header:  
  
-   **Static** Indicates a static member with a header cell.  
  
-   **(Static)** Indicates a static member with no header cell, known as a hidden static.  
  
## See Also  
 [Tables, Matrices, and Lists &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/tables-matrices-and-lists-report-builder-and-ssrs.md)   
 [Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expressions-report-builder-and-ssrs.md)   
 [Filter, Group, and Sort Data &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/filter-group-and-sort-data-report-builder-and-ssrs.md)  
  
  