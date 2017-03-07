---
title: "Import the Policies to a Single Instance | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: bc5bcd87-663f-41d9-bb7b-b3e083cd63df
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Import the Policies to a Single Instance
In this task, you will import the best practices policies that you want to schedule into Policy-Based Management on a single instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
## Prerequisites  
You must perform this procedure on a server that is running [!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)] or a later version.  
  
### Import the best practices policies for the Database Engine  
  
1.  Start [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], and then connect to the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)].  
  
2.  In Object Explorer, expand **Management**, and then expand **Policy Management**.  
  
3.  Right-click **Policies**, and then click **Import Policy**.  
  
4.  In the **Import** dialog box, next to the **Files to import** box, click the ellipsis (**…**) button.  
  
5.  In the **Look in** list, browse to the following folder, which contains the best practices policies:  
  
    **C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Policies\DatabaseEngine\1033**  
  
    > [!NOTE]  
    > The file path may vary, depending on where you installed the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] program files, whether you are running a 32-bit or 64-bit operating system, and the language identifier.  
  
6.  In the **Select Policy** dialog box, select one or more policy files.  
  
    To select nonadjacent files, click one file, hold down the CTRL key, and then click each additional file. To select adjacent files, click the first file in the sequence, hold down the SHIFT key, and then click the last file.  
  
7.  When you are finished selecting files, click **Open**.  
  
8.  In the **Import** dialog box, make sure that the **Policy state** list is set to **Preserve policy state on import** (the default), and then click **OK**.  
  
    The policies are imported into the **Policies** node under **Policy Management**. By default, the imported policies are set to "On demand" evaluation mode.  
  
## Next Steps  
[Schedule the Policies](../a9retired/schedule-the-policies.md)  
  
  
  
