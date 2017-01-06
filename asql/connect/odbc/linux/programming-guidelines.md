---
title: "Programming Guidelines | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0cc8686c-e27b-4963-b674-dc420fcbd3d2
caps.latest.revision: 39
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Programming Guidelines
![Download](../../../ssdt/media/download.png)[Download ODBC Driver](https://blogs.msdn.microsoft.com/sqlnativeclient/2016/10/20/odbc-driver-13-0-for-linux-released/)

The programming features of the Microsoft ODBC Driver 11 for SQL Server on Linux are based on ODBC in SQL Server Native Client ([SQL Server Native Client (ODBC)](http://go.microsoft.com/fwlink/?LinkID=134151)). SQL Server Native Client is based on ODBC in Windows Data Access Components ([ODBC Programmer's Reference](http://go.microsoft.com/fwlink/?LinkID=45250)).  
  
> [!IMPORTANT]  
> These instructions refer to msodbcsql-11.0.2270.0.tar.gz, which is the installation file for Red Hat Linux. If you are installing the CTP for SUSE Linux, the file name is msodbcsql-11.0.2260.0.tar.gz.  
  
An ODBC application can use Multiple Active Result Sets (MARS) and other SQL Server specific features by including /opt/microsoft/msodbcsql/11.0.2270.0/msodbcsql.h after including the unixODBC headers (sql.h, sqlext.h, sqltypes.h, and sqlucode.h). Then use the same symbolic names for SQL Server specific items that you would in your Windows ODBC applications.  
  
## Available Features  
The following sections in from the SQL Server Native Client documentation for ODBC ([SQL Server Native Client (ODBC)](http://go.microsoft.com/fwlink/?LinkID=134151)) are valid when using the ODBC driver on Linux:  
  
-   [Communicating with SQL Server (ODBC)](http://msdn.microsoft.com/library/ms131692.aspx)  
-   [Connection and query timeout support](http://msdn.microsoft.com/library/ms130822.aspx)  
-   [cursors](http://msdn.microsoft.com/library/ms130794(SQL.110).aspx)  
-   [Date/Time Improvements (ODBC)](http://msdn.microsoft.com/library/bb677319.aspx)  
-   [Executing Queries (ODBC)](http://msdn.microsoft.com/library/ms131677.aspx)  
-   [Handling Errors and Messages](http://msdn.microsoft.com/library/ms131289.aspx)  
-   [Kerberos authentication](http://msdn.microsoft.com/library/cc280459.aspx)  
-   [Large CLR User-Defined Types (ODBC)](http://msdn.microsoft.com/library/bb677316.aspx)  
-   [Performing Transactions (ODBC) (except distributed transactions)](http://msdn.microsoft.com/library/ms131706.aspx)  
-   [Processing Results (ODBC)](http://msdn.microsoft.com/library/ms130812.aspx)  
-   [Running Stored Procedures](http://msdn.microsoft.com/library/ms131440.aspx)  
-   [Sparse Columns Support (ODBC)](http://msdn.microsoft.com/library/cc280357.aspx)  
-   [SSL encryption](http://msdn.microsoft.com/library/ms131691.aspx)  
-   [UTF-8 and UTF-16 for command and data API](http://msdn.microsoft.com/library/ff878241.aspx)  
-   [Using Catalog Functions](http://msdn.microsoft.com/library/ms131490.aspx)  
  
## Features That Are Not Available  
The following features are not available in this release of the ODBC driver on Linux:  
  
-   bulk copy functions (bcp_batch, for example)  
-   distributed transactions (SQL_ATTR_ENLIST_IN_DTC attribute is not supported)  
-   database mirroring  
-   FILESTREAM  
-   profiling ODBC driver performance, discussed in [SQLSetConnectAttr](http://go.microsoft.com/fwlink/?LinkId=234099), the following performance-related connection attributes:  
    -   SQL_COPT_SS_PERF_DATA  
    -   SQL_COPT_SS_PERF_DATA_LOG  
    -   SQL_COPT_SS_PERF_DATA_LOG_NOW  
    -   SQL_COPT_SS_PERF_QUERY  
    -   SQL_COPT_SS_PERF_QUERY_INTERVAL  
    -   SQL_COPT_SS_PERF_QUERY_LOG  
-   SQLBrowseConnect  
-   table-valued parameters (TVPs)  
-   C interval types such as SQL_C_INTERVAL_YEAR_TO_MONTH (documented in [Data Type Identifiers and Descriptors](http://msdn.microsoft.com/library/ms716351(VS.85).aspx)) are not currently supported.  
-   Not supported: the SQL_CUR_USE_ODBC value of the SQL_ATTR_ODBC_CURSORS attribute of the SQLSetConnectAttr function.  
  
## Character Support  
SQLCHAR data must be UTF-8. SQLWCHAR data must be UTF-16LE (Little Endian).  
  
If SQLDescribeParameter does not specify a SQL type on the server, the driver uses the SQL type specified in the *ParameterType* parameter of SQLBindParameter. If a narrow character SQL type, such as SQL_VARCHAR, is specified in SQLBindParameter, the driver converts the supplied UTF-8 data to the default SQL Server code page. (The default SQL Server code page is typically 1252.) However, data loss is possible. If code page 1252 cannot represent a character, the driver converts the character to a question mark ('?'). To avoid this data loss, specify a Unicode SQL character type, such as SQL_NVARCHAR, in SQLBindParameter. In this case, the driver converts the supplied Unicode data in UTF-8 encoding to UTF-16 without loss of precision.  
  
There is a text-encoding conversion difference between Windows and the iconv library on Linux. Text data that is encoded in codepage 1255 (Hebrew) has one code point (0xCA) that behaves differently on the two platforms. Converting to Unicode on Windows produces a UTF-16 code point of 0x05BA. Converting to Unicode on Linux produces a UTF-16 code point of 0x00CA. Code point 0xCA in codepage 1255 is not defined to be a character. An application should not include logic that uses the (undefined) code point 0xCA.  
  
When UTF-8 multibyte characters or UTF-16 surrogates are split across SQLPutData buffers, it results in data corruption. Use buffers for streaming SQLPutData that do not end in partial character encodings.  
  
## Other Issues  
  
1.  You can make a dedicated administrator connection (DAC) using SQL Server authentication and **host,port**. A member of the Sysadmin role first needs to discover the DAC port. For example, if the DAC port were 33000 you could connect to it with sqlcmd as follows:  
  
    ```  
    sqlcmd –U <user> -P <pwd> -S <host>,33000  
    ```  
  
2.  The UnixODBC driver manager returns "invalid attribute/option identifier" for all statement attributes when they are passed through SQLSetConnectAttr. On Windows, when SQLSetConnectAttr receives a statement attribute value, it causes the driver to set that value on all active statements that are children of the connection handle.  
  
    > [!NOTE]  
    > DAC connections must use SQL Server Authentication.  
  
## See Also  
[Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/microsoft-odbc-driver-for-sql-server-on-linux.md)  
  
