---
title: "External Tools Dialog Box | Microsoft Docs"
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
  - "adding external tools"
  - "external tools [SQL Server Management Studio]"
  - "SQL Server Management Studio [SQL Server], external tools"
ms.assetid: ba797203-24d0-4922-9b97-8ab483f1db14
caps.latest.revision: 5
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
# External Tools Dialog Box
Use the **External Tools** dialog box to add external tools such as SQLCMD or Notepad to the **Tools** menu. Adding external tools allows you to easily launch other applications while working in the Microsoft SQL Server Management Studio environment. You can specify arguments and a working directory when launching the tool. In addition, the output from some tools can be displayed in the **Output** window. The **External Tools** dialog box is available on the **Tools** menu.  
  
## Options  
**Menu contents**  
Lists the titles of the items currently added to the **Tools** menu. Use the **Move Up** and **Move Down** arrows to change the order the items that appear on the menu. Use the **Delete** button to remove an item from the menu.  
  
**Move Up**  
Move the selected tool higher in the list of tools that appear on the **Tools** menu.  
  
**Move Down**  
Move the selected tool lower in the list of tools that appear on the **Tools** menu.  
  
**Add**  
Clear the text boxes so you can specify a new tool.  
  
**Delete**  
Remove the tool or command from the **Menu Contents** list as well as from the **Tools** menu.  
  
**Title**  
Enter the name of the tool or command that will appear on the **External Tools** submenu of the **Tools** menu. Place an ampersand (&) before a letter in the name of the tool to specify that letter as a keyboard shortcut. For example, "&SQLCMD" would display SQLCMD on the **Tools** menu.  
  
**Command**  
Specify the path to the file to launch.  
  
**Arguments**  
Specify the variables that are passed to the tool when the tool is selected on the menu. Arguments can specify values that are passed to the tool or command when it is launched. For example, a value can specify a file name or directory. Use the arrow button to select from a list of predefined arguments. You can add more than one. For a complete list of predefined arguments and their definitions, see [Arguments for External Tools](../ssms/arguments-for-external-tools.md). You can also enter custom arguments (for example, command line switches), depending on the command or tool you use.  
  
**Use Output window**  
Opens the Management Studio Output window to display output of the command being run. Not all tools present output in a format that can be presented in the Output window. For more information, see [Output Window](http://msdn.microsoft.com/en-us/9808e00c-c8f6-45cc-896e-192b8420f747).  
  
**Treat output as Unicode**  
Interprets the output as Unicode.  
  
**Initial directory**  
Specify the working directory of the tool. Use the arrow button to select directories. You can select more than one.  
  
**Prompt for arguments**  
Display the **Arguments** dialog box to allow you to enter or edit values for the arguments each time you launch the external tool.  
  
**Close on exit**  
Close the window opened by the tool when the tool is closed.  
  
## Example  
Entering the following values in the **External Tools** dialog box will create a menu item labeled "DAC" that when selected, opens a command prompt and runs the **sqlcmd** utility using the dedicated administrator connection.  
  
|Box|Value|  
|-------|---------|  
|**Title**|DAC|  
|**Command**|C:\\Program Files\\Microsoft SQL Server\\130\\Tools\Binn\SQLCMD.exe|  
|**Arguments**|-A|  
  
## See Also  
[Arguments for External Tools](../ssms/arguments-for-external-tools.md)  
[General User Interface Elements](../ssms/general-user-interface-elements.md)  
  
