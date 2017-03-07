---
title: "Comparing Tabular and Multidimensional Solutions (SSAS) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
ms.assetid: 76ee5e96-6a04-49af-a88e-cb5fe29f2e9a
caps.latest.revision: 49
ms.author: "owend"
manager: "erikre"
---
# Comparing Tabular and Multidimensional Solutions (SSAS)
  [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] provides several approaches for creating a business intelligence semantic model:  Multidimensional, Tabular, and Power Pivot.  
  
 Having more than one approach enables a modeling experience tailored to different business and user requirements. Multidimensional is a mature technology built on open standards, embraced by numerous vendors of BI software, but can be hard to master. Tabular offers a relational modeling approach that many developers find more intuitive. Power Pivot is even simpler, offering visual data modeling in Excel, with server support provided via SharePoint.  
  
 All models are deployed as databases that run on an Analysis Services instance, accessed by client tools using a single set of data providers, and visualized in interactive and static reports via Excel, Reporting Services, Power BI, and BI tools from other vendors.  
  
 Because of differences in memory architecture and metadata, none of the model types are interchangeable, although you can upgrade very easily from a Tabular 1050-1103 model to Tabular 1200, and you can import Power Pivot to create an entirely new model as Tabular project.  
  
 Tabular and Multidimensional solutions are built using [!INCLUDE[ssBIDevStudio](../analysis-services/includes/ssbidevstudio-md.md)] and are intended for corporate BI projects that run on a standalone [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] instance on-premises or an [Azure Analysis Services](https://azure.microsoft.com/services/analysis-services/) server in the cloud. Both solutions yield high performance analytical databases that integrate easily with BI clients. Yet each solution differs in how they are created, used, and deployed. The bulk of this topic compares these two types so that you can identify the right approach for you.  
  
 For new development projects, we generally recommend Tabular. It will be faster to design, test, and deploy; and it will work better with the latest self-service BI applications and cloud services from Microsoft.  
  
##  <a name="bkmk_overview"></a> Overview of modeling types  
 New to Analysis Services? The following table enumerates the different models, summarizes the approach, and identifies the initial release vehicle.  
 
 > [!NOTE]  
>  Currently, **Azure Analysis Services** supports tabular models at the 1200 compatibility level. However, not all tabular modeling functionality described in this topic is supported in Azure Analysis Services. While creating and deploying tabular models to Azure Analysis Services is much the same as it is for on-premises SQL Server Analysis Services deployments, it' important to understand the differences. To learn more , see [What is Azure Analysis Services?](https://docs.microsoft.com/azure/analysis-services/analysis-services-overview)
  
||||  
|-|-|-|  
|**Type**|**Modeling description**|**Released**|  
|Multidimensional|OLAP modeling constructs (cubes, dimensions, measures).|SQL Server 2000 and later|  
|Tabular|Relational modeling constructs (model, tables, columns).<br /><br /> Internally, metadata is inherited from OLAP modeling constructs (cubes, dimensions, measures). Code and script use OLAP metadata.|SQL Server 2012 and later (compatibility levels 1050 - 1103) <sup>1</sup>|  
|Tabular in SQL Server 2016|Relational modeling constructs (model, tables, columns), articulated in tabular metadata object definitions in script and code.|SQL Server 2016 (compatibility level 1200)|  
|Power Pivot|Originally an add-in, but now fully integrated into Excel. Visual modeling only, over an internal Tabular infrastructure. You can import a Power Pivot model into SSDT to create a new Tabular model that runs on an Analysis Services instance.|via Excel and Power Pivot BI Desktop|  
  
 <sup>1</sup> Compatibility levels, introduced in SQL Server 2012, are significant in the current release due to the new Tabular metadata engine and support for scenario-enabling  features available only at the higher level. Notable advancements include DirectQuery, script, and programmability. See [What's New in Analysis Services](../analysis-services/what-s-new-in-analysis-services.md) for details.  
  
##  <a name="bkmk_models"></a> Model Features  
  The following table summarizes feature availability at the model level. Review this list to ensure that the feature you want to use is available in the type of model you plan to build.  
  
|||||  
|-|-|-|-|  
||Multidimensional|Tabular|Power Pivot|  
|Actions|Yes|No|No|  
|Aggregations|Yes|No|No|  
|Calculated Column|No|Yes|Yes|  
|Calculated Measures|Yes|Yes|Yes|  
|Calculated Tables|No|Yes <sup>1</sup>|No|  
|Custom Assemblies|Yes|No|No|  
|Custom Rollups|Yes|No|No|  
|Default Member|Yes|No|No|  
|Display folders|Yes|Yes <sup>1</sup>|No|  
|Distinct Count|Yes|Yes (via DAX)|Yes (via DAX)|  
|Drillthrough|Yes|Yes (detail opens in separate worksheet)|Yes|  
|Hierarchies|Yes|Yes|Yes|  
|KPIs|Yes|Yes|Yes|  
|Linked objects|Yes|Yes (linked tables)|No|  
|Many-to-many relationships|Yes|No (but there is [bi-directional cross filters](../Topic/Bi-directional%20cross%20filters%20for%20tabular%20models%20in%20SQL%20Server%202016%20Analysis%20Services.md) at 1200 compatibility level)|No|  
|Named sets|Yes|No|No|  
|Parent-child Hierarchies|Yes|Yes (via DAX)|Yes (via DAX)|  
|Partitions|Yes|Yes|Yes|  
|Perspectives|Yes|Yes|Yes|  
|Semi-additive Measures|Yes|Yes|Yes|  
|Translations|[Yes](../analysis-services/multidimensional-models/translations-in-multidimensional-models-analysis-services.md)|Yes|[Yes](../analysis-services/tabular-models/translations-in-tabular-models-analysis-services.md)|  
|User-defined Hierarchies|Yes|Yes|Yes|  
|Writeback|Yes|No|No|  
  
 <sup>1</sup> See [Compatibility Level for Tabular models in Analysis Services](../analysis-services/tabular-models/compatibility-level-for-tabular-models-in-analysis-services.md) for information about functional differences within the tabular band.  
  
##  <a name="bkmk_ds"></a> Data Considerations  
 Tabular and Multidimensional models use imported data from external sources. The amount and type of data you need to import can be a primary consideration when deciding which model type best fits your data.  
  
 **Compression**  
  
 Both Tabular and Multidimensional solutions use data compression that reduces the size of the Analysis Services database relative to the data warehouse from which you are importing data. Because actual compression will vary based on the characteristics of the underlying data, there is no way to know precisely how much disk and memory will be required by a solution after data is processed and used in queries.  
  
 An estimate used by many Analysis Services developers is that primary storage of a Multidimensional database will be about one third size of the original data. Tabular databases can sometimes get greater amounts of compression, about one tenth the size, especially if most of the data is imported from fact tables.  
  
 **Size of the model and resource bias (in-memory or disk)**  
  
 The size of an Analysis Services database is constrained only by the resources available to run it. The model type and storage mode will also play a role in how large the database can grow.  
  
 Tabular databases run either in-memory or in DirectQuery mode that offloads query execution to an external database. For Tabular in-memory analytics, the database is stored entirely in memory, which means you must have sufficient memory to not only load all the data, but also  additional data structures created to support queries.  
  
 DirectQuery, revamped in this release, has fewer restrictions than before, and better performance. Leveraging the backend relational database for storage and query execution makes building a large scale Tabular model more feasible than was previously possible.  
  
 Historically, the largest [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] databases in production are multidimensional, with processing and query workloads running independently on dedicated hardware, each one optimized for its respective use.  Tabular databases are catching up quickly, and new advancements in DirectQuery will help close the gap even further.  
  
 For Multidimensional offloading data storage and query execution is available via ROLAP.   On a query server, rowsets can be cached, and stale ones  paged out. Efficient and balanced use of memory and disk resources often guide customers to multidimensional solutions.  
  
 Under load, both disk and memory requirements for either solution type can be expected to increase as Analysis Services caches, stores, scans, and queries data. For more information about memory paging options, see [Memory Properties](../analysis-services/server-properties/memory-properties.md). To learn more about scale, see [High availability and Scalability in Analysis Services](../analysis-services/instances/high-availability-and-scalability-in-analysis-services.md).  
  
 Power Pivot for Excel has an artificial file size limit of 2 gigabytes, which is imposed so that workbooks created in Power Pivot for Excel can be uploaded to SharePoint, which sets maximum limits on file upload size. One of the main reasons for migrating a Power Pivot workbook to a tabular solution on a standalone Analysis Services instance is to get around the file size limitation. For more information about configuring maximum file upload size, see [Configure Maximum File Upload Size &#40;Power Pivot for SharePoint&#41;](../analysis-services/power-pivot-sharepoint/configure-maximum-file-upload-size-power-pivot-for-sharepoint.md).  
  
 **Supported Data Sources**  
  
 Multidimensional solutions can import data from relational data sources using OLE DB native and managed providers.  
  
 Tabular models can import data from relational data sources, data feeds, and some document formats. You can also use OLE DB for ODBC providers with Tabular models.  
  
 To view the list of external data sources that you can import to each model, see the following topics:  
  
-   [Supported Data Sources &#40;SSAS - Multidimensional&#41;](../analysis-services/multidimensional-models/supported-data-sources-ssas-multidimensional.md)  
  
-   [Data Sources Supported &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/data-sources-supported-ssas-tabular.md)  
  
##  <a name="bkmk_lang"></a> Query and Scripting Language Support  
 Analysis Services includes MDX, DMX, DAX, XML/A, ASSL, and TMSL. Support for these languages can vary by model type. If query and scripting language requirements are a consideration, review the following list.  
  
-   Power Pivot workbooks use DAX for calculations, and DAX or MDX for queries.  
  
-   Tabular model databases support DAX calculations, DAX queries, and MDX queries. This is true at all compatibilities levels. Script languages are ASSL (over XMLA) for compatibility levels 1050-1103, and TMSL (over XMLA) for compatibility level 1200.  
  
-   Multidimensional model databases support MDX calculations, MDX queries, DAX queries, and ASSL. 
  
-   Data mining models support DMX and ASSL.  
  
-   Analysis Services PowerShell is supported for Tabular and Multidimensional models and databases.  
  
 All databases support XML/A. See [Query and Expression Language Reference &#40;Analysis Services&#41;](../Topic/Query%20and%20Expression%20Language%20Reference%20\(Analysis%20Services\).md) and [Analysis Services Developer Documentation](../analysis-services/analysis-services-developer-documentation.md) for more information.  
  
##  <a name="bkmk_sec"></a> Security Features  
 All Analysis Services solutions can be secured at the database level. More granular security options vary by mode. If granular security settings are requirement for your solution, review the following list to ensure the level of security you want is supported in the type of solution you want to build:  
  
-   [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks are secured at the file level, using SharePoint permissions.  
  
-   Tabular model databases can use row-level security, using role-based permissions in Analysis Services.  
  
-   Multidimensional model databases can use dimension and cell-level security, using role-based permissions in Analysis Services.  
  
 [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks can be restored to a Tabular mode server. Once the file is restored, it is decoupled from SharePoint, allowing you to use all Tabular modeling features, including row-level security.  
  
##  <a name="bkmk_designer"></a> Design Tools  
 Data modeling skills and technical expertise can vary widely among users who are tasked with building analytical models. If tool familiarity or user expertise is a consideration for your solution, compare the following experiences for model creation.  
  
|Modeling Tool|How Used|  
|-------------------|--------------|  
|[!INCLUDE[ssBIDevStudioFull](../analysis-services/includes/ssbidevstudiofull-md.md)]|Use to create Tabular, Multidimensional, and Data Mining solutions. This authoring environment uses the Visual Studio shell to provide workspaces, property panes, and object navigation. Technical users who already use Visual Studio will most likely prefer this tool for building business intelligence applications.|  
|[!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for Excel|Use to create a [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbook that you later deploy to a SharePoint farm that has an installation of [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for SharePoint. [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for Excel has a separate application workspace that opens over Excel. It uses the same visual metaphors (tabbed pages, grid layout, and formula bar) as Excel. Users who are proficient in Excel will prefer this tool over [!INCLUDE[ssBIDevStudioFull](../analysis-services/includes/ssbidevstudiofull-md.md)].|  
  
##  <a name="bkmk_client"></a> Client Application Support  
 If you are using Reporting Services, report feature availability varies across editions and server modes. For this reason, the type of report that you want to build might influence which server mode you choose to install.  
  
 [!INCLUDE[ssCrescent](../analysis-services/includes/sscrescent-md.md)], a Reporting Services authoring tool that runs in SharePoint, is available on a report server that is deployed in a SharePoint 2010 farm. The only type of data source that can be used with this report is an Analysis Services tabular model database or a [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbook. This means that you must have a tabular mode server or a [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for SharePoint server to host the data source used by this type of report. You cannot use a multidimensional model as a data source for a [!INCLUDE[ssCrescent](../analysis-services/includes/sscrescent-md.md)] report. You must create a [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] BI Semantic Model connection or a Reporting Services shared data source to use as the data source for a [!INCLUDE[ssCrescent](../analysis-services/includes/sscrescent-md.md)] report.  
  
 Report Builder and Report Designer can use any Analysis Services database, including [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks that are hosted on [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for SharePoint.  
  
 Excel PivotTable reports are supported by all Analysis Services databases. Excel functionality is the same whether you use a tabular .database, multidimensional database, or [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbook, although Writeback is only supported for multidimensional databases.  
  
 PerformancePoint dashboards can connect to all Analysis Services databases, including [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks. For more information, see [Create Data Connections (PerformancePoint Services)](http://go.microsoft.com/fwlink/?linkdID=218155).  
  
##  <a name="bkmk_deploymentmode"></a> Server Deployment Modes for Multidimensional and Tabular Solutions  
 An Analysis Services instance is installed in one of three modes that set the operational context of the server. The server mode you install will determine the type of solutions that can be deployed to that server. Storage and memory architecture are the primary differences among the modes, but additional differences apply. The three server modes are briefly described in the following table. For more information, see [Determine the Server Mode of an Analysis Services Instance](../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md).  
  
|Deployment mode|Description|  
|---------------------|-----------------|  
|0 - Multidimensional and Data Mining|Runs multidimensional and data mining solutions that you deploy to a default instance of Analysis Services. Deployment mode 0 is the default for an Analysis Services installation.|  
|1 - [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for SharePoint|For [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] data access, Analysis Services is an internal component of a [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for SharePoint installation. Analysis Services is installed in deployment mode 1 and used exclusively by [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] services in a SharePoint environment.|  
|2 - Tabular|Runs tabular solutions on a standalone instance of Analysis Services configured for deployment mode 2.|  
  
 See [Install Analysis Services](../analysis-services/instances/install/windows/install-analysis-services.md) for more information.  
  
##  <a name="bkmk_sharePoint"></a> SharePoint Requirements  
 SQL Server integrates with SharePoint by adding support for [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] data access and tabular data access. Investment in SharePoint and SQL Server integration grows when you maximize the number of features used from each product. If you have SharePoint, you can install SQL Server [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for SharePoint to enable [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] data access and get the [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] .bism connection files used to access tabular databases running on an external Analysis Services instance on a network server.  
  
 Power View reporting, which uses [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] and tabular databases as a data source, is both a SharePoint feature provided by SQL Server and a built-in feature of Excel. Although the tabular databases run on an Analysis Services instance outside of SharePoint, that data is consumed by Power View reports that run in SharePoint.  
  
 If you do not use SharePoint, you can still use [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for Excel to create [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks but you will not have a cohesive data visualization experience. Each person who uses the workbook must download and view each workbook in Excel using the [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] for Excel add-in to get data interaction and exploration using slicers, filters, and pivots. Otherwise, workbook visualization is limited to static data as it appears when you open the workbook.  
  
 Tabular, multidimensional, and data mining solutions run on Analysis Services instances on a network, with no SharePoint dependency.  
  
##  <a name="bkmk_ext"></a> Programmability and Extensibility Support  
 Although there is developer support for Power BI, there is no developer support for [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks. If you are using [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] workbooks, you must use the built-in client and server applications as part of your solution. Excel programming and SharePoint programming are the only options.  
  
 For Power BI, see [Power BI Embedded](https://azure.microsoft.com/services/power-bi-embedded/).  
  
 Tabular solutions only support one model.bim file per solution, which means that all work must be done in a single file. Development teams that are accustomed to working with multiple projects in a single solution might need to revise how they work when building a shared tabular solution.  
  
 Tabular solutions at compatibility level 1200 map to a new object model that uses tabular metadata. Older Tabular and all Multidimensional models use multidimensional metadata to as descriptors. We recommend upgrading older Tabular models to the 1200 compatibility level so that you can use the tabular namespaces in AMO for custom code and script.  
  
 See [Analysis Services Developer Documentation](https://msdn.microsoft.com/library/bb500153.aspx) for more information.  
  
##  <a name="bkmk_Next"></a> Next Step: Build a Solution  
 Now that you have a basic understanding of how the solutions compare, try out the following tutorials to learn the steps for creating each one. The following links take you to tutorials that explain the steps.  
  
-   Build a [!INCLUDE[ssGemini](../analysis-services/includes/ssgemini-md.md)] model. See, [Get started with Power Pivot in Microsoft Excel](https://support.office.com/article/Get-started-with-Power-Pivot-in-Microsoft-Excel-fdfcf944-7876-424a-8437-1a6c1043a80b).  
  
-   Build a tabular model. See, [Tabular Modeling &#40;Adventure Works Tutorial&#41;](../analysis-services/tutorials/tabular-modeling-adventure-works-tutorial.md).  
  
-   Build a multidimensional model. See,  [Multidimensional Modeling &#40;Adventure Works Tutorial&#41;](../analysis-services/tutorials/multidimensional-modeling-adventure-works-tutorial.md).  
  
-   Build a data mining model. See,  [Basic Data Mining Tutorial](../Topic/Basic%20Data%20Mining%20Tutorial.md).  
  
## See Also  
 [Analysis Services Instance Management](../analysis-services/instances/analysis-services-instance-management.md)   
 [What's New in Analysis Services](../analysis-services/what-s-new-in-analysis-services.md)     
 [What’s New in Power Pivot](http://go.microsoft.com/fwlink/?LinkId=238141)   
 [Power Pivot BI Semantic Model Connection &#40;.bism&#41;](../analysis-services/power-pivot-sharepoint/power-pivot-bi-semantic-model-connection-.bism.md)   
 [Create and Manage Shared Data Sources &#40;Reporting Services in SharePoint Integrated Mode&#41;](../Topic/Create%20and%20Manage%20Shared%20Data%20Sources%20\(Reporting%20Services%20in%20SharePoint%20Integrated%20Mode\).md)  
  
  