---
title: "Querying a Hierarchical Table Using Hierarchy Methods | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "HierarchyID"
ms.assetid: 3b4f7dae-65b5-4d8d-8641-87aba9aa692d
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 2-3 - Querying a Hierarchical Table Using Hierarchy Methods
Now that the HumanResources.EmployeeOrg table is fully populated, this task will show you how to query the hierarchy using some of the hierarchical methods.  
  
### To find subordinate nodes  
  
1.  Sariya has one subordinate employee. To query for Sariya's subordinates, execute the following query that uses the [IsDescendantOf](../../../t-sql/data-types/isdescendantof-database-engine.md) method:  
  
    ```  
    DECLARE @CurrentEmployee hierarchyid  
  
    SELECT @CurrentEmployee = OrgNode  
    FROM HumanResources.EmployeeOrg  
    WHERE EmployeeID = 46 ;  
  
    SELECT *  
    FROM HumanResources.EmployeeOrg  
    WHERE OrgNode.IsDescendantOf(@CurrentEmployee ) = 1 ;  
    ```  
  
    The result lists both Sariya and Wanida. Sariya is listed because she is the descendant at the 0 level. Wanida is the descendant at the 1 level.  
  
2.  You can also query for this information by using the [GetAncestor](../../../t-sql/data-types/getancestor-database-engine.md) method. `GetAncestor` takes an argument for the level that you are trying to return. Since Wanida is one level underneath Sariya, use `GetAncestor(1)` as demonstrated in the following code:  
  
    ```  
    DECLARE @CurrentEmployee hierarchyid  
  
    SELECT @CurrentEmployee = OrgNode  
    FROM HumanResources.EmployeeOrg  
    WHERE EmployeeID = 46 ;  
  
    SELECT OrgNode.ToString() AS Text_OrgNode, *  
    FROM HumanResources.EmployeeOrg  
    WHERE OrgNode.GetAncestor(1) = @CurrentEmployee  
    ```  
  
    This time the result lists only Wanida.  
  
3.  Now change the `@CurrentEmployee` to David (EmployeeID 6) and the level to 2. Execute the following to also return Wanida:  
  
    ```  
    DECLARE @CurrentEmployee hierarchyid  
  
    SELECT @CurrentEmployee = OrgNode  
    FROM HumanResources.EmployeeOrg  
    WHERE EmployeeID = 6 ;  
  
    SELECT OrgNode.ToString() AS Text_OrgNode, *  
    FROM HumanResources.EmployeeOrg  
    WHERE OrgNode.GetAncestor(2) = @CurrentEmployee  
    ```  
  
    This time, you also receive Mary who also reports to David, two levels down.  
  
### To use GetRoot, and GetLevel  
  
1.  As the hierarchy grows larger it is more difficult to determine where the members are in the hierarchy. Use the [GetLevel](../../../t-sql/data-types/getlevel-database-engine.md) method to find how many levels down each row is in the hierarchy. Execute the following code to view the levels of all the rows:  
  
    ```  
    SELECT OrgNode.ToString() AS Text_OrgNode,   
    OrgNode.GetLevel() AS EmpLevel, *  
    FROM HumanResources.EmployeeOrg ;  
    GO  
  
    ```  
  
2.  Use the [GetRoot](../../../t-sql/data-types/getroot-database-engine.md) method to find the root node in the hierarchy. The following code returns the single row which is the root:  
  
    ```  
    SELECT OrgNode.ToString() AS Text_OrgNode, *  
    FROM HumanResources.EmployeeOrg  
    WHERE OrgNode = hierarchyid::GetRoot() ;  
    GO  
  
    ```  
  
The next task will reorganize the hierarchy.  
  
## Next Task in Lesson  
[Reordering Data in a Hierarchical Table Using Hierarchical Methods](../Topic/Reordering%20Data%20in%20a%20Hierarchical%20Table%20Using%20Hierarchical%20Methods.md)  
  
  
  
