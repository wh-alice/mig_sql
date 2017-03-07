---
title: "Alternate Snapshot Folder Locations | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "snapshots [SQL Server replication], alternate folder locations"
  - "snapshot replication [SQL Server], alternate folder locations"
  - "alternate snapshot folders [SQL Server replication]"
ms.assetid: 437553b0-19df-4522-8f27-06b5bc747c69
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# Alternate Snapshot Folder Locations
  Alternate snapshot locations enable you to store snapshot files in a location other than, or in addition to, the default location, which is typically located on the Distributor. Alternate locations can be on another server, on a network drive, or on removable media such as CD-ROMs or removable disks.  
  
 Alternate snapshot locations are stored as a property of the publication. Because the alternate snapshot location is a publication property, the Distribution Agent and the Merge Agent are able to locate the proper snapshot as part of the synchronization process.  
  
 If you want to specify an alternate snapshot folder location or if you want to compress snapshot files, create the publication without creating the initial snapshot immediately, set the publication properties for the snapshot location, and then run the Snapshot Agent for that publication. If you change the alternate location after creating the initial snapshot, the location of any generated snapshot for the publication will not be relocated to the new alternate location. In this case, depending on the publication settings, the Merge Agent or Distribution Agent might not be able to find the snapshot files at the new alternate location.  
  
> [!NOTE]  
>  Do not specify an alternate location (using the **Publication Properties** dialog box or [sp_changepublication &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-changepublication-transact-sql.md)) that is the same as the default snapshot folder location.  
  
> [!CAUTION]  
>  Do not use both WebSync and alternate snapshot folder locations at the same time.  
  
 **To specify alternate snapshot locations**  
  
-   [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]: [Specify an Alternate Snapshot Folder Location &#40;SQL Server Management Studio&#41;](../../relational-databases/replication/publish/specify-an-alternate-snapshot-folder-location-sql-server-management-studio.md)  
  
-   Replication [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] programming: [Configure Snapshot Properties &#40;Replication Transact-SQL Programming&#41;](../../relational-databases/replication/publish/configure-snapshot-properties-replication-transact-sql-programming.md)  
  
## See Also  
 [Initialize a Subscription with a Snapshot](../../relational-databases/replication/initialize-a-subscription-with-a-snapshot.md)   
 [Snapshot Options](../../relational-databases/replication/snapshot-options.md)  
  
  