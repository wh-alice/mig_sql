---
title: "Usage Scenarios and Examples for Common Language Runtime (CLR) Integration | Microsoft Docs"
ms.custom: ""
ms.date: "06/23/2016"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "scenarios [CLR integration]"
  - "common language runtime [SQL Server], samples"
  - "examples [CLR integration]"
  - "sample applications [CLR integration]"
  - "database objects [CLR integration], samples"
  - "managed code [SQL Server], samples"
ms.assetid: 33aac25f-abb4-4f29-af88-4a0dacd80ae7
caps.latest.revision: 44
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Usage Scenarios and Examples for Common Language Runtime (CLR) Integration
  [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] includes sample applications, package samples, and numerous coding samples that you can use to learn about the programmability features of common language runtime (CLR) integration.  
  
|Name|Description|  
|----------|-----------------|  
|[Accessing Native Code from a CLR UDF](../a9retired/accessing-native-code-from-a-clr-udf.md)|Shows how to invoke a function in native (unmanaged) C++ code from a user-defined function in an assembly, in your database.|  
|[Array Parameter Sample](../a9retired/array-parameter-sample.md)|Demonstrates how to create, update, or delete a set of rows in a database by passing an array of information from a client to a CLR integration stored procedure on the server. This is done using a UDT.|  
|[Calendar-Aware Date and Time UDT Sample](../a9retired/calendar-aware-date-and-time-udt-sample.md)|Defines two UDTs that provide calendar-aware handling of dates and times.|  
|[CLR Transactions Sample](../a9retired/clr-transactions-sample.md)|Demonstrates controlling transactions by using the managed APIs located in the System.Transactions namespace.|  
|[Contact Creation using CLR and XML](../a9retired/contact-creation-using-clr-and-xml.md)|The Contact sample for SQL Server provides some useful utilities that form an extra layer of functionality on top of the base AdventureWorks sample database. The first utility creates contact records for various types of people involved in the AdventureWorks database. The contact information is specified by using XML and is passed to a C#-based or VB stored procedure to create the XML and place it in the proper tables with the database.|  
|[Currency Type and Conversion Function](../a9retired/currency-type-and-conversion-function.md)|Defines a Currency user-defined data type using C#.|  
|[Handling Large Objects Using CLR](../a9retired/handling-large-objects-using-clr.md)|Demonstrates transferring large binary objects (LOBs) between [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] and a file system accessible to the server using CLR stored procedures.|  
|[Hello World Ready Sample](../a9retired/hello-world-ready-sample.md)|Demonstrates the basic operations to create, deploy, and test a simple world ready CLR integration-based stored procedure.|  
|[Hello World Sample](../a9retired/hello-world-sample.md)|Demonstrates the basic operations to create, deploy, and test a simple CLR integration-based stored procedure.|  
|[In-Process Data Access Sample](../a9retired/in-process-data-access-sample.md)|Contains a number of simple functions demonstrating various features of the CLR in-process data access provider.|  
|[Result Set Sample](../a9retired/result-set-sample.md)|Demonstrates how to execute commands while reading through results of a query, without opening a new connection and without reading all results into memory.|  
|[Send DataSet Sample](../a9retired/send-dataset-sample.md)|Demonstrates how to return an ADO.NET based DataSet within a server side CLR-based stored procedure as a result set to the client.|  
|[String Utility Functions Sample](../a9retired/string-utility-functions-sample.md)|Contains a streaming table-valued function (TVF), written in Visual C# and Visual Basic, which splits a comma-separated string into a table with one column.|  
|[Supplementary-Aware String Manipulation Sample](../a9retired/supplementary-aware-string-manipulation-sample.md)|Shows the implementation of five supplementary-aware [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] string functions that can handle both Unicode and surrogate strings.|  
|[UDT Utilities](../a9retired/udt-utilities.md)|Contains a number of user-defined data type (UDT) utility functions.|  
|[Unused Assembly Cleanup](../a9retired/unused-assembly-cleanup.md)|Contains a .NET stored procedure that deletes unused assemblies in the current database by querying the metadata catalogs.|  
|[UTF8 String User-Defined Data Type &#40;UDT&#41;](../a9retired/utf8-string-user-defined-data-type-udt.md)|Demonstrates the implementation of a UDT that extends the type system of the database to provide storage for UTF8 encoded values.|  
  
  