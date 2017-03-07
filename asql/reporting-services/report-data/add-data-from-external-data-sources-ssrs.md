---
title: "Add Data from External Data Sources (SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 924a2ec3-150c-4bb2-83c9-4c7b440e8c03
caps.latest.revision: 12
ms.author: "asaxton"
manager: "erikre"
---
# Add Data from External Data Sources (SSRS)
  To retrieve data from an external data source, you use a data connection. Data connection information is usually provided by the owner of the external data source, who is responsible for granting permissions and specifying which types of credentials to use. Data connection information is saved as a report data source. The data source type specifies which data extension to use to retrieve the data.  
  
 For more information about data source types, see [In This Section](#InThisSection).  
  
##  <a name="DataAccess"></a> Understanding Data Access Technology  
 To retrieve data for a report dataset requires multiple layers of data access software. The following list provides a simple description of how reports work with data access technologies:  
  
-   **Application and user interface** The Report Builder application that you use to create a data source, add a reference to a shared data source, add a shared dataset, or add a report part that includes the data sources and datasets that it depends on..  
  
-   **Report definition elements** Data sources and datasets are part of the report definition. After a report is published to a report server, shared data sources and shared datasets are managed independently from the report definition.  
  
    -   **Data source and Shared data source** Part of a report definition that includes the information about the type of data processing extension, the connection information, and the authentication.  
  
    -   **Dataset and field collection** Part of a report definition that includes the query, the field collection, and the field data types.  
  
-   **Reporting Services data extensions** Built-in data extensions that are installed with Report Builder. A data extension provides functionality that handles authentication, server aggregates, and multi-value parameters.  
  
-   **Data provider** The software that manages the connection and retrieval of data from the external data source. The data provider defines the connection string syntax. Most data extensions are built on top of a data provider layer.  
  
-   **External data source** Where to retrieve report data from, for example, a database, a file, a cube, or a Web service.  
  
> [!NOTE]  
>  When you are not connected to a report server, you can choose from data extensions that are installed with Report Builder. You access the data as a single user using credentials from your computer. When you are connected to a report server, you can choose from data extensions that are installed on the report server. You access the data as one of multiple users who run the report and you are using credentials on the report server. For more information, see [Specify Credentials in Report Builder](../Topic/Specify%20Credentials%20in%20Report%20Builder.md).  
  
##  <a name="ReportData"></a> Understanding Report Data  
 In its simplest form, a report displays data from a report dataset in a data region on the report page, that is, in a single table, chart, matrix, or other type of report data region. The data in a report dataset comes from the first result set that is returned from a single query command that runs from read-only access to an external data source. Each data region expands as needed to display all the data from the dataset.  
  
 Data in a dataset are essentially tabular. Columns are the fields from the dataset query. Rows are from the rows in the result set. You can use the following generalized types of data in a report:  
  
-   Rectangular data. Data from a result set that has the same number of columns in every row.  
  
-   Hierarchical data is supported as a flattened rowset.  
  
    -   Ragged hierarchies, where there is a different number of columns for each row of data, is not supported. For some data extensions, this has some implications.  
  
    -   Data extensions that work with multidimensional data sources use XML for Analysis protocol and retrieve data as a flattened row set and not as a cell set.  
  
    -   The XML data extension automatically flattens XML data to use it in a report. If the first instance of an XML element does not include all attributes or subelements, the data might not be available as report data.  
  
-   Recursive data is supported. A result set that contains a recursive data hierarchy includes all the information about the hierarchy structure in a rectangular result set. For example, the report-to structure in a company can be represented by a table that includes two columns: an employee and a manager. Each manager also is an employee with a manager. The top manager usually contains a null or some other identifier that indicates that this employee has no manager.  
  
  
##  <a name="DataTypes"></a> Working with Data Types  
 When you create a dataset, the data types of the fields are mapped to a subset of common language runtime (CLR) data types from the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)]. Data types that cannot be clearly mapped are returned as strings. For more information about working with field data types, see [Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md). When you create a parameter, the data type must be a supported report definition data type. For more information about mapping data types from the data provider to a report parameter, see [Data Types in Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/data-types-in-expressions-report-builder-and-ssrs.md).  
  
  
