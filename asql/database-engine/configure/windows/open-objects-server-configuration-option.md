---
title: "open objects Server Configuration Option | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "open objects option"
ms.assetid: c8424d3c-86ba-4cc5-bf0c-be4ce44bdd04
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# open objects Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This option is still present in **sp_configure**, although its functionality has been disabled in [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. (The setting has no effect.) In [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the number of open database objects is managed dynamically and is limited only by the available memory. The **open objects** option available in **sp_configure** for backward compatibility with existing scripts.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)]  
  
## See Also  
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)  
  
  