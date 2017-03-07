---
title: "sp_delete_notification (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_delete_notification_TSQL"
  - "sp_delete_notification"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_notification"
ms.assetid: b55d3898-596d-47a5-a4f0-d65dc736223b
caps.latest.revision: 21
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_delete_notification (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent notification definition for a specific alert and operator.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_delete_notification  
     [ @alert_name = ] 'alert' ,   
     [ @operator_name = ] 'operator'   
```  
  
## Arguments  
 [ **@alert_name=** ] **'***alert***'**  
 The name of the alert. *alert* is **sysname**, with no default.  
  
 [ **@operator_name=** ] **'***operator***'**  
 The name of the operator. *operator* is **sysname**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 Removing a notification removes only the notification; the alert and the operator are left intact.  
  
## Permissions  
 To run this stored procedure, users must be granted the **sysadmin** fixed server role.  
  
## Examples  
 The following example removes the notification sent to operator `François Ajenstat` when alert `Test Alert` occurs.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_delete_notification  
    @alert_name = 'Test Alert',  
    @operator_name = 'François Ajenstat' ;  
GO  
```  
  
## See Also  
 [sp_add_alert &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-add-alert-transact-sql.md)   
 [sp_add_notification &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-add-notification-transact-sql.md)   
 [sp_add_operator &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-add-operator-transact-sql.md)   
 [sp_delete_alert &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-delete-alert-transact-sql.md)   
 [sp_help_alert &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-alert-transact-sql.md)   
 [sp_help_notification &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-notification-transact-sql.md)   
 [sp_help_operator &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-operator-transact-sql.md)   
 [sp_update_notification &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-update-notification-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  