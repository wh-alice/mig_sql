---
title: "Protecting Your SQL Server Intellectual Property | Microsoft Docs"
ms.custom: ""
ms.date: "2017-01-31"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "protecting intellectual property"
  - "intellectual property"
ms.assetid: 174a646a-d65c-4074-8249-d783e91be2dd
caps.latest.revision: 3
ms.author: "rickbyh"
manager: "jhubbard"
---
# Protecting Your SQL Server Intellectual Property
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

Software developers often ask how to distribute their [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] data application to customers, and yet prevent customers from analyzing and deconstructing their application. The key principal here, is that protecting your intellectual property, is a legal issue, and the protection rests in your license agreement. When [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] is installed on a computer that others administer, you inherently lose some aspects of control. 

## Nature of the Problem
The owner/administrator of a computer can always access the instance of [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] that is installed on that computer. If you deploy your application to a customer’s computer, since they are administrators, they can connect to the [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] as members of the **sysadmin** fixed server role. This includes the ability to grant permissions, manage backups (including restoring backups to other computers), decrypt and move data files, etc. For more information, see [Connect to SQL Server When System Administrators Are Locked Out](../../database-engine/configure/windows/connect-to-sql-server-when-system-administrators-are-locked-out.md). 

Stored procedures and data can be encrypted, but the data structure cannot be hidden and users who can attach a debugger to the server process can retrieve decrypted procedures and data from memory at runtime.

If the clients are not administrators on the computers, you can prevent access by the clients. You can use [Transparent Data Encryption](../../relational-databases/security/encryption/transparent-data-encryption-tde.md) to encrypt the data files, you can encrypt backups, and you can audit the actions of all users. But [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] administrators and admins of the [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] computer can reverse these actions.

## Solution
There are various ways to configure client data access without installing [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] on your clients computer. The easiest is probably using [!INCLUDE[ssSDSfull_md](../../a9retired/includes/sssdsfull-md.md)] so the clients are not admins, perhaps in combination with [Always Encrypted](../../relational-databases/security/encryption/always-encrypted-database-engine.md). For more information about getting started with [!INCLUDE[ssSDS_md](../../a9retired/includes/sssds-md.md)], see [What is SQL Database? Introduction to SQL Database](https://docs.microsoft.com/azure/sql-database/sql-database-technical-overview).  

You can also host a [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)] on your own network, and allow clients to access data through your network, either directly or through a web application.

## See Also

[Security Center for SQL Server Database Engine and Azure SQL Database](../../relational-databases/security/security-center-for-sql-server-database-engine-and-azure-sql-database.md)  
[Securing SQL Server](../../relational-databases/security/securing-sql-server.md)  
