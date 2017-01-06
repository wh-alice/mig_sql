---
title: "SQLServerParameterMetaData Members | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f9ebb203-2013-4feb-94f5-494b7f098f9a
caps.latest.revision: 11
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# SQLServerParameterMetaData Members
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The following tables list the members that are exposed by the [SQLServerParameterMetaData](../../../connect/jdbc/reference/sqlserverparametermetadata-class.md) class.  
  
## Constructors  
 None.  
  
## Fields  
 None.  
  
## Inherited Fields  
  
|Name|Description|  
|----------|-----------------|  
|java.sql.ParameterMetaData|parameterModeIn, parameterModeInOut, parameterModeOut, parameterModeUnknown, parameterNoNulls, parameterNullable, parameterNullableUnknown|  
  
## Methods  
  
|Name|Description|  
|----------|-----------------|  
|[getParameterClassName](../../../connect/jdbc/reference/getparameterclassname-method--sqlserverparametermetadata-.md)|Retrieves the fully-qualified name of the Java class whose instances should be passed to the [setObject](../../../connect/jdbc/reference/setobject-method--sqlserverpreparedstatement-.md) method of the [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) class.|  
|[getParameterCount](../../../connect/jdbc/reference/getparametercount-method--sqlserverparametermetadata-.md)|Retrieves the number of parameters in the [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object for which this [SQLServerParameterMetaData](../../../connect/jdbc/reference/sqlserverparametermetadata-class.md) object contains information.|  
|[getParameterMode](../../../connect/jdbc/reference/getparametermode-method--sqlserverparametermetadata-.md)|Retrieves the mode of the designated parameter.|  
|[getParameterType](../../../connect/jdbc/reference/getparametertype-method--sqlserverparametermetadata-.md)|Retrieves the SQL type of the designated parameter.|  
|[getParameterTypeName](../../../connect/jdbc/reference/getparametertypename-method--sqlserverparametermetadata-.md)|Retrieves the database-specific type name of the designated parameter.|  
|[getPrecision](../../../connect/jdbc/reference/getprecision-method--sqlserverparametermetadata-.md)|Retrieves the number of decimal digits for the designated parameter.|  
|[getScale](../../../connect/jdbc/reference/getscale-method--sqlserverparametermetadata-.md)|Retrieves the number of digits to the right of the decimal point for the designated parameter.|  
|[isNullable](../../../connect/jdbc/reference/isnullable-method--sqlserverparametermetadata-.md)|Retrieves whether null values are allowed in the designated parameter.|  
|[isSigned](../../../connect/jdbc/reference/issigned-method--sqlserverparametermetadata-.md)|Retrieves whether values for the designated parameter can be signed numbers.|  
  
## Inherited Methods  
  
|Class inherited from:|Methods|  
|---------------------------|-------------|  
|java.lang.Object|clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait|  
|java.sql.Wrapper|isWrapperFor, unwrap|  
  
## See Also  
 [SQLServerParameterMetaData Class](../../../connect/jdbc/reference/sqlserverparametermetadata-class.md)  
  
  