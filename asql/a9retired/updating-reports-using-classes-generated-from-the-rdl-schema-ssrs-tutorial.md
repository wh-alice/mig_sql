---
title: "Updating Reports Using Classes Generated from the RDL Schema (SSRS Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "RDL [Reporting Services], generating"
  - "RDL [Reporting Services], tutorials"
  - "RDL [Reporting Services], serializing"
ms.assetid: 8f81d48f-7ab9-4ef8-bce0-7d16d9a47fbd
caps.latest.revision: 28
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Updating Reports Using Classes Generated from the RDL Schema (SSRS Tutorial)
This tutorial illustrates how to use the XML Schema Definition Tool (Xsd.exe) to generate classes that allow you to serialize and deserialize report definition files (.rdl and .rdlc) with the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../a9retired/includes/dnprdnshort-md.md)] <xref:System.Xml.Serialization.XmlSerializer> class.  
  
## What You Will Learn  
During the course of this tutorial, you will complete the following activities:  
  
-   Create an application using the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] Console Application project template.  
  
-   Generate classes from the Report Definition Language (RDL) schema using the **xsd** tool.  
  
-   Connect to a report server and retrieve a report definition.  
  
-   Write code to update the report definition file.  
  
-   Save the updated report definition back to the report server.  
  
-   Run the RDL Schema Application (VB/C#).  
  
> [!NOTE]  
> The code samples provided in this tutorial might fail for reports having no description. The failure is because the description property does not exist for the reports with description not specified.  
  
## Requirements  
To complete the tutorial, you must have the following:  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssCurrentUI](../a9notintoc/includes/sscurrentui-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)].  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vs_dev10_long](../a9retired/includes/vs-dev10-long-md.md)].  
  
-   Sufficient permissions to be able to access and publish reports to the Report Server Web service on the computer where your report server is located.  
  
-   The [!INCLUDE[ssSampleDBobject](../a9retired/includes/sssampledbobject-md.md)] sample database installed to an instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
-   A report installed on your report server. This tutorial uses the sample report, Company Sales 2012. For more information about sample reports, see [SQL Server Reporting Services Product Samples](http://go.microsoft.com/fwlink/?LinkId=177889).  
  
> [!NOTE]  
> The samples are not installed automatically during setup, but you can install them at any time. For information about samples, see [SQL Server Product Samples](http://go.microsoft.com/fwlink/?LinkId=182887).  
  
**Estimated time to complete the tutorial:** 30 minutes  
  
## Tasks  
[Lesson 1: Create the RDL Schema Visual Studio Project](../a9retired/lesson-1-create-the-rdl-schema-visual-studio-project.md)  
  
[Lesson 2: Generate Classes from the RDL Schema using the xsd Tool](../a9retired/lesson-2-generate-classes-from-the-rdl-schema-using-the-xsd-tool.md)  
  
[Lesson 3: Load a Report Definition from the Report Server](../a9retired/lesson-3-load-a-report-definition-from-the-report-server.md)  
  
[Lesson 4: Update the Report Definition Programmatically](../a9retired/lesson-4-update-the-report-definition-programmatically.md)  
  
[Lesson 5: Publish the Report Definition to the Report Server](../a9retired/lesson-5-publish-the-report-definition-to-the-report-server.md)  
  
[Lesson 6: Run the RDL Schema Application &#40;VB - C&#35;&#41;](../a9retired/lesson-6-run-the-rdl-schema-application-vb-csharp.md)  
  
## See Also  
[Report Definition Language &#40;SSRS&#41;](../reporting-services/reports/report-definition-language-ssrs.md)  
  
  
  
