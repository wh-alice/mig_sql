---
title: "Select Objects (Object Explorer) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.common.selectobjects.f1"
ms.assetid: 692477fe-dd7c-403d-acd2-bb108b6077f1
caps.latest.revision: 4
ms.author: "sstein"
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
  - "zh-cn"
  - "zh-tw"
---
# Select Objects (Object Explorer)
Use the **Select Objects** dialog box to add an object to a list in another dialog box. The dialog box title and the options available in the dialog box depend upon how it was opened. Only available options appear; for instance, only logins are available when you are selecting an owner for a new object.  
  
## Options  
**Select these object types**  
Displays a list of the types of which the objects to be selected belong. The types include Microsoft SQL Server level and database level principals and securables. This box is populated from the selections made from the **Select Object Types** dialog box, accessed from the **Objects Type** button.  
  
**Enter the object names to select**  
Enter a semicolon-separated list of names of the objects to be selected. Objects to be selected must be of a type listed in the **Select these object types** box. Objects can be selected from a list accessed by clicking the **Browse** button.  
  
**Object Types**  
Displays a list of object types. Select one or more by selecting the check box corresponding to the type.  
  
**Check Names**  
Validates the object names in the **Enter the object names to select** box. If an object name that is not valid is listed, the **Name not Found** dialog box is presented. With this dialog box, the name can be corrected or removed from the list of objects to select.  
  
**Browse**  
Presents the **Browse for Objects** dialog box. This contains a list of objects of the types listed in the **Select These Object Types** box. Select objects from this list by selecting the corresponding check boxes.  
  
