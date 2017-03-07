---
title: "SqlXmlAdapter Object (SQLXML Managed Classes) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "void Update(DataSet ds) method"
  - "SqlXmlAdapter object"
  - "void Fill(DataSet ds) method"
  - "SQLXML Managed Classes, SqlXmlAdapter object"
  - "Managed Classes [SQLXML], SqlXmlAdapter object"
ms.assetid: 0a16eddf-fc26-4d92-82d4-359b5fb905d5
caps.latest.revision: 22
ms.author: "douglasl"
manager: "jhubbard"
---
# SQLXML Managed Classes - SqlXmlAdapter Object
  This object provides methods that facilitate interaction with the dataset in the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] .NET Framework. For a working sample, see [Accessing SQLXML Functionality in the .NET Environment](../../../relational-databases/sqlxml-annotated-xsd-schemas-xpath-queries/net-framework-classes/accessing-sqlxml-functionality-in-the-.net-environment.md).  
  
 The SqlXmlAdapter object supports these methods:  
  
 void Fill(DataSet ds)  
 Fills the dataset in the .NET Framework with the XML data retrieved from [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 void Update(DataSet ds)  
 Applies updates to records in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from the data in the dataset.  
  
 The SqlXmlAdapter object supports these constructors:  
  
```  
public SqlXmlAdapter(SqlXmlCommand  cmd)   
  
public SqlXmlAdapter(  
                     string commandText,   
                     SqlXmlCommandType cmdType,   
                     string connectionString  
                      )   
  
public SqlXmlAdapter(  
                     Stream commandStream,   
                     SqlXmlCommandType cmdType,   
                     string connectionString  
                     )   
```  
  
## See Also  
 [SqlXmlCommand Object &#40;SQLXML Managed Classes&#41;](../Topic/SqlXmlCommand%20Object%20\(SQLXML%20Managed%20Classes\).md)   
 [SqlXmlParameter Object &#40;SQLXML Managed Classes&#41;](../Topic/SqlXmlParameter%20Object%20\(SQLXML%20Managed%20Classes\).md)  
  
  