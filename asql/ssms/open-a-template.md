---
title: "Open a Template | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "templates [Transact-SQL], opening"
  - "opening templates"
ms.assetid: 605b0f4c-5ba1-4249-ad1c-6341df77cd7a
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
# Open a Template
You can open a template from Template Explorer.  
  
## To open a template from Template Explorer  
You can open templates from the Template Explorer.  
  
1.  To open Template Explorer, on the **View** menu, click **Template Explorer**.  
  
2.  In the list of template categories, expand the category that contains the template you want to open.  
  
3.  There are three ways to open the template:  
  
    1.  Double-click the template to open it in a code editor window.  
  
    2.  Right-click the template and select **Open** to open it in a code editor window.  
  
    3.  Drag the template into a code editor window to add the template code to the contents of the editor window.  
  
After the template is open, use the **Replace Template Parameters** dialog box to replace the template parameters with your values.  
  
If opening a template launches a new editor window, the window will open with the credentials of the current active connection. For example, if you are focused on an instance of the Database Engine in Object Explorer when you open the CREATE DATABASE template, a new editor window will be opened using a connection to that instance. If there is no active connection, Management Studio will present a login dialog.  
  
## See Also  
[Template Explorer](../ssms/template-explorer.md)  
[Replace Template Parameters](../ssms/replace-template-parameters.md)  
  
