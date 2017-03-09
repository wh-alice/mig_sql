---
title: "Handling Exceptions in Reporting Services | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "SOAP [Reporting Services], exceptions"
  - ".NET Framework [Reporting Services]"
  - "exceptions [Reporting Services], about exception handling"
  - "SoapException object"
ms.assetid: 1a443432-2db5-48c5-bc29-433b4688082f
caps.latest.revision: 31
ms.author: "carlasab"
manager: "erikre"
---
# Handling Exceptions in Reporting Services
  When a Reporting Services SOAP API client request cannot be completed, the report server returns an error rather than the expected results of the call. When a call cannot complete, an error for the Report Server Web service is returned as a SOAP **Fault** XML element. The key descriptive element of the fault is the **detail** element, which includes all of the error information provided by the report server as well as any additional Web service error information. The key information in the **detail** element is the report server error code. Based on the message and error code, you can determine the next appropriate action to take in your applications. For more information about SOAP faults, see the World Wide Web Consortium (W3C) Web site at http://www.w3.org/TR/SOAP.  
  
## SOAP Faults and the .NET Framework  
 In the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)], if an error occurs in a client request to the Web service, the report server communicates the error to the client code that calls the Web service by throwing a **SoapException** object. The **SoapException** wraps the information contained in a SOAP fault. The **Detail** property of the **SoapException** maps to the **detail** element in the SOAP fault. Applications should catch the **SoapException** object with a try/catch block and use the **Detail** property of the **SoapException** to take appropriate action. For more information about the **SoapException** class and the **Detail** property in [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], see [Reporting Services SoapException Class](../../reporting-services/report-server-web-service-net-framework-exception-handling/soapexception-class/reporting-services-soapexception-class.md). For more information about the **SoapException** class, see the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK documentation.  
  
## See Also  
 [Detail Property](../../reporting-services/report-server-web-service-net-framework-exception-handling/soapexception-class/detail-property.md)   
 [Introducing Exception Handling in Reporting Services](../../reporting-services/report-server-web-service-net-framework-exception-handling/introducing-exception-handling-in-reporting-services.md)   
 [Reporting Services SoapException Class](../../reporting-services/report-server-web-service-net-framework-exception-handling/soapexception-class/reporting-services-soapexception-class.md)  
  
  