---
title: "How to: Deploy a Custom Report Item | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "custom report items, deploying"
ms.assetid: 80e97b0d-e355-4240-aebd-08cbc84089ed
caps.latest.revision: 26
ms.author: "carlasab"
manager: "erikre"
---
# How to: Deploy a Custom Report Item
  To deploy a custom report item in [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], you must modify the report server configuration files and copy the design-time and run-time component assemblies into the appropriate application folders for both Report Designer and the report server.  
  
### To deploy a custom report item  
  
1.  Edit the Rsreportdesigner.config file to configure the custom report item run-time and design-time components for use in the designer. Note that the **ReportItemName** entry must match the **CustomReportItemAttribute** attribute used in your **CustomReportItemDesigner** class. For example:  
  
    ```  
    <ReportItems>  
       <ReportItem Name="Polygons" Type="PolygonsCRI.PolygonsCRI,PolygonsCRI"/>  
    </ReportItems>  
    <ReportItemDesigner>  
       <ReportItem Name="Polygons" Type="PolygonsCRI.PolygonsDesigner, PolygonsDesigner" />  
    </ReportItemDesigner>  
    <ReportItemConverter>  
       <Converter Source="Chart" Target="Polygons" Type="PolygonsCRI.PolygonsConverter, PolygonsDesigner" />  
    </ReportItemConverter>  
    ```  
  
2.  Edit the Rsreportserver.config file to register the custom report item run-time component. For example:  
  
    ```  
    <ReportItems>  
       <ReportItem Name="Polygons" Type="PolygonsCRI.PolygonsCRI,PolygonsCRI"/>  
    </ReportItems>  
    ```  
  
3.  Edit the Rsssrvpolicy.config file to add a **CodeGroup** that grants the proper permissions to the custom report item. For example:  
  
    ```  
    <CodeGroup   
       class="UnionCodeGroup"   
       version="1"   
       PermissionSetName="FullTrust"  
       Description="This code group grants MyCustomReportItem.dll FullTrust permission. ">  
       <IMembershipCondition   
          class="UrlMembershipCondition"  
          version="1"  
       Url="C:\Program Files\Microsoft SQL Server\ MSRS10_50.SQLSERVER\Reporting Services\ReportServer\bin\MyCustomReportItem.dll" />  
    </CodeGroup>  
    ```  
  
4.  Copy the custom report item run-time component DLL to the %ProgramFiles%\Microsoft Visual Studio 9.0\Common7\IDE\PrivateAssemblies and \Program Files\Microsoft SQL Server\MSRS10_50.SQLSERVER\Reporting Services\ReportServer\bin directories.  
  
5.  Copy the custom report item design-time component DLL to the %ProgramFiles%\Microsoft Visual Studio 9.0\Common7\IDE\PrivateAssemblies directory.  
  
## See Also  
 [Reporting Services Configuration Files](../../reporting-services/report-server/reporting-services-configuration-files.md)   
 [Custom Report Item Class Libraries](../../reporting-services/custom-report-items/custom-report-item-class-libraries.md)  
  
  