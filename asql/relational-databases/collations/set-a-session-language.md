---
title: "Set a Session Language | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "errors [SQL Server], international considerations"
  - "globalization [SQL Server], sessions"
  - "time [SQL Server]"
  - "sessions [SQL Server], languages"
  - "international considerations [SQL Server], sessions"
  - "dates [SQL Server], session languages"
  - "global considerations [SQL Server], sessions"
  - "client-side session language"
  - "time [SQL Server], session languages"
  - "messages [SQL Server], international considerations"
  - "server-side session language"
ms.assetid: de7f2c90-8f4f-4cfc-94cc-4933a7fd2bde
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# Set a Session Language
  The session language can be used to set how the following elements are displayed on the server, based on language and cultural preference:  
  
-   The language that will be used for error and other system messages. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] supports having multiple copies of all system error strings and messages in all the languages in which [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is available. These messages can be viewed in the [sys.messages](../../relational-databases/reference/system-catalog-views/messages-for-errors-catalog-views-sys.messages.md) catalog view. When you install a localized version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], these system messages are translated for the language version that you install. By default, you also obtain the U.S. English set of these messages. Additionally, you can add user-defined messages in a specific language by using [sp_addmessage](../../relational-databases/reference/system-stored-procedures/sp-addmessage-transact-sql.md).  
  
-   The format of date and time data.  
  
-   The names of days and months, including abbreviations.  
  
-   The first day of the week.  
  
-   Currency data.  
  
 There are 33 languages available for use as session settings. For a list of languages, see [sys.syslanguages](../../relational-databases/reference/system-compatibility-views/sys.syslanguages-transact-sql.md).  
  
## Setting the Session Language from the Server  
 To set the session language from the server side, use [SET LANGUAGE](../../t-sql/statements/set-language-transact-sql.md).  
  
## Setting the Session Language from the Client  
 The session language can be set on the client side by using OLE DB, ODBC or ADO.NET. For OLE DB, use the SSPROP_INIT_CURRENTLANGUAGE property. For more information, see [Initialization and Authorization Properties](../../relational-databases/native-client-ole-db-data-source-objects/initialization-and-authorization-properties.md).  
  
 For ODBC, use the Language keyword. For more information, see [SQLConfigDataSource](../../relational-databases/extended-stored-procedures-reference/sqlconfigdatasource.md).  
  
 For ADO.NET, use the **Current Language** parameter of the **ConnectionString** object. For more information, see the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Data Access Components (MDAC) software development kit (SDK) documentation.  
  
  