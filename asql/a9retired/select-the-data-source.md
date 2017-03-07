---
title: "Select the Data Source | Microsoft Docs"
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
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.rtp.rptwizard.selectdatasource.f1"
ms.assetid: cdd84ad8-7c6a-41ac-bf51-1b0973434829
caps.latest.revision: 32
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Select the Data Source
  Use this page of the Report Wizard to define a data source for the report.  
  
## Options  
 **Shared data source**  
 Select **Shared Data Source** to use a predefined shared data source that already has the data source connection information you want to use. The list contains all shared data sources that are included in the project.  
  
 **New data source**  
 Select **New data source** to define a new data source. The data source information will be used only with the current report.  
  
 **Name**  
 Type a name for the connection to the data source. The data source name must be unique within the report.  
  
 **Type**  
 Select the type of data source you are using (for example, if you are using a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database, choose [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]).  
  
 **Connection string**  
 Type a connection string for the data source. For more information about connection strings, see [Data Connections, Data Sources, and Connection Strings &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/data-connections-data-sources-and-connection-strings-report-builder-and-ssrs.md).  
  
 Click **Edit** to specify the data source server in the **Connection Properties** dialog box. You can specify a local or remote data source.  
  
 Click **Credentials** to supply database credentials. At a minimum, the credentials you specify must be sufficient for you to connect to the data source for report design purposes. When the report is deployed on a report server, the database credentials must accommodate all users of the report. For example, if you want all report users to connect to the data source using their credentials, choose **Use Windows Authentication (Integrated Security)**. The credentials you specify must be valid for the data source, so if you choose Windows Authentication, be sure that the data source accepts connections from all user accounts that will be running the report. Database credentials can be managed separately from the report. For more information, see [Manage Report Data Sources](../reporting-services/report-data/manage-report-data-sources.md).  
  
 **Make this a shared data source**  
 Select this option to store the data source in the project as a shared data source, instead of in the report. That way, you can use it as the data source for other reports in the project.  
  
## See Also  
 [Embedded and Shared Data Connections or Data Sources &#40;Report Builder and SSRS&#41;](../a9retired/embedded-and-shared-data-connections-or-data-sources-report-builder-and-ssrs.md)   
 [Specify Credential and Connection Information for Report Data Sources](../reporting-services/report-data/specify-credential-and-connection-information-for-report-data-sources.md)   
 [Reporting Services Report Server](../reporting-services/report-server/sharepoint/reporting-services-report-server.md)   
 [RSReportDesigner Configuration File](../reporting-services/report-server/rsreportdesigner-configuration-file.md)   
 [Data Connections, Data Sources, and Connection Strings &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/data-connections-data-sources-and-connection-strings-report-builder-and-ssrs.md)   
 [Report Wizard Help](../a9retired/report-wizard-help.md)  
  
  