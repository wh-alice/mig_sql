---
title: "ASSEMBLYPROPERTY (Transact-SQL) | Microsoft Docs"
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
  - "ASSEMBLYPROPERTY_TSQL"
  - "ASSEMBLYPROPERTY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ASSEMBLYPROPERTY statement"
  - "assemblies [CLR integration], properties"
ms.assetid: cf03d1b1-724c-48bf-a8df-3fe2586b150a
caps.latest.revision: 40
ms.author: "jhubbard"
manager: "jhubbard"
---
# ASSEMBLYPROPERTY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about a property of an assembly.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
ASSEMBLYPROPERTY('assembly_name', 'property_name')  
```  
  
## Arguments  
 *assembly_name*  
 Is the name of the assembly.  
  
 *property_name*  
 Is the name of a property about which to retrieve information. *property_name* can be one of the following values.  
  
|Value|Description|  
|-----------|-----------------|  
|**CultureInfo**|Locale of the assembly.|  
|**PublicKey**|Public key or public key token of the assembly.|  
|**MvID**|Complete, compiler-generated version identification number of the assembly.|  
|**VersionMajor**|Major component (first part) of the four-part version identification number of the assembly.|  
|**VersionMinor**|Minor component (second part) of the four-part version identification number of the assembly.|  
|**VersionBuild**|Build component (third part) of the four-part version identification number of the assembly.|  
|**VersionRevision**|Revision component (fourth part) of the four-part version identification number of the assembly.|  
|**SimpleName**|Simple name of the assembly.|  
|**Architecture**|Processor architecture of the assembly.|  
|**CLRName**|Canonical string that encodes the simple name, version number, culture, public key, and architecture of the assembly. This value uniquely identifies the assembly on the common language runtime (CLR) side.|  
  
## Return Type  
 **sql_variant**  
  
## Examples  
 The following example assumes a `HelloWorld` assembly is registered in the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database. For more information, see [Hello World Sample](../Topic/Hello%20World%20Sample.md).  
  
```  
USE AdventureWorks2012;  
GO  
SELECT ASSEMBLYPROPERTY ('HelloWorld' , 'PublicKey');  
```  
  
## See Also  
 [CREATE ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/create-assembly-transact-sql.md)   
 [DROP ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-assembly-transact-sql.md)  
  
  