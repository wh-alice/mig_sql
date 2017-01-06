---
title: "User Assistance in SQL Server Management Studio | Microsoft Docs"
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
  - "Help [SQL Server Management Studio]"
  - "SQL Server Management Studio [SQL Server], user assistance"
ms.assetid: 3c33a474-e507-4712-86fe-ae40e8370319
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
# User Assistance in SQL Server Management Studio
User assistance is available in SQL Server Management Studio through the Help menu and SQL Server Books Online. The Help menu in Management Studio offers several different routes to information about SQL Server. It also provides access to SQL Server community and MSDN Online resources not previously available from within the Help environment. In addition, the Help environment is now configurable to launch either within the SQL Server Management Studio environment or in an associated external window of its own.  
  
## The Help Interface  
The **Contents** and **Index** provide functionality and an interface already familiar to SQL Server users. The other options are:  
  
-   **How Do I**  
  
    Provides a hierarchical set of linked pages containing useful topics related to common SQL Server tasks. The content is organized by component and task, for example, Replication topics, and so on.  
  
-   **Search**  
  
    Searches for topics, with or without predefined filters. Search in SQL Server is a separate tabbed page. Users can refine their searches with one or more predefined topic type, language, or technology filters. By default, Search does not use any of the predefined filters, and only topics in the installed collections are searched.  
  
    Users can include online resources in their search by enabling online Help. For more information, see "MSDN Online and SQL Server Communities" later in this topic.  
  
-   **Dynamic Help**  
  
    Automatically displays links to relevant information while users work in the Management Studio environment.  
  
-   **Help Favorites**  
  
    Stores user topic bookmarks for easy access later.  
  
Help on Help (Microsoft Document Explorer Help) links users to the documentation about the Help Viewer, but the topics are in a collection separate from SQL Server Books Online. For information about the Help Viewer, select **Help on Help** from the Help menu of SQL Server Books Online. For information about adding the Help on Help collection of topics to the Books Online collection, see [Adding Help Collections](http://msdn.microsoft.com/en-us/ef798cc8-87cf-4d60-a7bf-9e061bdd0052).  
  
## MSDN Online and SQL Server Communities  
Help in Management Studio also provides users ways to contact MSDN Online and SQL Server-focused communities on the Web for information. You can:  
  
-   Access SQL Server communities from the How Do I page.  
  
-   Search MSDN Online and SQL Server community sites.  
  
#### To access SQL Server-focused communities from the How Do I page  
  
1.  In SQL Server Management Studio, on the **Help** menu, click **How Do I**.  
  
2.  The SQL Server **How Do I** page opens. In the Community Links sidebar, click the name of the community site you want to access.  
  
    > [!NOTE]  
    > The computer running SQL Server must have a direct connection to the Web.  
  
    Before you can search MSDN Online or the SQL Server communities, you must enable online search.  
  
#### To enable online search  
  
1.  On the **Tools** menu, click **Options**. In the **Options** dialog box, expand the **Environment** and **Help** nodes if necessary, and then click **Online**.  
  
2.  In the **When loading Help content** area, select an online option.  
  
3.  In the **Search these providers** list, select the search providers you want to search, and clear those you don't.  
  
4.  If **Codezone Community** is one of your selected search providers, then in the **Codezone Community** list, select and clear items as appropriate.  
  
5.  Click **OK**.  
  
#### To search MSDN Online and SQL Server-focused communities from the Search page  
  
1.  On the **Help** menu, click **Search**.  
  
2.  Enter your search terms in the **Search for** text box, and then click **Search**.  
  
Whether or not you perform a search using the filters available (technology, language, and topic type), your search will now be run against all the search providers you selected.  
  
## Launching Help  
There are two ways to display Help from SQL Server Management Studio. By default, when SQL Server Books Online is opened from within Management Studio, it opens in a document window external to the Management Studio environment. This window is still associated with the Management Studio; it can respond to some Management Studio events; and when you close Management Studio, Books Online will close as well. Opening Books Online this way is particularly useful when you are using two monitors; you can drag the Books Online window to the second monitor, out of the way of work you are doing in the first one, but still easily referenced.  
  
You can also open Books Online as a document window inside Management Studio. This is preferable when you have limited screen space and want to take advantage of Management Studio and its ability to hide windows.  
  
> [!NOTE]  
> If you want Books Online to be completely independent of Management Studio, open SQL Server Books Online from the **Start** menu, and it will not react to your actions in the Management Studio environment, nor will it close if you exit Management Studio.  
  
#### To configure Help and SQL Server Books Online to launch inside the Management Studio window  
  
1.  On the **Tools** menu, click **Options**, expand **Environment**, expand **Help**, and then click **General**.  
  
2.  In the **Show Help Using** box, click **Integrated Help Viewer**.  
  
