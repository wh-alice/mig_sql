---
title: "upper-case  Function (XQuery) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
dev_langs: 
  - "XML"
helpviewer_keywords: 
  - "upper-case"
  - "upper-case Function (XQuery)"
ms.assetid: 5bd01ad2-7adf-48fb-bf42-41e200419d37
caps.latest.revision: 12
ms.author: "jhubbard"
manager: "jhubbard"
---
# Functions on String Values - upper-case
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  This function converts each character in *$arg* to its upper case equivalent. The Microsoft Windows binary case conversion for Unicode code points specifies how characters are converted to upper case. This standard is different than the mapping for Unicode standard code point standard.  
  
## Syntax  
  
```  
  
fn:upper-case($arg as xs:string?) as xs:string  
```  
  
## Arguments  
  
|||  
|-|-|  
|Term|Definition|  
|*$arg*|The string value to be converted to upper case.|  
  
## Remarks  
 If the value of *$arg* is empty, a zero length string is returned.  
  
## Examples  
  
### A. Changing a string to upper case  
 The following example changes the input string 'abcDEF!@4' to upper case.  
  
```  
DECLARE @x xml = N'abcDEF!@4';  
SELECT @x.value('fn:upper-case(/text()[1])', 'nvarchar(10)');  
```  
  
### B. Search for a Specific Character String  
 This example shows how to use the upper-case function to perform a case-insensitive search.  
  
```  
USE AdventureWorks  
GO  
--WITH XMLNAMESPACES clause specifies the namespace prefix  
--to use.   
WITH XMLNAMESPACES ('http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription' AS pd)  
--The XQuery contains() function is used to determine whether  
--any of the text nodes below the <Summary> element contain  
--the word 'frame'. The upper-case() function is used to make  
--the search case-insensitive.  
  
SELECT ProductModelID, CatalogDescription.query('  
      <Prod>  
         { /pd:ProductDescription/@ProductModelID }  
         { /pd:ProductDescription/pd:Summary }  
      </Prod>  
 ') as Result  
FROM Production.ProductModel  
where CatalogDescription.exist('  
/pd:ProductDescription/pd:Summary//text()[  
          contains(upper-case(.), "FRAME")]')  = 1  
```  
  
 [!INCLUDE[ssResult](../relational-databases/includes/ssresult-md.md)]  
  
 `ProductModelID Result`  
  
 `-------------- ---------`  
  
 `19     <Prod ProductModelID="19">`  
  
 `<pd:Summary xmlns:pd="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription">`  
  
 `<p1:p xmlns:p1="http://www.w3.org/1999/xhtml">Our top-of-the-line competition mountain bike.`  
  
 `Performance-enhancing options include the innovative HL Frame,`  
  
 `super-smooth front suspension, and traction for all terrain.`  
  
 `</p1:p>`  
  
 `</pd:Summary>`  
  
 `</Prod>`  
  
 `25     <Prod ProductModelID="25">`  
  
 `<pd:Summary xmlns:pd="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription">`  
  
 `<p1:p xmlns:p1="http://www.w3.org/1999/xhtml">This bike is ridden by race winners. Developed with the`  
  
 `Adventure Works Cycles professional race team, it has a extremely light`  
  
 `heat-treated aluminum frame, and steering that allows precision control.`  
  
 `</p1:p>`  
  
 `</pd:Summary>`  
  
 `</Prod>`  
  
## See Also  
 [XQuery Functions against the xml Data Type](../xquery/xquery-functions-against-the-xml-data-type.md)  
  
  