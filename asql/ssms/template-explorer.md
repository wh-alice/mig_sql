---
title: "Template Explorer | Microsoft Docs"
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
  - "sql13.swb.templates.explorer.f1"
  - "sql13.wb.templates.f1"
helpviewer_keywords: 
  - "templates [SQL Server]"
  - "SQL Server Management Studio [SQL Server], Template Explorer"
  - "Template Explorer"
  - "templates [Transact-SQL]"
  - "templates [SQL Server], Template Explorer"
ms.assetid: b9ee55c5-bb44-4f76-90ac-792d8d83b4c8
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
# Template Explorer
SQL Server provides a variety of templates. Templates are boilerplate files containing SQL scripts that help you create objects in a database. The first time the template explorer is opened, a copy of the templates are placed in the user’s folder in C:\Users, under AppData\Roaming\Microsoft\SQL Server Management Studio\130\Templates.  
  
You can browse the available templates in Template Explorer, then open a template to incorporate the code into a code editor window. You can also create custom templates.  
  
## Benefits of Templates  
Templates are available for solutions, projects, and various types of code editors. Templates are available to create objects like databases, tables, views, indexes, stored procedures, triggers, statistics, and functions. In addition, there are templates that help you to manage your server by creating extended properties, linked servers, logins, roles, users, and templates for Analysis Services.  
  
The template scripts provided with SQL Server Management Studio contain parameters to help you customize the code. When you open a template, Use the **Replace Template Parameters** dialog box to insert values into the script.  
  
Create custom templates for tasks you perform frequently. Organize your custom scripts into the existing folders or create a new folder structure.  
  
The Database Engine Query editor also supports code snippets, which can be inserted at specific locations in a script by right-clicking at that location.  
  
## Related Tasks  
Use the following topics to get started with templates  
  
|**Description**|**Topic**|  
|-------------------|-------------|  
|Describes how to incorporate the code from a template into a code editor window.|[Open a Template](../ssms/open-a-template.md)|  
|Describes how to replace template parameter values after opening a template in a code editor.|[Replace Template Parameters](../ssms/replace-template-parameters.md)|  
  
