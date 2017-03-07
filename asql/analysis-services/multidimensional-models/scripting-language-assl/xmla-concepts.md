---
title: "XMLA Concepts | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "XMLA, concepts"
ms.assetid: 816183a7-d2f7-4e14-8e5b-2a4c1798fbc1
caps.latest.revision: 10
ms.author: "owend"
manager: "erikre"
---
# XMLA Concepts
  The XML for Analysis (XMLA) open standard supports data access to data sources that reside on the World Wide Web. [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] implements XMLA per the XMLA 1.1 specification.  
  
 XML for Analysis (XMLA) is a Simple Object Access Protocol (SOAP)-based XML protocol, designed specifically for universal data access to any standard multidimensional data source residing on the Web. XMLA also eliminates the need to deploy a client component that exposes Component Object Model (COM) or [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] .NET Framework interfaces. XMLA is optimized for the Internet, when round trips to the server are expensive in terms of time and resources, and when stateful connections to a data source can limit user connections on the server.  
  
 XMLA is the native protocol for [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)], used for all interaction between a client application and an instance of [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)]. [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] fully supports XML for Analysis 1.1, and also provides extensions to support metadata management, session management, and locking capabilities. Both Analysis Management Objects (AMO) and ADOMD.NET use the XMLA protocol when communicating with an instance of [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)].  
  
## Handling XMLA Communications  
 The XMLA open standard describes two generally accessible methods: **Discover** and **Execute**. These methods use the loosely-coupled client and server architecture supported by XML to handle incoming and outgoing information on an instance of [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)].  
  
 The **Discover** method obtains information and metadata from a Web service. This information can include a list of available data sources, as well as information about any of the data source providers. Properties define and shape the data that is obtained from a data source. The **Discover** method is a common method for defining the many types of information a client application may require from data sources on [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)] instances. The properties and the generic interface provide extensibility without requiring you to rewrite existing functions in a client application.  
  
 The **Execute** method allows applications to run provider-specific commands against XMLA data sources.  
  
 Although the XMLA protocol is optimized for Web applications, it can also be leveraged for LAN-oriented applications. The following applications can benefit from this XML-based API:  
  
-   Client/server applications that require flexible technology between clients and the server  
  
-   Client/server applications that target multiple operating systems  
  
-   Clients that do not require significant state in order to increase server capacity  
  
## XMLA and the Unified Dimensional Model  
 XMLA is the protocol used by business intelligence applications that employ the Unified Dimensional Model (UDM) methodology  
  
  