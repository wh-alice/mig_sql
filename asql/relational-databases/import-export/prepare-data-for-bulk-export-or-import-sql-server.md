---
title: "Prepare Data for Bulk Export or Import (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/09/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-bulk-import-export"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "bulk importing [SQL Server], planning"
  - "bulk importing [SQL Server], from a CSV file"
  - "data formats [SQL Server], planning operations"
  - "CSV files [SQL Server]"
  - "quoted fields in CSV files [SQL Server]"
ms.assetid: 783fd581-2e5f-496b-b79c-d4de1e09ea30
caps.latest.revision: 52
ms.author: "jhubbard"
manager: "jhubbard"
---
# Prepare Data for Bulk Export or Import (SQL Server)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  This section discusses the considerations involved in planning for bulk-export operations and the requirements for bulk-import operations.  
  
> [!NOTE]  
>  If you are uncertain about how to format a data file for bulk importing,  use the **bcp** utility to export data from the table into a data file. The formatting of each data field in this file shows the formatting required to bulk import data into the corresponding table column. Use the same data formatting for fields of your data file.  
  
## Data-File Format Considerations for Bulk Export  
 Before you perform a bulk-export operation by using the **bcp** command, consider the following:  
  
-   When data is exported to a file, the **bcp** command creates the data file automatically by using the specified file name. If that file name is already in use, the data that is being bulk copied to the data file overwrites the existing contents of the file.  
  
-   Bulk export from a table or view to a data file requires SELECT permission on the table or view that is being bulk copied.  
  
-   [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] can use parallel scans to retrieve data. Therefore, the table rows that are bulk exported in from an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] are not ordinarily guaranteed to be in any specific order in the data file. To make bulk-exported table rows appear in a specific order in the data file, use the **queryout** option to bulk export from a query, and specify an ORDER BY clause.  
  
## Data-File Format Requirements for Bulk Import  
 To import data from a data file, the file must meet the following basic requirements:  
  
-   The data must be in row and column format.  
  
> [!NOTE]  
>  The structure of the data file does not need to be identical to the structure of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table because columns can be skipped or reordered during the bulk-import process.  
  
-   The data in the data file must be in a supported format such as character or native format.  
  
-   The data can be in character or native binary format including Unicode.  
  
-   To import data by using a **bcp** command, BULK INSERT statement, or INSERT ... SELECT * FROM OPENROWSET(BULK...) statement, the destination table must already exist.  
  
-   Each field in the data file must be compatible with the corresponding column in the target table. For example, an **int** field cannot be loaded into a **datetime** column. For more information, see [Data Formats for Bulk Import or Bulk Export &#40;SQL Server&#41;](../../relational-databases/import-export/data-formats-for-bulk-import-or-bulk-export-sql-server.md) and [Specify Data Formats for Compatibility when Using bcp &#40;SQL Server&#41;](../../relational-databases/import-export/specify-data-formats-for-compatibility-when-using-bcp-sql-server.md).  
  
    > [!NOTE]  
    >  To specify a subset of rows to import from a data file rather than the entire file, you can use a **bcp** command with the **-F** *first_row* switch and/or **-L** *last_row* switch. For more information, see [bcp Utility](../../tools/bcp-utility.md).  
  
-   To import data from data files with fixed-length or fixed-width fields, use a format file. For more information, see [XML Format Files &#40;SQL Server&#41;](../../relational-databases/import-export/xml-format-files-sql-server.md).  
  
-   Comma-separated value (CSV) files are not supported by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] bulk-import operations. However, in some cases, a CSV file can be used as the data file for a bulk import of data into [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Note that the field terminator of a CSV file does not have to be a comma. To be usable as a data file for bulk import, a CSV file must comply with the following restrictions:  
  
    -   Data fields never contain the field terminator.  
  
    -   Either none or all of the values in a data field are enclosed in quotation marks ("").  
  
     To bulk import data from a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] FoxPro or Visual FoxPro table (.dbf) file or a [!INCLUDE[ofprexcel](../../analysis-services/data-mining/includes/ofprexcel-md.md)] worksheet (.xls) file, you would need to convert the data into a CSV file that complies to the preceding restrictions. The file extension will typically be .csv. You can then use the .csv file as a data file in a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] bulk-import operation.  
  
     On 32-bit systems, it is possible to import CSV data into a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table without bulk-import optimizations by using [OPENROWSET](../../t-sql/functions/openrowset-transact-sql.md) with the OLE DB Provider for Jet. Jet treats text files as tables, with the schema defined by a schema.ini file that is located in the same directory as the data source.  For a CSV data, one of the parameters in the schema.ini file would be "FORMAT=CSVDelimited". To use this solution, you would need to understand how the Jet Test IISAMm operations—its connection string syntax, schema.ini usage, registry setting options, and so on).  The best sources of this information are Microsoft Access Help and Knowledge Base (KB) articles. For more information, see [Initializing the Text Data Source Driver](https://msdn.microsoft.com/library/office/ff834391.aspx), [How To Use a SQL Server 7.0 Distributed Query with a Linked Server to Secured Access Databases](http://go.microsoft.com/fwlink/?LinkId=128504), [HOW TO: Use Jet OLE DB Provider 4.0 to Connect to ISAM Databases](http://go.microsoft.com/fwlink/?LinkId=128505), and [How To Open Delimited Text Files Using the Jet Provider's Text IIsam](http://go.microsoft.com/fwlink/?LinkId=128501).  
  
 In addition, the bulk import of data from a data file into a table requires the following:  
  
-   Users must have INSERT and SELECT permissions on the table. Users also need ALTER TABLE permission when they use options that require data definition language (DDL) operations, such as disabling constraints.  
  
-   When you bulk import data by using BULK INSERT or INSERT ... SELECT * FROM OPENROWSET(BULK...), the data file must be accessible for read operations by either the security profile of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process (if the user logs in using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provided login) or by the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows login that is used under delegated security. Additionally, the user must have ADMINISTER BULK OPERATIONS permission to read the file.  
  
> [!NOTE]  
>  Bulk importing into a partitioned view is unsupported, and attempts to bulk import data into a partitioned view fail.  
  
## External Resources  
 [How to import data from Excel to SQL Server](http://support.microsoft.com/kb/321686)  
  
## Change History  
  
|Updated content|  
|---------------------|  
|Added information about using the OLE DB Provider for Jet to import CSV data.|  
  
## See Also  
 [bcp Utility](../../tools/bcp-utility.md)   
 [BULK INSERT &#40;Transact-SQL&#41;](../../t-sql/statements/bulk-insert-transact-sql.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [Use Character Format to Import or Export Data &#40;SQL Server&#41;](../../relational-databases/import-export/use-character-format-to-import-or-export-data-sql-server.md)   
 [Use Native Format to Import or Export Data &#40;SQL Server&#41;](../../relational-databases/import-export/use-native-format-to-import-or-export-data-sql-server.md)  
  
  