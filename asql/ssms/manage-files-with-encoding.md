---
title: "Manage Files with Encoding | Microsoft Docs"
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
  - "files [SQL Server Management Studio]"
  - "encoding [SQL Server Management Studio]"
  - "files [SQL Server Management Studio], encoding"
ms.assetid: 919544c9-59f0-4cc6-bb2a-f1ad671eb74b
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
# Manage Files with Encoding
To facilitate the display of your code in a particular language and on a particular platform, you can associate a particular character encoding with a file.  
  
## Opening Files  
You can choose the editor you want to use to edit the file.  
  
#### To open a file with a specific editor  
  
1.  On the **File** menu, point to **Open**, and then click **File**.  
  
2.  In the **Open File** dialog box, select the file name.  
  
3.  Click the arrow next to the **Open** button, and then click**Open With** from the menu that appears.  
  
4.  In the **Select a program to open** list, select an editor, and then click **Open**. To open the file with a particular encoding, select an editor with encoding support, such as SQL Query Editor with Encoding or XML Editor with Encoding.  
  
## Saving Files  
You can also save your code with a Unicode encoding or a different code page to support various languages, such as Western European or Eastern European. You can associate a particular character encoding with a file to facilitate the display of your code in that language, as well as a line-ending type to support a particular operating system. Also, some characters, when used in file names, cannot be saved unless they are saved with Unicode encoding.  
  
#### To save a file with a different encoding or line ending type  
  
1.  On the **File** menu, click **Save <filename> As**.  
  
2.  In the **Save File As** dialog, expand the **Save** button, and then click **Save with Encoding**.  
  
3.  In the **Advanced Save Options** dialog box, select the encoding you want from the **Encoding** list.  
  
4.  From the **Line Endings**list, select the type of line ending you want.  
  
    > [!NOTE]  
    > If you save your file your file with Unicode encoding, the file should be checked into Microsoft Visual SourceSafe as a binary file because Visual SourceSafe does not support merging, comparing, and showing differences between files that are saved as Unicode.  
  
If you are using Visual SourceSafe to store files with ANSI, UTF8, or Unicode, be aware of the following limitations for each:  
  
-   ANSI files allow only characters that are supported in the current code page, which limits international use.  
  
-   Unicode files cannot use shared checkout, difference checking, or merging functionality because they are handled as binary files. You can use this format in international files.  
  
-   UTF8 files do not work safely with Visual SourceSafe because changes that cause problems for UTF8 file editors are made during check in, check out, difference checking, and merging.  
  
## See Also  
[Files That Manage Solutions and Projects](../ssms/files-that-manage-solutions-and-projects.md)  
[Associating File Extensions to a Code Editor](http://msdn.microsoft.com/en-us/193630f4-93de-4950-8f36-68702531f925)  
  
