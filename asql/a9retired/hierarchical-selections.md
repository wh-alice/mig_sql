---
title: "Hierarchical Selections | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: dbc6b001-4f3b-4c34-af1a-0e3e25d118b9
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Hierarchical Selections
## Preparing Hierarchical Data  
  
The best practice for implementing hierarchical selections is to prepare data in a normalized fashion, specifically in the case of parent and child data relations.  
  
Queries and tables should be structured to return data rows with a key, a parent key (or null) and a label. This data can then be used to create a hierarchical user interface with a hierarchically structured Selection List.  
  
## Implementing a Hierarchical Selection List  
  
Once data is prepared a hierarchical selection list may be implemented in a mobile report by dragging a Selection List onto the mobile report design surface and selecting Tree from the Data Structure dropdown in the Visual Properties panel below the design surface.  
  
When a Selection List's Data Structure has been set to Tree the visual display of the element on the design surface will change to reflect a tree-like hierarchical structure. If the Selection List occupies only one cell vertically and thus displays as a dropdown the tree structure will not be visible at design time.  
  
On the Data View of the mobile report designer a Selection List has properties for selecting columns to provide Key and Label. When set to use a Tree Data Structure an additional property is available for specifying a data table fields to provide Parent Keys. Once Keys, Parent Keys and Labels data properties have been set to appropriate data table fields the Selection List is ready to display a hierarchical structure.  
  
While flattened or denormalized data may also be used to implement a hierarchical selection list, the preferred method is to use normalized data as outlined above. 