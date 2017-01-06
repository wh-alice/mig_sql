---
title: "Connecting with bcp | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "bcp"
ms.assetid: 3eca5717-e50f-40db-be16-a1cebbdfee70
caps.latest.revision: 33
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
# Connecting with bcp
[!INCLUDE[Driver_ODBC_Download](../../../connect/odbc/linux/includes)]

The [bcp](http://go.microsoft.com/fwlink/?LinkID=190626) utility is available in the Microsoft ODBC Driver for SQL Server on Linux.  
  
The field terminator is a tab ("\t").  
  
The line terminator is a newline ("\n").  
  
Character mode is the preferred format for bcp format files and data files that do not contain extended characters.  
  
> [!NOTE]  
> A backslash '\\' on a command-line argument must either be quoted or escaped. For example to specify a newline as a custom row terminator you must use one of the following mechanisms:  
>   
> -   -r\\\n  
> -   -r"\n"  
> -   -r'\n'  
  
The following is a sample command invocation of bcp to copy table rows to a text file:  
  
```  
bcp AdventureWorks2008R2.Person.Address out test.dat -Usa -Pxxxx -Sxxx.xxx.xxx.xxx  
```  
  
## bcp Options That are Available  
In the current release, the following bcp syntax and options are available:  
  
[*database***.**]*schema***.***table* **in** *data_file* | **out** *data_file*  
  
-a *packet_size*  
Specifies the number of bytes, per network packet, sent to and from the server.  
  
-b *batch_size*  
Specifies the number of rows per batch of imported data.  
  
-c  
Uses a character data type.  
  
-d *database_name*  
Specifies the database to connect to.  
  
-D  
Causes the value passed to the sqlcmd -S option to be interpreted as a data source name (DSN). For more information, see "DSN Support in sqlcmd and bcp" in [Connecting with sqlcmd](../../../connect/odbc/linux/connecting-with-sqlcmd.md).  
  
-e *eror_file*  
Specifies the full path of an error file used to store any rows that the bcp utility cannot transfer from the file to the database.  
  
-E  
Uses an identity value or values in the imported data file for the identity column.  
  
-f *format_file*  
Specifies the full path of a format file.  
  
-F *first_row*  
Specifies the number of the first row to export from a table or import from a data file.  
  
-k  
Specifies that empty columns should retain a null value during the operation, rather than have any default values for the columns inserted.  
  
-l  
Specifies a login timeout. The –l option specifies the number of seconds before a bcp login to SQL Server times out when you try to connect to a server. The default bcp time-out for login to SQL Server is 15 seconds. The login time-out must be a number between 0 and 65534. If the value supplied is not numeric or does not fall into that range, bcp generates an error message. A value of 0 specifies time-out to be infinite.  
  
-L *last_row*  
Specifies the number of the last row to export from a table or import from a data file.  
  
-m *max_errors*  
Specifies the maximum number of syntax errors that can occur before the bcp operation is canceled.  
  
-n  
Uses the native (database) data types of the data to perform the bulk-copy operation.  
  
-P *password*  
Specifies the password for the login ID.  
  
-q  
Executes the SET QUOTED_IDENTIFIERS ON statement in the connection between the bcp utility and an instance of SQL Server.  
  
-r *row_terminator*  
Specifies the row terminator.  
  
-R  
Specifies that currency, date, and time data is bulk copied into SQL Server using the regional format defined for the locale setting of the client computer.  
  
-S *server*  
Specifies the name of the SQL Server instance to connect to. Or, if -D is used, a DSN.  
  
-t *field_terminator*  
Specifies the field terminator.  
  
-T  
Specifies that the bcp utility connect to SQL Server with a trusted connection (integrated security).  
  
-U *login_id*  
Specifies the login ID used to connect to SQL Server.  
  
-v  
Reports the bcp utility version number and copyright.  
  
-w  
Uses Unicode characters to perform the bulk copy operation.  
  
In this release, Latin-1 and UTF-16 characters are supported.  
  
## bcp Options That are Not Available  
In the current release, the following bcp syntax and options are not available:  
  
-C  
Specifies the code page of the data in the data file.  
  
-h *hint*  
Specifies the hint or hints used during a bulk import of data into a table or view.  
  
-i *input_file*  
Specifies the name of a response file.  
  
-N  
Uses the native (database) data types of the data for noncharacter data, and Unicode characters for character data.  
  
-o *output_file*  
Specifies the name of a file that receives output redirected from the command prompt.  
  
-V (80 | 90 | 100)  
Uses data types from an earlier version of SQL Server.  
  
-x  
Used with the format and -f format_file options, generates an XML-based format file instead of the default non-XML format file.  
  
## See Also  
[Microsoft ODBC Driver for SQL Server on Linux](../../../connect/odbc/linux/microsoft-odbc-driver-for-sql-server-on-linux.md)  
  
