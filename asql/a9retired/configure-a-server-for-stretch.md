---
title: "Configure a server for Stretch | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 95c3d84a-52a8-41dc-a845-6731bb755fc6
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Configure a server for Stretch
  Before you can enable Stretch for a database or a table, you have to enable it on the local server.  
  
## Configure a server for Stretch  
  
### Use SQL Server Management Studio to configure a database for Stretch  
 Follow the steps in [Enable Stretch Database for a database](../sql-server/install/enable-stretch-database-for-a-database.md) to run the Enable Database for Stretch wizard. The wizard configures the server for Stretch if you have the required administrative permissions. If you don't have the required permissions, an administrator has to run the wizard or enable the option manually as described in this topic.  
  
### Use Transact-SQL to configure a database for Stretch  
 Run **sp_configure** and turn on the **remote data archive** option.  
  
 Running **sp_configure** to set the value of the **remote data archive** option requires sysadmin or serveradmin permissions.  
  
 The following example first displays the current setting of the **remote data archive** option. Then the example enables the **remote data archive** option by setting its value to 1.  
  
```  
EXEC sp_configure 'remote data archive';  
GO  
EXEC sp_configure 'remote data archive' , '1';  
GO  
RECONFIGURE;  
GO  
```  
  
 To disable the **remote data archive** option, set its value to 0.  
  
## Next step  
 Enable Stretch for a database before you can enable Stretch for individual tables. For more info, see [Enable Stretch Database for a database](../sql-server/install/enable-stretch-database-for-a-database.md).  
  
## See Also  
 [Configure the remote data archive Server Configuration Option](../database-engine/configure/windows/configure-the-remote-data-archive-server-configuration-option.md)   
 [sp_configure &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)  
  
  