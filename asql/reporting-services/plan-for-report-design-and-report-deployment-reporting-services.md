---
title: "Plan for report design and report deployment | Reporting Services | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
ms.assetid: 1c1e265e-52a2-4de3-96fd-ca4abae01c02
caps.latest.revision: 19
ms.author: "asaxton"
manager: "erikre"
---
# Plan for report design and report deployment | Reporting Services
[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] provides several approaches for authoring and deploying paginated reports. Learn how to plan a report authoring and report server environment that work together.

This topic is an overview of report definition support by [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] components. A report definition is an XML file that is written in the Report Definition Language (RDL) or the Report Definition Language for Clients (RDLC). Each report definition conforms to a specific schema version that is listed at the beginning of the file.  
  
 RDL files are authored in Report Designer in [!INCLUDE[ss_dtbi](../analysis-services/includes/ss-dtbi-md.md)] projects, and in Report Builder. RDLC files are authored by using the ReportViewer controls that are included in [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)].
  
##  <a name="bkmk_rdl_schema_versions"></a> RDL Schema Versions  
 The following table lists each available schema version and the abbreviation that is used throughout the rest of this topic:  
  
|Abbreviation|Schema version|  
|------------------|--------------------|  
|2016 RDL|http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition|
|2010 RDL|http://schemas.microsoft.com/sqlserver/reporting/2010/01/reportdefinition|  
|2008 RDL|http://schemas.microsoft.com/sqlserver/reporting/2008/01/reportdefinition|  
|2005 RDL<br /><br /> 2005 RDLC|http://schemas.microsoft.com/sqlserver/reporting/2005/01/reportdefinition|  
|2000 RDL|http://schemas.microsoft.com/sqlserver/reporting/2003/10/reportdefinition|  
  
 For more information on RDL and RDL schemas, see the following:  
  
-   [Microsoft SQL Server XML Schemas](http://go.microsoft.com/fwlink/?LinkId=31850)  
  
-   [Report Definition Language Specifications](http://go.microsoft.com/fwlink/?linkid=116865)  
  
-   [Report Definition Language &#40;SSRS&#41;](../reporting-services/reports/report-definition-language-ssrs.md)  
  
 For more information about ReportViewer controls, see [ReportViewer Controls (Visual Studio)](http://msdn.microsoft.com/library/ms251671.aspx).  
  
##  <a name="bkmk_report_server_rdl_schema_support"></a> Report Server and RDL Schema Support  
 A report definition file can be deployed to a [!INCLUDE[ssRSCurrent](../a9notintoc/includes/ssrscurrent-md.md)] report server in the following ways:  
  
-   **Report Designer:** Deploy a report from Report Designer in [!INCLUDE[ss_dtbi](../analysis-services/includes/ss-dtbi-md.md)].  
  
-   **Report Builder:** Save a report to the report server from Report Builder.  
  
-   **Web Portal:** Upload a report to a native mode report server from the [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)].  
  
-   **SharePoint:** Upload a report to a SharePoint site that is configured with a SharePoint mode report server.  
  
-   **Programmatically:** Programmatically publish a report by using the SOAP API interfaces to a report server. For more information, see [Report Server Web Service](../reporting-services/report-server-web-service/report-server-web-service.md).  
  
 The following table lists the supported rdl schema version by version of the report server.  
  
|Report server version|RDL schema version|  
|---------------------------|------------------------|  
|SQL Server 2016|2016 RDL<br /><br />2010 RDL<br /><br /> 2008 RDL<br /><br /> 2005 RDL<br /><br /> 2000 RDL
|[!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)]<br /><br /> Or<br /><br /> [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)]<br /><br /> Or<br /><br /> [!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)]|2010 RDL<br /><br /> 2008 RDL<br /><br /> 2005 RDL<br /><br /> 2000 RDL|  
|[!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)]|2008 RDL<br /><br /> 2005 RDL<br /><br /> 2000 RDL|  
  
 When you upload a report definition to the report server or upgrade a report server that contains existing reports, the report server preserves the report definition in the original format. **On first use**, the report server upgrades the report in the report server database to a binary format that is preserved for subsequent views. The report definition (.rdl) itself is not upgraded.  
  
 You can extract from the report server a read-only copy of the report definition file (.rdl). On a native mode report server, browse to the [!INCLUDE[ssRSWebPortal](../reporting-services/includes/ssrswebportal.md)], select the report and click **Download**. In a SharePoint mode deployment, browse to the document library, select the report and click **Download a Copy**.  
  
 To upgrade the report definition, you must open the report in a report authoring environment, such as SQL Server Data Tools or Report Builder, and then save it.  
  
 For more information about report upgrades and the schema versions that are supported, see [Upgrade Reports](../reporting-services/install/windows/upgrade-reports.md).  
  