##  <a name="HowTo"></a> How-To Topics  
 This section contains step-by-step instructions for working with data connections, data sources, and datasets.  
  
 [Add and Verify a Data Connection &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/add-and-verify-a-data-connection-report-builder-and-ssrs.md)  
  
 [Create a Shared Dataset or Embedded Dataset &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/create-a-shared-dataset-or-embedded-dataset-report-builder-and-ssrs.md)  
  
 [Add a Filter to a Dataset &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/add-a-filter-to-a-dataset-report-builder-and-ssrs.md)  
  
  
##  <a name="InThisSection"></a> In This Section  
 The following topics provide information about each built-in data extension.  
  
|Topic|Data Source Type|  
|-----------|----------------------|  
|[SQL Server Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/sql-server-connection-type-ssrs.md)|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]|  
|[Analysis Services Connection Type for MDX &#40;SSRS&#41;](../../reporting-services/report-data/analysis-services-connection-type-for-mdx-ssrs.md)|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]|  
|[Power Pivot Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/power-pivot-connection-type-ssrs.md)|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]|  
|[SharePoint List Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/sharepoint-list-connection-type-ssrs.md)|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] SharePoint List|  
|[SQL Azure Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/sql-azure-connection-type-ssrs.md)|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)]|  
|[SQL Server Parallel Data Warehouse Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/sql-server-parallel-data-warehouse-connection-type-ssrs.md)|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDWfull](../../reporting-services/report-data/includes/ssdwfull-md.md)]|  
|[SAP NetWeaver BI Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/sap-netweaver-bi-connection-type-ssrs.md)|SAP NetWeaver BI|  
|[Hyperion Essbase Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/hyperion-essbase-connection-type-ssrs.md)|Hyperion Essbase|  
|[OLE DB Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/ole-db-connection-type-ssrs.md)|OLE DB|  
|[ODBC Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/odbc-connection-type-ssrs.md)|ODBC|  
|[XML Connection Type &#40;SSRS&#41;](../../reporting-services/report-data/xml-connection-type-ssrs.md)|XML|  
|[Report Model Connection &#40;SSRS&#41;](../../reporting-services/report-data/report-model-connection-ssrs.md)|.smdl model|  
  
  
##  <a name="Related"></a> Related Sections  
 These sections of the documentation provide in-depth conceptual information about report data, as well as procedural information about how to define, customize, and use parts of a report that are related to data.  
  
|Topic|Description|  
|-----------|-----------------|  
|[Report Datasets &#40;SSRS&#41;](../../reporting-services/report-data/report-datasets-ssrs.md)|Provides an overview of accessing data for your report.|  
|[Data Connections, Data Sources, and Connection Strings in Report Builder](../Topic/Data%20Connections,%20Data%20Sources,%20and%20Connection%20Strings%20in%20Report%20Builder.md)|Provides information about data connections and data sources.|  
|[Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md)|Provides information about embedded and shared datasets.|  
|[Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md)|Provides information about the dataset field collection generated by the query.|  
|[Data Sources Supported by Reporting Services &#40;SSRS&#41;](../../reporting-services/report-data/data-sources-supported-by-reporting-services-ssrs.md) in the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] documentation in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [Books Online](http://go.microsoft.com/fwlink/?linkid=121312).|Provides in-depth information about platform and version support for each data extension.|  
|[Data Processing Extensions Overview](../../reporting-services/extensions/data-processing/data-processing-extensions-overview.md) in the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] documentation in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [Books Online](http://go.microsoft.com/fwlink/?linkid=121312).|Provides in-depth information for advanced users about data extensions.|  
  
  
## See Also  
 [Report Datasets &#40;SSRS&#41;](../../reporting-services/report-data/report-datasets-ssrs.md)   
 [Query Designers &#40;Report Builder&#41;](../Topic/Query%20Designers%20\(Report%20Builder\).md)  
  
  