---
title: "Basic Syntax of the FOR XML Clause | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "BINARY BASE64 directive"
  - "ROOT directive"
  - "FOR XML clause, BINARY BASE64 directive"
  - "FOR XML clause, syntax"
  - "FOR XML clause, ROOT directive"
ms.assetid: df19ecbf-d28e-4e9c-aaa3-700f8bbd3be4
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# Basic Syntax of the FOR XML Clause
  The FOR XML mode can be RAW, AUTO, EXPLICIT, or PATH. It determines the shape of the resulting XML.  
  
> [!IMPORTANT]  
>  The XMLDATA directive to the FOR XML option is deprecated. Use XSD generation in the case of RAW and AUTO modes. There is no replacement for the XMLDATA directive in EXPLICT mode. [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
 Following is the basic syntax that is described in [FOR Clause (Transact-SQL)](../Topic/FOR%20Clause%20\(Transact-SQL\).md):  
  
```  
[ FOR { BROWSE | <XML> } ]  
<XML> ::=  
XML   
    {   
      { RAW [ ('ElementName') ] | AUTO }   
        [   
           <CommonDirectives>   
           [ , { XMLDATA | XMLSCHEMA [ ('TargetNameSpaceURI') ]} ]   
           [ , ELEMENTS [ XSINIL | ABSENT ]   
        ]  
      | EXPLICIT   
        [   
           <CommonDirectives>   
           [ , XMLDATA ]   
        ]  
      | PATH [ ('ElementName') ]   
        [   
           <CommonDirectives>   
           [ , ELEMENTS [ XSINIL | ABSENT ] ]  
        ]  
     }   
  
 <CommonDirectives> ::=   
   [ , BINARY BASE64 ]  
   [ , TYPE ]  
   [ , ROOT [ ('RootName') ] ]  
```  
  
## Arguments  
 RAW[('*ElementName*')]  
 Takes the query result and transforms each row in the result set into an XML element that has a generic identifier, \<row />, as the element tag. You can optionally specify a name for the row element when you use this directive. The resulting XML will use the specified *ElementName* as the row element generated for each row. For more information, see [Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md).  
  
 AUTO  
 Returns query results in a simple, nested XML tree. Each table in the FROM clause for which at least one column is listed in the SELECT clause is represented as an XML element. The columns listed in the SELECT clause are mapped to the appropriate element attributes. For more information, see [Use AUTO Mode with FOR XML](../../relational-databases/xml/use-auto-mode-with-for-xml.md).  
  
 EXPLICIT  
 Specifies that the shape of the resulting XML tree is defined explicitly. By using this mode, queries must be written in a particular way so additional information about the nesting you want is specified explicitly. For more information, see [Use EXPLICIT Mode with FOR XML](../../relational-databases/xml/use-explicit-mode-with-for-xml.md).  
  
 PATH  
 Provides a simpler way to mix elements and attributes, and to introduce additional nesting for representing complex properties. You can use FOR XML EXPLICIT mode queries to construct this kind of XML from a rowset, but the PATH mode provides a simpler alternative to the possibly cumbersome EXPLICIT mode queries. PATH mode, together with the ability to write nested FOR XML queries and the TYPE directive to return **xml** type instances, allows you to write queries with less complexity. It provides an alternative to writing most EXPLICIT mode queries. By default, PATH mode generates a \<row> element wrapper for each row in the result set. You can optionally specify an element name. If you do, the specified name is used as the wrapper element name. If you provide an empty string (FOR XML PATH ('')), no wrapper element is generated. For more information, see [Use PATH Mode with FOR XML](../../relational-databases/xml/use-path-mode-with-for-xml.md).  
  
 XMLDATA  
 Specifies that an inline XML-Data Reduced (XDR) schema should be returned. The schema is prepended to the document as an inline schema. For a working sample, see [Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md).  
  
 XMLSCHEMA  
 Returns an inline W3C XML Schema (XSD). You can optionally specify a target namespace URI when specifying this directive. This returns the specified namespace in the schema. For more information, see [Generate an Inline XSD Schema](../../relational-databases/xml/generate-an-inline-xsd-schema.md). For a working sample, see [Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md).  
  
 ELEMENTS  
 If the ELEMENTS option is specified, the columns are returned as subelements. Otherwise, they are mapped to XML attributes. This option is supported in RAW, AUTO, and PATH modes only. You can optionally specify XSINIL or ABSENT when you use this directive. XSINIL specifies that an element that has an **xsi:nil** attribute set to True be created for NULL column values. By default or when ABSENT is specified together with ELEMENTS, no elements are created for NULL values. For a working sample, see [Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md) and [Use AUTO Mode with FOR XML](../../relational-databases/xml/use-auto-mode-with-for-xml.md).  
  
 BINARY BASE64  
 If the BINARY Base64 option is specified, any binary data returned by the query is represented in base64-encoded format. To retrieve binary data by using RAW and EXPLICIT mode, this option must be specified. In AUTO mode, binary data is returned as a reference by default. For a working sample, see [Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md).  
  
 TYPE  
 Specifies that the query returns the results as the **xml** type. For more information, see [TYPE Directive in FOR XML Queries](../../relational-databases/xml/type-directive-in-for-xml-queries.md).  
  
 ROOT [('*RootName*')]  
 Specifies that a single, top-level element be added to the resulting XML. You can optionally specify the root element name to generate. The default value is "root".  
  
## See Also  
 [Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md)   
 [Use AUTO Mode with FOR XML](../../relational-databases/xml/use-auto-mode-with-for-xml.md)   
 [Use EXPLICIT Mode with FOR XML](../../relational-databases/xml/use-explicit-mode-with-for-xml.md)   
 [Use PATH Mode with FOR XML](../../relational-databases/xml/use-path-mode-with-for-xml.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [FOR XML &#40;SQL Server&#41;](../../relational-databases/xml/for-xml-sql-server.md)  
  
  