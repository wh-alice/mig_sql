---
title: "Removing a Data Processing Extension | Microsoft Docs"
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
  - "deleting data processing extensions"
  - "data processing extensions [Reporting Services], removing"
  - "removing data processing extensions"
ms.assetid: 1d89e32b-0631-44f6-8178-a57fb791d26d
caps.latest.revision: 34
ms.author: "carlasab"
manager: "erikre"
---
# Removing a Data Processing Extension
  To remove a data processing extension, simply remove the **Extension** element for your data processing extension from the configuration file. If you made entries for a report server as well as Report Designer, remove the **Extension** element from both the RSReportServer.config and RSReportDesigner.config files. After the configuration information is removed, the data processing extension is no longer available to the component.  
  
## See Also  
 [Reporting Services Extensions](../../../reporting-services/extensions/reporting-services-extensions.md)   
 [Implementing a Data Processing Extension](../../../reporting-services/extensions/data-processing/implementing-a-data-processing-extension.md)   
 [Reporting Services Extension Library](../../../reporting-services/extensions/reporting-services-extension-library.md)  
  
  