---
title: "Mixed Type and Simple Content | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "mixed types [SQL Server]"
ms.assetid: 6ea1f11d-e64b-4ebb-ab68-4eb6e4027665
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# Mixed Type and Simple Content
  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not support restricting a mixed type to a simple content.  
  
## Example  
 In the following XML schema collection, `myComplexTypeA` is a complex type that can be emptied. That is, both its elements have `minOccurs` set to 0. The attempt to restrict this to a simple content, as in the `myComplexTypeB` declaration, is not supported. Therefore, the following XML schema collection creation fails:  
  
```  
CREATE XML SCHEMA COLLECTION SC AS '  
<schema xmlns="http://www.w3.org/2001/XMLSchema" targetNamespace="http://ns" xmlns:ns="http://ns"  
xmlns:ns1="http://ns1">  
  
    <complexType name="myComplexTypeA" mixed="true">  
        <sequence>  
            <element name="a" type="string" minOccurs="0"/>  
            <element name="b" type="string" minOccurs="0" maxOccurs="23"/>  
        </sequence>  
    </complexType>  
  
    <complexType name="myComplexTypeB">  
        <simpleContent>  
            <restriction base="ns:myComplexTypeA">  
                <simpleType>  
                    <restriction base="int">  
                        <minExclusive value="25"/>  
                    </restriction>  
                </simpleType>  
            </restriction>  
        </simpleContent>  
    </complexType>  
</schema>  
'  
GO  
```  
  
## See Also  
 [Requirements and Limitations for XML Schema Collections on the Server](../../relational-databases/xml/requirements-and-limitations-for-xml-schema-collections-on-the-server.md)  
  
  