##  <a name="bkmk_report_authoring_and_deployment"></a> Report Authoring and Deployment Support  
 Report authoring environments are Report Designer in [!INCLUDE[ss_dtbi](../analysis-services/includes/ss-dtbi-md.md)] projects, and Report Builder. Report authoring environments provide a variety of support for report upgrade, report design, report preview in local mode, report preview on the report server, and report deployment.  
  
 The following table summarizes support for authoring and deploying report definitions for different schema versions:  
  
|Authoring environment|RDL version Authored|Deploy RDL version|Deploy to report server versions|  
|---------------------------|--------------------------|------------------------|--------------------------------------|  
|SQL Server 2016 Report Builder|Authors 2016 RDL<br /><br /> Will upgrade older RDL versions to 2016 RDL|2016 RDL|SQL Server 2016|
|Report Designer in SQL Server 2016 Data Tools - Business Intelligence for Microsoft Visual Studio 2015|Authors 2016 RDL<br /><br /> Will upgrade older RDL versions to 2016 RDL|2016 RDL|SQL Server 2016|
|Report Designer in SQL Server 2014 Data Tools - Business Intelligence for Microsoft Visual Studio 2012<br /><br /> Or<br /><br /> Report Designer in SQL Server 2012 Data Tools - Business Intelligence for Microsoft Visual Studio 2012<br /><br /> Or<br /><br /> Report Designer in [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] Data Tools, included in [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)].|Authors 2010 RDL<br /><br /> Will upgrade older RDL versions to 2010 RDL|2010 RDL|[!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)]<br /><br /> [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)]<br /><br /> [!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)]|  
|Report Designer in [!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)] Business Intelligence Development Studio|Authors 2010 RDL<br /><br /> Will upgrade older RDL versions to 2010 RDL|2010 RDL|[!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)]|  
|Report Designer in [!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)] Business Intelligence Development Studio|Authors 2008 RDL<br /><br /> Will upgrade older RDL versions to 2008 RDL|2008 RDL|[!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)]|
  
 For more information on SQL Server Data Tools (SSDT), see the following:  
  
-   [Deployment and Version Support in SQL Server Data Tools &#40;SSRS&#41;](../reporting-services/tools/deployment-and-version-support-in-sql-server-data-tools-ssrs.md)  
  
-   [SQL Server Data Tools for Visual Studio 2015](https://msdn.microsoft.com/library/mt204009.aspx).  
  
##  <a name="bkmk_reportviewer"></a> ReportViewer Controls  
 A [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] ReportViewer control can display an .rdlc report in local preview mode or in remote mode, the control can display an .rdl file hosted on a [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] report server. The following table provides the list of RDL versions supported by the ReportViewer controls for local processing (.rdlc). Server side RDL support is summarized in the section [Report Server and RDL Schema Support](#bkmk_report_server_rdl_schema_support).  
  
|ReportViewer control in product|Version of RDL for local preview|  
|-------------------------------------|--------------------------------------|  
|[!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] 2015 <br/><br/>Or<br/><br/>[!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] 2013<br /><br /> Or<br /><br /> [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] 2012<br /><br /> Or<br /><br /> [!INCLUDE[vs_dev10_long](../a9retired/includes/vs-dev10-long-md.md)]|2008 RDL|  
|[!INCLUDE[vsprvslong](../relational-databases/server-management-objects-smo/includes/vsprvslong-md.md)]<br /><br /> Or<br /><br /> [!INCLUDE[vsOrcas](../relational-databases/server-management-objects-smo/includes/vsorcas-md.md)]|2005 RDL|  
  
 For more information, see the following:  
  
-   [Converting RDLC Files to RDL Files](http://msdn.microsoft.com/library/ms252109.aspx)  
  
-   [ReportViewer Controls (Visual Studio)](http://msdn.microsoft.com/library/ms251671.aspx)  
  
-   [Adding and Configuring the ReportViewer Controls](http://msdn.microsoft.com/library/ms252104.aspx)  
  
## See Also  
 [Reports, Report Parts, and Report Definitions &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/reports-report-parts-and-report-definitions-report-builder-and-ssrs.md)   
 [Reporting Services Tools](../reporting-services/tools/reporting-services-tools.md)   
 [Report Definition Language &#40;SSRS&#41;](../reporting-services/reports/report-definition-language-ssrs.md)  
  
  