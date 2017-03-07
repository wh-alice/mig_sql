---
title: "IsDescendantOf (Database Engine) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IsDescendant_TSQL"
  - "IsDescendant"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IsDescendantOf [Database Engine]"
ms.assetid: edc80444-b697-410f-9419-0f63c9b5618d
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# IsDescendantOf (Database Engine)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns true if *this* is a descendant of parent.  
  
## Syntax  
  
```  
  
-- Transact-SQL syntax  
child. IsDescendantOf ( parent )  
```  
  
```  
  
-- CLR syntax  
SqlHierarchyId IsDescendantOf (SqlHierarchyId parent )  
```  
  
## Arguments  
 *parent*  
 The **hierarchyid** node for which the IsDescendantOf test should be performed.  
  
## Return Types  
 **SQL Server return type:bit**  
  
 **CLR return type:SqlBoolean**  
  
## Remarks  
 Returns true for all the nodes in the sub-tree rooted at parent, and false for all other nodes.  
  
 Parent is considered its own descendant.  
  
## Examples  
  
### A. Using IsDescendantOf in a WHERE clause  
 The following example returns a manager and the employees that report to the manager:  
  
```  
DECLARE @Manager hierarchyid  
SELECT @Manager = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\dylan0'  
  
SELECT * FROM HumanResources.EmployeeDemo  
WHERE OrgNode.IsDescendantOf(@Manager) = 1  
  
```  
  
### B. Using IsDescendantOf to evaluate a relationship  
 The following code declares and populates three variables. It then evaluates the hierarchical relationship and returns one of two printed results based on the comparison:  
  
```  
DECLARE @Manager hierarchyid, @Employee hierarchyid, @LoginID nvarchar(256)  
SELECT @Manager = OrgNode FROM HumanResources.EmployeeDemo  
WHERE LoginID = 'adventure-works\terri0' ;  
  
SELECT @Employee = OrgNode, @LoginID = LoginID FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\rob0'  
  
IF @Employee.IsDescendantOf(@Manager) = 1  
   BEGIN  
    PRINT 'LoginID ' + @LoginID + ' is a subordinate of the selected Manager.'  
   END  
ELSE  
   BEGIN  
    PRINT 'LoginID ' + @LoginID + ' is not a subordinate of the selected Manager.' ;  
   END  
```  
  
### C. Calling a common language runtime method  
 The following code snippet calls the `IsDescendantOf()` method.  
  
```  
this.IsDescendantOf(Parent)  
```  
  
## See Also  
 [hierarchyid Data Type Method Reference](../../a9retired/hierarchyid-data-type-method-reference.md)   
 [Hierarchical Data &#40;SQL Server&#41;](../../relational-databases/hierarchical-data-sql-server.md)   
 [hierarchyid &#40;Transact-SQL&#41;](../../t-sql/data-types/hierarchyid-data-type-method-reference.md)  
  
  