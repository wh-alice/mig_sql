---
title: "Custom Report Items | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "extending Reporting Services"
  - "Reporting Services, extending"
  - "custom report items"
ms.assetid: 64dcaf2c-1af5-4937-8ff7-98f1ec3b367e
caps.latest.revision: 22
ms.author: "carlasab"
manager: "erikre"
---
# Custom Report Items
  [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] provides a rich set of tools for building and publishing enterprise reports, managing security and subscriptions, and extending the reporting functionality through a comprehensive API. Reports are defined using an XML-based language called Report Definition Language (RDL). RDL provides a set of instructions that describe layout, query information, and item types for a report. It is possible to extend RDL by writing a custom report item. The custom report item consists of a run-time component, which is called by the report processor at run time, and a design-time component, which allows the custom report item to be available in Report Designer.  
  
 For a sample of a fully implemented custom report item, see [SQL Server Reporting Services Product Samples](http://go.microsoft.com/fwlink/?LinkId=177889).  
  
## Custom Report Item Scenarios  
 Developers who need to integrate [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] into their applications may require functionality that is not natively supported in RDL. This may include items such as: map controls, horizontal lists, columnar lists, and repivotable matrixes. A run-time custom report item component can be developed and distributed with an application to fill this need.  
  
 In addition to providing functionality that isn’t natively supported, some developers may want to extend existing functionality with alternative versions of controls that are already included with [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. In this scenario, a developer could provide three components: a run-time component, a design-time component, and a design-time report item conversion component that converts an existing report item into a custom report item on demand.  
  
## In This Section  
 [Custom Report Item Architecture](../../reporting-services/custom-report-items/custom-report-item-architecture.md)  
 Describes the components that make up a custom report item.  
  
 [Custom Report Item Implementation Requirements](../../reporting-services/custom-report-items/custom-report-item-implementation-requirements.md)  
 Describes prerequisites for creating a custom report item.  
  
 [Creating a Custom Report Item Run-Time Component](../../reporting-services/custom-report-items/creating-a-custom-report-item-run-time-component.md)  
 Describes how to create a custom report item run-time component.  
  
 [Creating a Custom Report Item Design-Time Component](../../reporting-services/custom-report-items/creating-a-custom-report-item-design-time-component.md)  
 Describes how to create a custom report item design-time component.  
  
 [How to: Deploy a Custom Report Item](../../reporting-services/custom-report-items/how-to-deploy-a-custom-report-item.md)  
 Describes how to deploy a custom report item.  
  
 [Custom Report Item Class Libraries](../../reporting-services/custom-report-items/custom-report-item-class-libraries.md)  
 Describes the custom report item infrastructure classes and managed wrapper classes in the **Microsoft.ReportDesigner** namespace.  
  
## See Also  
 [Technical Reference &#40;SSRS&#41;](../../reporting-services/technical-reference-ssrs.md)  
  
  