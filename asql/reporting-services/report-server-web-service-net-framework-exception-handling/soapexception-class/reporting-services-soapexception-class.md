---
title: "Reporting Services SoapException Class | Microsoft Docs"
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
  - "exceptions [Reporting Services], SoapException class"
  - "SoapException class"
ms.assetid: 2cec49ee-20b1-40eb-a75b-0908d9c05b34
caps.latest.revision: 33
ms.author: "carlasab"
manager: "erikre"
---
# Reporting Services SoapException Class
  You should address specific [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] errors that you know might happen. For example, in an application where you ask the user to create a folder, it might be possible for the user to try to create a folder that already exists. As the developer, you do not have control over what the user enters in the folder name and path fields of your application, but you do have control over what the user experience is when someone incidentally tries to create an item that already exists.  
  
 To make it easier for you to catch specific error conditions, [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] classifies an error code for the exception and returns the classification of the error using properties from the **SoapException** class. For more information, see "SoapException Class" in the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../../a9retired/includes/dnprdnshort-md.md)] SDK documentation.  
  
 The following table lists the public properties of the **SoapException** class.  
  
|Public property|Description|  
|---------------------|-----------------|  
|**Actor**|The code that caused the exception. The value is the URL to the Web service method.|  
|**Detail**|Application-specific error information. The value is set by the report server and is in XML format. For more information, see [Detail Property](../../../reporting-services/report-server-web-service-net-framework-exception-handling/soapexception-class/detail-property.md) and [Using the Detail Property to Handle Specific Errors](../../../reporting-services/report-server-web-service-net-framework-exception-handling/best-practices/using-the-detail-property-to-handle-specific-errors.md).|  
|**HelpLink**|A URL or URN to a Help file associated with the error. The value is usually set by the Web service and it sets a URL to [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Help and Support. Because [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] supports multiple help links for errors that occur, the report server sets help link information as part of the **Detail** property. For more information, see [HelpLink Element](../../../reporting-services/report-server-web-service-net-framework-exception-handling/soapexception-class/helplink-element.md).|  
|**Message**|A descriptive, localized message that describes the error. This text might appear in the application UI.|  
  
## See Also  
 [Introducing Exception Handling in Reporting Services](../../../reporting-services/report-server-web-service-net-framework-exception-handling/introducing-exception-handling-in-reporting-services.md)   
 [SoapException Errors Table](../../../reporting-services/report-server-web-service-net-framework-exception-handling/soapexception-class/soapexception-errors-table.md)  
  
  