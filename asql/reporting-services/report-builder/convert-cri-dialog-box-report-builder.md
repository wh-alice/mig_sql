---
title: "Convert CRI Dialog Box (Report Builder) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "10008"
helpviewer_keywords: 
  - "CRI"
  - "custom report items"
ms.assetid: 2a3f2ac6-667e-4498-8b73-9c40beb993f5
caps.latest.revision: 18
ms.author: "asaxton"
manager: "erikre"
---
# Convert CRI Dialog Box (Report Builder)
  This report contains custom report items (CRIs) with unsupported features. CRIs are extensions to the Report Definition Language (RDL) that support custom objects that display data in a report. CRIs include design-time and run-time components that are supplied by third-party software vendors.  
  
> [!NOTE]  
>  Choosing to support custom report items on a report server is a decision made by the system administrator. To view CRIs in a report, the CRI components must be installed on the report authoring client to preview a report and on the report server to view a published or uploaded report.  
  
 Some CRIs can be converted to report items in the new report definition format. When you open the report, you are prompted whether to upgrade. Use the following information to decide whether to convert the CRIs in this report:  
  
-   **Yes** Choose **Yes** to convert all the CRIs in the report, where possible. Unsupported features in the CRIs cannot be upgraded and are removed from the report definition file. For the list of unsupported features, see [Upgrade Reports](../../reporting-services/install/windows/upgrade-reports.md). When you view the report, you might see differences in the way the CRI displays in the report.  
  
-   **No** Choose **No** when you do not want to convert the CRIs in the report. These CRIs cannot be displayed by the report processor in their current version. If your system administrator is planning to install a new version of the CRI from the third-party software vendor that is compatible with the new report definition format, you should choose **No**. Until new versions are available, the CRIs display in the report as an empty text box with a red X.  
  
 In either case, the report is upgraded to the new report definition format and a backup copy of the original report is saved as *\<Report Name>* `-` Backup.rdl. If you save the report in your report authoring tool, you are saving the upgraded report in the new report definition format. If you publish the report, the report is first saved on your computer, and then published to the report server. You are publishing the upgraded version of the report to the report server.  
  
 If you do not save the report, the original report remains unchanged. However, you cannot edit this report in a [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] later version of [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)] or a report authoring environment that uses this report definition format. You can continue to run the original version of the report by uploading it to a [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] or later [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server by using Report Manager. For more information, see [Upload a File or Report &#40;Report Manager&#41;](../../reporting-services/reports/upload-a-file-or-report-report-manager.md).  
  
 For reports that you upload instead of publish to a report server, the report processor determines whether the report can be upgraded on first use. Reports that cannot be upgraded are processed in backward-compatibility mode, and continue to display as they did in the earlier version of [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. For more information, see [Upgrade Reports](../../reporting-services/install/windows/upgrade-reports.md).  
  
 To identify the current report definition format for a report, for a report server, or for your report authoring environment, see [Find the Report Definition Schema Version &#40;SSRS&#41;](../../reporting-services/reports/find-the-report-definition-schema-version-ssrs.md).  
  
## See Also  
 [Report Builder Help for Dialog Boxes, Panes, and Wizards](http://msdn.microsoft.com/en-us/2da24891-0b6d-4d3c-8b18-81b98752642f)  
  
  