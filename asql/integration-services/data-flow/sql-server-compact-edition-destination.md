---
title: "SQL Server Compact Edition Destination | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.sqlservercompactdest.f1"
helpviewer_keywords: 
  - "destinations [Integration Services], SQL Server Compact"
  - "SQL Server Compact, destination"
  - "inserting data"
ms.assetid: 697742ba-cc14-414d-8187-1845ad0dd99b
caps.latest.revision: 56
ms.author: "douglasl"
manager: "jhubbard"
---
# SQL Server Compact Edition Destination
  The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination writes data to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact databases.  
  
> [!NOTE]  
>  On a 64-bit computer, you must run packages that connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact data sources in 32-bit mode. The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact provider that [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] uses to connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact data sources is available only in a 32-bit version.  
  
 You configure the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination by specifying the name of the table into which the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination inserts the data. The custom property TableName of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination contains the table name.  
  
 This destination uses an [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact connection manager to connect to a data source, and the connection manager specifies the OLE DB provider to use. For more information, see [SQL Server Compact Edition Connection Manager](../../integration-services/connection-manager/sql-server-compact-edition-connection-manager.md).  
  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination includes the TableName custom property, which can be updated by a property expression when the package is loaded. For more information, see [Integration Services &#40;SSIS&#41; Expressions](../../integration-services/expressions/integration-services-ssis-expressions.md), [Use Property Expressions in Packages](../../integration-services/expressions/use-property-expressions-in-packages.md), and [SQL Server Compact Edition Destination Custom Properties](../../integration-services/data-flow/sql-server-compact-edition-destination-custom-properties.md).  
  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination has one input and does not support an error output.  
  
## Configuration of the SQL Server Compact Edition Destination  
 You can set properties through [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer or programmatically.  
  
 The **Advanced Editor** dialog box reflects the properties that can be set programmatically. For more information about the properties that you can set in the **Advanced Editor** dialog box or programmatically, click one of the following topics:  
  
-   [Common Properties](../../a9retired/common-properties.md)  
  
-   [SQL Server Destination Custom Properties](../../integration-services/data-flow/sql-server-destination-custom-properties.md)  
  
## Related Tasks  
 For more information about how to set properties of this component, see [Set the Properties of a Data Flow Component](../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md).  
  
## See Also  
 [Data Flow](../../integration-services/data-flow/data-flow.md)  
  
  