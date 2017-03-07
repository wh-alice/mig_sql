---
title: "PolyBase FAQ | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-polybase"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 197fa2ce-9ee2-495f-abd3-79fea5dbe326
caps.latest.revision: 5
ms.author: "barbkess"
manager: "jhubbard"
robots: noindex,nofollow
---
# PolyBase FAQ
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Q: Does PolyBase work against HDInsight?  
 No, currently PolyBase does not work against HDI. See [PolyBase Connectivity Configuration &#40;Transact-SQL&#41;](../database-engine/configure/windows/polybase-connectivity-configuration-transact-sql.md) for the list of connectivity options.  
  
 Q:  Does PolyBase work against Azure Data Lake Store?  
 No, currently PolyBase does not work against Data Lake Store.  
  
 Q: Can I reference hive tables in the external table?  
 No, you have to reference the HDFS data.  
  
 Q: Can I reference an external table from a view?  
 Yes. You can use external tables as if they are local tables.  
  
 Q: Can computation be pushed down to Azure storage blobs?  
 No, since there is no computation engine on blob storage, computation cannot be pushed to the data.  
  
  