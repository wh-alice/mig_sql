---
title: "Allocate Handles and Connect to SQL Server (ODBC) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "handles [ODBC]"
  - "handles [ODBC], connection"
  - "handles [ODBC], about handles"
ms.assetid: 6172cd52-9c9a-467d-992f-def07f3f3bb1
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# Allocate Handles and Connect to SQL Server (ODBC)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

    
### To allocate handles and connect to SQL Server  
  
1.  Include the ODBC header files Sql.h, Sqlext.h, Sqltypes.h.  
  
2.  Include the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] driver-specific header file, Odbcss.h.  
  
3.  Call [SQLAllocHandle](http://go.microsoft.com/fwlink/?LinkId=58396) with a **HandleType** of SQL_HANDLE_ENV to initialize ODBC and allocate an environment handle.  
  
4.  Call [SQLSetEnvAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetenvattr.md) with **Attribute** set to SQL_ATTR_ODBC_VERSION and **ValuePtr** set to SQL_OV_ODBC3 to indicate the application will use ODBC 3.x-format function calls.  
  
5.  Optionally, call [SQLSetEnvAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetenvattr.md) to set other environment options, or call [SQLGetEnvAttr](http://go.microsoft.com/fwlink/?LinkId=58403) to get environment options.  
  
6.  Call [SQLAllocHandle](http://go.microsoft.com/fwlink/?LinkId=58396) with a **HandleType** of SQL_HANDLE_DBC to allocate a connection handle.  
  
7.  Optionally, call [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) to set connection options, or call [SQLGetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlgetconnectattr.md) to get connection options.  
  
8.  Call SQLConnect to use an existing data source to connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     Or  
  
     Call [SQLDriverConnect](../../relational-databases/extended-stored-procedures-reference/sqldriverconnect.md) to use a connection string to connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     A minimum complete [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] connection string has one of two forms:  
  
    ```  
    DSN=dsn_name;Trusted_connection=yes;  
    DRIVER={SQL Server Native Client 10.0};SERVER=server;Trusted_connection=yes;  
    ```  
  
     If the connection string is not complete, **SQLDriverConnect** can prompt for the required information. This is controlled by the value specified for the *DriverCompletion* parameter.  
  
     \- or -  
  
     Call [SQLBrowseConnect](../../relational-databases/extended-stored-procedures-reference/sqlbrowseconnect.md) multiple times in an iterative fashion to build the connection string and connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
9. Optionally, call [SQLGetInfo](../../relational-databases/extended-stored-procedures-reference/sqlgetinfo.md) to get driver attributes and behavior for the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data source.  
  
10. Allocate and use statements.  
  
11. Call SQLDisconnect to disconnect from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and make the connection handle available for a new connection.  
  
12. Call [SQLFreeHandle](../../relational-databases/extended-stored-procedures-reference/sqlfreehandle.md) with a **HandleType** of SQL_HANDLE_DBC to free the connection handle.  
  
13. Call **SQLFreeHandle** with a **HandleType** of SQL_HANDLE_ENV to free the environment handle.  
  
> [!IMPORTANT]  
>  When possible, use Windows Authentication. If Windows Authentication is not available, prompt users to enter their credentials at run time. Avoid storing credentials in a file. If you must persist credentials, you should encrypt them with the [Win32 crypto API](http://go.microsoft.com/fwlink/?LinkId=64532).  
  
## Example  
 This example shows a call to **SQLDriverConnect** to connect to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] without requiring an existing ODBC data source. By passing an incomplete connection string to **SQLDriverConnect**, it causes the ODBC driver to prompt the user to enter the missing information.  
  
```  
#define MAXBUFLEN   255  
  
SQLHENV      henv = SQL_NULL_HENV;  
SQLHDBC      hdbc1 = SQL_NULL_HDBC;  
SQLHSTMT      hstmt1 = SQL_NULL_HSTMT;  
  
SQLCHAR      ConnStrIn[MAXBUFLEN] =  
         "DRIVER={SQL Server Native Client 10.0};SERVER=MyServer";  
  
SQLCHAR      ConnStrOut[MAXBUFLEN];  
SQLSMALLINT   cbConnStrOut = 0;  
  
// Make connection without data source. Ask that driver   
// prompt if insufficient information. Driver returns  
// SQL_ERROR and application prompts user  
// for missing information. Window handle not needed for  
// SQL_DRIVER_NOPROMPT.  
retcode = SQLDriverConnect(hdbc1,      // Connection handle  
                  NULL,         // Window handle  
                  ConnStrIn,      // Input connect string  
                  SQL_NTS,         // Null-terminated string  
                  ConnStrOut,      // Address of output buffer  
                  MAXBUFLEN,      // Size of output buffer  
                  &cbConnStrOut,   // Address of output length  
                  SQL_DRIVER_PROMPT);  
```  
  
  