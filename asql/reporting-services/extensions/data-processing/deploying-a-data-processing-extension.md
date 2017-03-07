---
title: "Deploying a Data Processing Extension | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "data processing extensions [Reporting Services], deploying"
  - "Extension element"
  - "deploying [Reporting Services], extensions"
ms.assetid: e5c0b5a9-1386-47cb-aade-96653ecfaa54
caps.latest.revision: 34
ms.author: "carlasab"
manager: "erikre"
---
# Deploying a Data Processing Extension
  Once you have written and compiled your [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] data processing extension into a [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] library, you need to make it discoverable by the report server and by Report Designer. This is as easy as copying the extension to the appropriate directories and adding entries to the appropriate [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] configuration files.  
  
## Configuration-File Extension Element  
 Data processing extensions that you deploy to the report server or Report Designer need to be entered as **Extension** elements in the configuration files. These files are RSReportServer.config for the report server and RSReportDesigner.config for Report Designer.  
  
 The following table describes the attributes for the **Extension** element for data processing extensions.  
  
|Attribute|Description|  
|---------------|-----------------|  
|**Name**|A unique name for the extension, for example, "SQL" for the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data processing extension or "OLEDB" for the OLE DB data processing extension. The maximum length for the **Name** attribute is 255 characters. The name must be unique among all entries within the **Extension** element of a configuration file.|  
|**Type**|A comma-separated list that includes the fully qualified namespace along with the name of the assembly.|  
|**Visible**|A value of **false** indicates that the data processing extension should not be visible in user interfaces. If the attribute is not included, the default value is **true**.|  
  
 For more information about the RSReportServer.config or RSReportDesigner.config files, see [Reporting Services Configuration Files](../../../reporting-services/report-server/reporting-services-configuration-files.md).  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[How to: Deploy a Data Processing Extension to a Report Server](../Topic/How%20to:%20Deploy%20a%20Data%20Processing%20Extension%20to%20a%20Report%20Server.md)|Describes how to deploy your data processing extension to a report server.|  
|[How to: Deploy a Data Processing Extension to Report Designer](../Topic/How%20to:%20Deploy%20a%20Data%20Processing%20Extension%20to%20Report%20Designer.md)|Describes how to deploy your data processing extension to Report Designer.|  
  
## See Also  
 [Reporting Services Extensions](../../../reporting-services/extensions/reporting-services-extensions.md)   
 [Implementing a Data Processing Extension](../../../reporting-services/extensions/data-processing/implementing-a-data-processing-extension.md)   
 [Reporting Services Extension Library](../../../reporting-services/extensions/reporting-services-extension-library.md)  
  
  