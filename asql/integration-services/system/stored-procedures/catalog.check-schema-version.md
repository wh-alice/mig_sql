---
title: "catalog.check_schema_version | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: e0d5e9f5-59c6-4118-87b5-4aa5c37a7df6
caps.latest.revision: 5
ms.author: "douglasl"
manager: "jhubbard"
---
# catalog.check_schema_version
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Determines whether the SSISDB catalog schema and the [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] binaries (ISServerExec and SQLCLR assembly) are compatible.  
  
 The ISServerExec.exc logs an error message when the schema and the binaries are incompatible.  
  
 The SSISDB schema version is incremented when the schema changes during the application of patches and during upgrades. It is recommended that you run this stored procedure after an SSISDB backup has been restored to ensure that the schema and binaries are compatible.  
  
## Syntax  
  
```vb  
Check_schema_version [@use32bitruntime = ] use32bitruntime  
```  
  
## Arguments  
 [ @use32bitruntime= ] *use32bitruntime*  
 When the parameter is set to **True**, the 32-bit version of dtexec is called. The *use32bitruntime* is a **Bool**.  
  
## Result Set  
 None  
  
## Permissions  
 This stored procedure requires the following permission:  
  
-   Membership to the **ssis_admin** database role.  
  
  