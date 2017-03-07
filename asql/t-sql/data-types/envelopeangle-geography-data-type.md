---
title: "EnvelopeAngle (geography Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "EnvelopeAngle"
  - "EnvelopeAngle_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "EnvelopeAngle method"
ms.assetid: 14a7ba15-168c-4b08-ba3d-951d73092ac7
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# EnvelopeAngle (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the maximum angle between the point returned by `EnvelopeCenter()` and a point in the **geography** instance in degrees.  
  
 This **geography** data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
## Syntax  
  
```  
  
EnvelopeAngle( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **float**  
  
 CLR return type: **SqlDouble**  
  
## Remarks  
 This method returns a point in the **geography** instance in degrees. When used with EnvelopeCenter(), `EnvelopeAngle()` returns a bounding circle of a **geography** instance.  
  
 In [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], this method has been extended to **FullGlobe** instances.  
  
 The hemisphere limitation applied to `EnvelopeAngle()` in [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] has been removed. However, for instances with angles greater than 90 degrees, 180 degrees will be returned. `EnvelopeAngle()` is not precise for **geography** instances that span more than one hemisphere.  
  
## Examples  
  
```  
DECLARE @g geography = 'LINESTRING(-120 45, -120 0, -90 0)';   
SELECT @g.EnvelopeAngle();  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../t-sql/data-types/extended-methods-on-geography-instances.md)   
 [EnvelopeCenter &#40;geography Data Type &#41;](../../t-sql/data-types/envelopecenter-geography-data-type.md)  
  
  