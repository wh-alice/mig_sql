---
title: "CLR User-Defined Aggregates | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "aggregate functions [CLR integration]"
  - "custom aggregates [CLR integration]"
  - "calculations [CLR integration]"
  - "user-defined functions [CLR integration]"
ms.assetid: bad9b7e8-5967-4afa-8dc8-6d840faf9372
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# CLR User-Defined Aggregates
  Aggregate functions perform a calculation on a set of values and return a single value. Traditionally, [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] has supported only built-in aggregate functions, such as **SUM** or **MAX**, that operate on a set of input scalar values and generate a single aggregate value from that set. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] integration with the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] .NET Framework common language runtime (CLR) now allows developers to create custom aggregate functions in managed code, and to make these functions accessible to [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] or other managed code.  
  
 The following table lists the topics in this section.  
  
 [Requirements for CLR User-Defined Aggregates](../../relational-databases/clr-integration-database-objects-user-defined-functions/clr-user-defined-aggregates-requirements.md)  
 Provides an overview of the requirements for implementing CLR user-defined aggregate functions.  
  
 [Invoking CLR User-Defined Aggregate Functions](../../relational-databases/clr-integration-database-objects-user-defined-functions/clr-user-defined-aggregate-invoking-functions.md)  
 Explains how to invoke user-defined aggregates.  
  
  