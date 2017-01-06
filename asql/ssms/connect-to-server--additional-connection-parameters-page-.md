---
title: "Connect to Server (Additional Connection Parameters Page) | Microsoft Docs"
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
  - "sql13.swb.connecttoserver.options.registeredservers.f1"
ms.assetid: ba34b01a-6289-4eb8-8341-fa3d9ec87b3f
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
# Connect to Server (Additional Connection Parameters Page)
The **Connect to** dialog box of SQL Server Management Studio presents the most common connection string values as options. Use the **Additional Connection Parameters** page to add more connection parameters to the connection string.  
  
-   Additional connection parameters can be any ODBC connection parameter.  
  
-   Additional connection parameters should be added in the format **;parameter1=value1;parameter2=value2**.  
  
-   Parameters added using the **Additional Connection Parameters** page are added to the parameters selected using the **Connect to** dialog box options.  
  
-   The last instance of each parameter provided overrides any previous instances of the parameter. Parameters added using the **Additional Connection Parameters** page follow and replace the parameters provided in the **Login** or **Connection Properties** tabs. For example, if the **Login** tab provides **SERVER1** as the **Server name**, and the **Additional Connection Parameters** page contains **;SERVER=SERVER2**, the connection will be made to **SERVER2**.  
  
-   Parameters added using the **Additional Connection Parameters** page are always passed as plain text.  
  
    > [!IMPORTANT]  
    > Do not include login credentials and passwords in the **Additional Connection Parameters** page. They will not be encrypted when they are passed across the network. Use the **Login** tab instead.  
  
## Task List  
  
### To show the Additional Connection Parameters page  
  
1.  In Management Studio, on the **Query** menu, point to **Connection**, and then click **Connect**.  
  
2.  In the **Connect to** dialog box, click **Options**, and then click the **Additional Connection Parameters** tab.  
  
## Examples  
  
### Example A: Connecting to the Database Engine  
To connect to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) database on a server named ACCOUNTING, enter the following in the **Additional connection parameters** page:  
  
```  
;SERVER=ACCOUNTING;DATABASE=AdventureWorks2012  
```  
  
### Example B: Connecting to Analysis Services  
To connect to the Analysis Servers and cause all the partitions listening for notifications to be queried as real time (bypassing caching), and to set the writeback time out value to 5, enter the following in the **Additional connection parameters** page:  
  
```  
;Real Time Olap=TRUE;Writeback Timeout=5  
```  
  
