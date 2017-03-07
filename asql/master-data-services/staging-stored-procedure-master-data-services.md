---
title: "Staging Stored Procedure (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-04-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6a613106-9f87-4caf-a23a-a726fc6561c5
caps.latest.revision: 15
ms.author: "carlasab"
manager: "jhubbard"
---
# Staging Stored Procedure (Master Data Services)
  When initiating the staging process from [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], you use one of three stored procedures.  
  
-   stg.udp_\<name>_Leaf  
  
-   stg.udp_\<name>_Consolidated  
  
-   stg.udp_\<name>_Relationship  
  
 Where name is the name of the staging table that was specified when the entity was created.  
  
## Staging Process Stored Procedure Parameters  
 The following table lists the parameters of these stored procedures.  
  
|Parameter|Description|  
|---------------|-----------------|  
|**VersionName**<br /><br /> Required|The name of the version. This may or may not be case-sensitive, depending on your [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] collation setting.|  
|**LogFlag**<br /><br /> Required|Determines whether transactions are logged during the staging process. Possible values are:<br /><br /> **0**: Do not log transactions.<br /><br /> **1**: Log transactions.<br /><br /> <br /><br /> For more information about transactions, see [Transactions &#40;Master Data Services&#41;](../master-data-services/transactions-master-data-services.md).|  
|**BatchTag**<br /><br /> Required, except by web service|The **BatchTag** value as specified in the staging table.|  
|**Batch_ID**<br /><br /> Required by web service only|The **Batch_ID** value as specified in the staging table.|  
|**User Name**|Optional parameter|  
|**User ID**|Optional parameter|  
  
### Staging Process Stored Procedure Example  
 The following example shows how to start the staging process by using the staging stored procedure.  
  
```  
USE [DATABASE_NAME]  
GO  
  
EXEC[stg].[udp_name_Leaf]  
      @VersionName = N'VERSION_1',  
@LogFlag = 1,  
@BatchTag = N'batch1'  
      @UserName=N’domain\user’  
  
GO  
  
```  
  
## See Also  
 [Validation Stored Procedure &#40;Master Data Services&#41;](../master-data-services/validation-stored-procedure-master-data-services.md)   
 [View Errors that Occur During Staging &#40;Master Data Services&#41;](../master-data-services/view-errors-that-occur-during-staging-master-data-services.md)  
  
  