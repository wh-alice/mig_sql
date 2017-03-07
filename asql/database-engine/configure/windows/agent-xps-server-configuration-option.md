---
title: "Agent XPs Server Configuration Option | Microsoft Docs"
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
  - "Agent XPs option"
  - "extended stored procedures [SQL Server], SQL Server Agent"
ms.assetid: 2e1c6c64-5ce7-4357-98c7-ac7763a9f9de
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# Agent XPs Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Use the **Agent XPs** option to enable the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent extended stored procedures on this server. When this option is not enabled, the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent node is not available in [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] Object Explorer.  
  
 When you use the [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] tool to start the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent service, these extended stored procedures are enabled automatically. For more information, see [Surface Area Configuration](../../../relational-databases/security/surface-area-configuration.md).  
  
> [!NOTE]  
>  [!INCLUDE[ssManStudio](../../../a9notintoc/includes/ssmanstudio-md.md)] Object Explorer does not display the contents of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]Agent node unless these extended stored procedures are enabled regardless of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent service state.  
  
 The possible values are:  
  
-   **0**, indicating that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent extended stored procedures are not available (the default).  
  
-   **1**, indicating that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent extended stored procedures are available.  
  
 The setting takes effect immediately without a server stop and restart.  
  
## Example
 The following example enables the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent extended stored procedures.  

1. From Microsoft SQL Server Management Studio connect to the Database Engine.

2.  From the Standard bar, click **New Query.**

3.  Copy and paste the following example into the query window and click **Execute**. 
  
```tsql 
sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
sp_configure 'Agent XPs', 1;  
GO  
RECONFIGURE  
GO  
```  
  
## See Also  
 [Automated Administration Tasks &#40;SQL Server Agent&#41;](../Topic/Automated%20Administration%20Tasks%20\(SQL%20Server%20Agent\).md)   
 [Start, Stop, or Pause the SQL Server Agent Service](../Topic/Start,%20Stop,%20or%20Pause%20the%20SQL%20Server%20Agent%20Service.md)  
  
  