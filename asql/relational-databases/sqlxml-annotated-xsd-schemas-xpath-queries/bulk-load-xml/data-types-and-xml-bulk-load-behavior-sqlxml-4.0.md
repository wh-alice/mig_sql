---
title: "Data Types and XML Bulk Load Behavior (SQLXML 4.0) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "bulk load [SQLXML], data types"
  - "data types [SQLXML], XML Bulk Load"
  - "XML Bulk Load [SQLXML], data types"
ms.assetid: d1ac1939-1f6c-4398-b7a7-a79ca608a4f1
caps.latest.revision: 20
ms.author: "douglasl"
manager: "jhubbard"
---
# Data Types and XML Bulk Load Behavior (SQLXML 4.0)
  The data types that are specified in the mapping schema (XSD or XDR type and **sql:datatype**) are generally ignored, except in the following cases:  
  
 In XSD:  
  
-   If the type is **dateTime** or **time**, you must specify the **sql:datatype** because XML Bulk Load performs data conversion before sending the data to Microsoft [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   When you are bulk loading into a column of **uniqueidentifier** type in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the XSD value is a GUID that includes braces ({ and }), you must specify **sql:datatype="uniqueidentifier"** to remove the braces before the value is inserted into the column. If **sql:datatype** is not specified, the value is sent with the braces and the insert fails.  
  
 For more information about **sql:datatype**, see [Data Type Coercions and the sql:datatype Annotation &#40;SQLXML 4.0&#41;](../../../relational-databases/sqlxml-annotated-xsd-schemas-using/data-type-coercions-and-the-sql-datatype-annotation-sqlxml-4.0.md).  
  
 In XDR:  
  
-   If the **dt:type** is **datetime**, **time**, **dateTime.tz**, or **time.tz**, you must specify both the **dt:type** and **sql:datatype** data types because XML Bulk Load performs data conversion before it sends the data to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   If your XML data is of type **uuid**, **sql:datatype** must be specified; **dt:type="uuid"** is also required, unless the data is string data. If you do not specify **dt:uuid**, XML Bulk Load accepts strings with braces (and removes them if needed).  
  
-   If the XML data is **bin.base64** or **bin.hex**, you must specify the XML data type with **dt:type**. XML Bulk Load then loads the data into [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] as a hexadecimal representation of the data.  
  
  