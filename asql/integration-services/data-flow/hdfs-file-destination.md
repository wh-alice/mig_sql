---
title: "HDFS File Destination | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.ssis.designer.hdfsfiledest.f1"
ms.assetid: 4338ce9f-c077-4301-aca5-47ed070ec94d
caps.latest.revision: 8
ms.author: "douglasl"
manager: "jhubbard"
---
# HDFS File Destination
  The HDFS File Destination component enables an SSIS package to write data to a HDFS file. The supported file formats are Text, Avro, and ORC.  
  
 To configure the HDFS File Destination, drag and drop the HDFS File Source on the data flow designer and double-click the component to open the editor.  
  
 ![HDFS File Destination Editor](../../integration-services/data-flow/media/hdfs-file-dest.png "HDFS File Destination Editor")  
  
## Options  
 Configure the following options on the **General** tab of the **Hadoop File Destination Editor** dialog box.  
  
|Field|Description|  
|-----------|-----------------|  
|**Hadoop Connection**|Specify an existing Hadoop Connection Manager or create a new one. This connection manager indicates  where the HDFS files are hosted.|  
|**File Path**|Specify the name of the HDFS file.|  
|**File format**|Specify the format for the HDFS file. The available options are Text, Avro, and ORC.|  
|**Column delimiter character**|If you select Text format, specify the column delimiter character.|  
|**Column  names in the first data row**|If you select Text format, specify whether the first row in the file contains column names.|  
  
 After you configure these options, select the **Columns** tab to map source columns to destination columns in the data flow.  
  
## See Also  
 [Hadoop Connection Manager](../../integration-services/connection-manager/hadoop-connection-manager.md)   
 [HDFS File Source](../../integration-services/data-flow/hdfs-file-source.md)  
  
  