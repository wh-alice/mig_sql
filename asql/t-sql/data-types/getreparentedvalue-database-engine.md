---
title: "GetReparentedValue (Database Engine) | Microsoft Docs"
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
  - "Reparent_TSQL"
  - "Reparent"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Reparent [Database Engine]"
ms.assetid: f47f8e25-08ef-498b-84f4-a317aca1f358
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# GetReparentedValue (Database Engine)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a node whose path from the root is the path to *newRoot*, followed by the path from *oldRoot* to *this*.  
  
## Syntax  
  
```  
  
-- Transact-SQL syntax  
node. GetReparentedValue ( oldRoot, newRoot )  
```  
  
```  
  
-- CLR syntax  
SqlHierarchyId GetReparentedValue ( SqlHierarchyId oldRoot , SqlHierarchyId newRoot )  
```  
  
## Arguments  
 *oldRoot*  
 A **hierarchyid** that is the node that represents the level of the hierarchy that is to be modified.  
  
 *newRoot*  
 A **hierarchyid** that represents the node that will replace the *oldRoot* section of the current node in order to move the node.  
  
## Return Types  
 **SQL Server return type:hierarchyid**  
  
 **CLR return type:SqlHierarchyId**  
  
## Remarks  
 Can be used to modify the tree by moving nodes from *oldRoot* to *newRoot*. GetReparentedValue can be used to move a node of a hierarchy to a new location in the hierarchy. The **hierarchyid** data type represents but does not enforce the hierarchical structure. Users must ensure that the hierarchyid is appropriately structured for the new location. A unique index on the **hierarchyid** data type can help prevent duplicate entries. For an example of moving an entire subtree, see [Hierarchical Data &#40;SQL Server&#41;](../../relational-databases/hierarchical-data-sql-server.md).  
  
## Examples  
  
### A. Comparing two node locations  
 The following example shows the current hierarchyid of a node. It also shows what the **hierarchyid** of the node would be if the node were moved to become a descendant of the **@NewParent** node. It uses the `ToString()` method to show the hierarchical relationships.  
  
```  
DECLARE @SubjectEmployee hierarchyid , @OldParent hierarchyid, @NewParent hierarchyid  
SELECT @SubjectEmployee = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\gail0' ;  
SELECT @OldParent = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\roberto0' ; -- who is /1/1/  
SELECT @NewParent = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\wanida0' ; -- who is /2/3/  
  
SELECT OrgNode.ToString() AS Current_OrgNode_AS_Text,   
(@SubjectEmployee. GetReparentedValue(@OldParent, @NewParent) ).ToString() AS Proposed_OrgNode_AS_Text,  
OrgNode AS Current_OrgNode,  
@SubjectEmployee. GetReparentedValue(@OldParent, @NewParent) AS Proposed_OrgNode,  
*  
FROM HumanResources.EmployeeDemo  
WHERE OrgNode = @SubjectEmployee ;  
GO  
  
```  
  
### B. Updating a node to a new location  
 The following example uses `GetReparentedValue()` in an UPDATE statement to move a node from an old location to a new location in the hierarchy:  
  
```  
DECLARE @SubjectEmployee hierarchyid , @OldParent hierarchyid, @NewParent hierarchyid  
SELECT @SubjectEmployee = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\gail0' ; -- Node /1/1/2/  
SELECT @OldParent = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\roberto0' ; -- Node /1/1/  
SELECT @NewParent = OrgNode FROM HumanResources.EmployeeDemo  
  WHERE LoginID = 'adventure-works\wanida0' ; -- Node /2/3/  
  
UPDATE HumanResources.EmployeeDemo  
SET OrgNode = @SubjectEmployee. GetReparentedValue(@OldParent, @NewParent)   
WHERE OrgNode = @SubjectEmployee ;  
  
SELECT OrgNode.ToString() AS Current_OrgNode_AS_Text,   
*  
FROM HumanResources.EmployeeDemo  
WHERE LoginID = 'adventure-works\gail0' ; -- Now node /2/3/2/  
  
```  
  
### C. CLR example  
 The following code snippet calls the GetReparentedValue () method:  
  
```  
this. GetReparentedValue(oldParent, newParent)  
  
```  
  
## See Also  
 [hierarchyid Data Type Method Reference](http://msdn.microsoft.com/en-US/library/bb677193(SQL.130).aspx)   
 [Hierarchical Data &#40;SQL Server&#41;](../../relational-databases/hierarchical-data-sql-server.md)   
 [hierarchyid &#40;Transact-SQL&#41;](../../t-sql/data-types/hierarchyid-data-type-method-reference.md)  
  
  