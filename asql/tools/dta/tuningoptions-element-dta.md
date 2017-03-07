---
title: "TuningOptions Element (DTA) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "XML"
helpviewer_keywords: 
  - "TuningOptions element"
ms.assetid: 58a22ba1-8e03-411f-bd46-85e4540f217a
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# TuningOptions Element (DTA)
  Contains the tuning options for a specific tuning session.  
  
## Syntax  
  
```  
  
<DTAInput>  
    <Server>  
...code removed...  
    <Workload>...</Workload>  
    <TuningOptions>...</TuningOptions>  
```  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|**Data type and length**|None.|  
|**Default value**|None.|  
|**Occurrence**|Optional. If used, can only be used once for each **DTAInput** element.|  
  
## Element Relationships  
  
|Relationship|Elements|  
|------------------|--------------|  
|**Parent element**|[DTAInput Element &#40;DTA&#41;](../../tools/dta/dtainput-element-dta.md)|  
|**Child elements**|**ReportSet** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).<br /><br /> **TuningLogTable** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).<br /><br /> **NumberOfEvents** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).<br /><br /> [TuningTimeInMin Element &#40;DTA&#41;](../../tools/dta/tuningtimeinmin-element-dta.md)<br /><br /> [StorageBoundInMB Element &#40;DTA&#41;](../../tools/dta/storageboundinmb-element-dta.md)<br /><br /> **MaxKeyColumnsInIndex** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).<br /><br /> **MaxColumnsInIndex** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).<br /><br /> **MinPercentageImprovement** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100)<br /><br /> [TestServer Element &#40;DTA&#41;](../../tools/dta/testserver-element-dta.md)<br /><br /> [FeatureSet Element &#40;DTA&#41;](../../tools/dta/featureset-element-dta.md)<br /><br /> [Partitioning Element &#40;DTA&#41;](../../tools/dta/partitioning-element-dta.md)<br /><br /> [DropOnlyMode Element &#40;DTA&#41;](../../tools/dta/droponlymode-element-dta.md)<br /><br /> [KeepExisting Element &#40;DTA&#41;](../../tools/dta/keepexisting-element-dta.md)<br /><br /> [OnlineIndexOperation Element &#40;DTA&#41;](../../tools/dta/onlineindexoperation-element-dta.md)<br /><br /> [DatabaseToConnect Element &#40;DTA&#41;](../../tools/dta/databasetoconnect-element-dta.md)<br /><br /> **IgnoreConstantsInWorkload** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).<br /><br /> **RetainShellDB** element. For more information, see the [Database Engine Tuning Advisor XML schema](http://go.microsoft.com/fwlink/?linkid=43100).|  
  
## Example  
 For examples of the **TuningOptions** element, see the [XML Input File Samples &#40;DTA&#41;](../../tools/dta/xml-input-file-samples-dta.md).  
  
## See Also  
 [XML Input File Reference &#40;Database Engine Tuning Advisor&#41;](../../tools/dta/xml-input-file-reference-database-engine-tuning-advisor.md)  
  
  