---
title: "Cascading Selection Lists | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 35f0c180-5491-4c31-b21e-313c20dd774a
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Cascading Selection Lists
When dealing with hierarchical data sets one of the options to allow user interaction is two or more cascading selection lists where each selection list is populated with one level of the hierarchy.   
  
In the mobile report designer add a Selection List for each user selectable level in the hierarchy to the design surface. Selection lists occupying only one vertical cell on the design surface will be displayed as dropdowns.  
  
<div class="image">  
  <img src="images/cascading_selection_lists_screen01.png" width="800" height="416" />  
  <p>Cascading Selection Lists arranged on the Design Surface.</p>  
</div>  
  
In the Data View each Selection List instance's Key property, which can be found in the Data Properties panel in the lower portion of the screen, should be set to the Key or Id of the desired associated hierarchy level. The Label property can be set to the Key, or a related user friendly string field.  
  
Each Selection List instance should also be set to be filtered by its parents in the hierarchy. This can be done by selecting the Options button to the right of the Key property for each Selection List and ensuring that each and every ancestor, preceding (or parent) Selection Lists is checked and therefore will filter the current Selection List. This must be done for each Selection List in the hierarchy.   
  
Setting filters for each Selection List should be done after all lists are in place and from the highest parent in the hierarchy to the lowest child. Cascading selection lists should be filtered by their parents and not by any child Selection Lists. Keeping this in mind, the top most Selection List should not be filtered by any others in the hierarchy. In this way a change to any Selection List in the hierarchy will propagate the filter throughout its descendants.