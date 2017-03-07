---
title: "The Role of SOAP in Reporting Services | Microsoft Docs"
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
  - "Web service [Reporting Services], SOAP"
  - "SOAP [Reporting Services], role in Reporting Services"
  - "Report Server Web service, SOAP"
  - "XML Web service [Reporting Services], SOAP"
ms.assetid: f229c3ef-f2ca-448f-98f1-b8df350b9992
caps.latest.revision: 34
ms.author: "carlasab"
manager: "erikre"
---
# The Role of SOAP in Reporting Services
  The Report Server Web service uses Simple Object Access Protocol (SOAP) messaging to send text-based commands over a network. These commands take the form of XML text that is sent over the World Wide Web using HTTP. By using SOAP as its communication protocol, the Report Server Web service allows applications and components to exchange data with the report server using an open and widely accepted infrastructure. The SOAP standard is defined at www.w3.org/TR/SOAP.  
  
 Any client application can act as a SOAP client as long as it is SOAP-aware and can send SOAP requests. Report Manager is one such SOAP client. It provides an interface to the report server database in which all reports and report-related content is stored. End users can use the application to browse through and manage reports and folders in the report server namespace. Report Manager is built on the Report Server Web service infrastructure.  
  
 A report server acts as a SOAP server, a SOAP-aware service that can accept requests from SOAP clients and create appropriate responses. The server handles the requests and sends encoded responses back to the client.  
  
 SOAP messages in [!INCLUDE[ssRSnoversion](../../a9notintoc/includes/ssrsnoversion-md.md)] take many different forms, depending on the type of request made by the client. The following example represents a simple SOAP client request to remove an item from the report server database.  
  
```  
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">  
    <soap:Body>  
        <DeleteItem xmlns="http://www.microsoft.com/sql/ReportingServer">  
            <item>/Samples/Report1</item>  
        </DeleteItem>  
    </soap:Body>  
</soap:Envelope>  
```  
  
 The SOAP itself requires that messages be put into an **Envelope** element, with the bulk of the message inside a **Body** element. In this example, the body contains a call to the <xref:ReportService2010.ReportingService2010.DeleteItem%2A> method, which takes a string parameter representing the path of the item to delete. You can create a [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] client proxy class that encapsulates all SOAP operations into methods. The following [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[csprcs](../../a9retired/includes/csprcs-md.md)] method represents the SOAP example given earlier.  
  
```  
public void DeleteItem(string item);  
```  
  
 The response from the server might look like the following:  
  
```  
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">  
    <soap:Body>  
        <DeleteItemResponse xmlns="http://www.microsoft.com/sql/ReportingServer" />  
    </soap:Body>  
</soap:Envelope>  
```  
  
 The <xref:ReportService2010.ReportingService2010.DeleteItem%2A> method has no return value, so an empty response is returned.  
  
## See Also  
 [Accessing the SOAP API](../../reporting-services/report-server-web-service/accessing-the-soap-api.md)   
 [Report Manager  &#40;SSRS Native Mode&#41;](../../a9retired/report-manager-ssrs-native-mode.md)   
 [Reporting Services Report Server](../../reporting-services/report-server/sharepoint/reporting-services-report-server.md)   
 [Report Server Web Service](../../reporting-services/report-server-web-service/report-server-web-service.md)  
  
  