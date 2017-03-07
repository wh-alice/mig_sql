---
title: "Add a Data Source (ODBC) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "data sources [ODBC]"
ms.assetid: b4ac6f0e-8e6a-4b1a-9a7e-60e0a69b2180
caps.latest.revision: 11
ms.author: "jhubbard"
manager: "jhubbard"
---
# Configuring the SQL Server ODBC Driver - Add a Data Source
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  Before using ODBC applications with [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] or later, you must know how to upgrade the version of the catalog stored procedures on earlier versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and add, delete, and test data sources.  
  
  You can add a data source by using ODBC Administrator, programmatically (by using [SQLConfigDataSource](../../relational-databases/extended-stored-procedures-reference/sqlconfigdatasource.md)), or by creating a file.  
  
### To add a data source by using ODBC Administrator  
  
1.  From the **Control Panel**, access **Administrative Tools** and then either **ODBC Data Sources (64-bit)** or **ODBC Data Sources (32-bit)**. Alternatively, you can invoke odbcad32.exe.  
  
2.  Click the **User DSN**, **System DSN**, or **File DSN** tab, and then click **Add**.  
  
3.  Click **SQL Server**, and then click **Finish**.  
  
4.  Complete the steps in the **Create a New Data Source to SQL Server** Wizard.  
  
### To add a data source programmatically  
  
1.  Call [SQLConfigDataSource](../../relational-databases/extended-stored-procedures-reference/sqlconfigdatasource.md) with the second parameter set to either ODBC_ADD_DSN or ODBC_ADD_SYS_DSN.  
  
### To add a file data source  
  
1.  Call [SQLDriverConnect](../../relational-databases/extended-stored-procedures-reference/sqldriverconnect.md) with a SAVEFILE=file_name parameter in the connect string. If the connect is successful, the ODBC driver creates a file data source with the connection parameters in the location pointed to by the SAVEFILE parameter.  
  
## See Also  
[Delete a Data Source &#40;ODBC&#41;](../../relational-databases/native-client-odbc-how-to/configuring-the-sql-server-odbc-driver-delete-a-data-source.md)    
  
  