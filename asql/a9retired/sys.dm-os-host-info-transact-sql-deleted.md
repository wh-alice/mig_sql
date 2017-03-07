---
title: "sys.dm_os_host_info (Transact-SQL) DELETED | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-08"
ms.prod: "sql-linux"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c6a5c442-f373-48e4-8671-f7c9c9aacd6b
caps.latest.revision: 6
ms.author: "barbkess"
robots: noindex,nofollow
---
# sys.dm_os_host_info (Transact-SQL) DELETED
[!INCLUDE[tsql-appliesto-ssLinx-xxxx-asdw-pdw](../a9notintoc/includes/tsql-appliesto-sslinx-xxxx-asdw-pdw.md)]

  Returns one row that displays version information for the host operating system.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|host_platform|nvarchar(256)| Returns "Linux" or "Windows". |  
|host_distribution|nvarchar(256)|Distribution of the host operating system. For Windows, this is the friendly name of the Windows operating system.|  
|host_release|nvarchar(256)| For Windows, returns the release number. For a list of values and descriptions, see [Operating System Version (Windows)](http://msdn.microsoft.com/library/ms724832\(VS.85\).aspx). Cannot be NULL. <br></br>For Linux, returns the empty string "".| 
|host_service_pack_level|nvarchar(256)| For Windows, returns the service pack number. Cannot be NULL.<br></br>For Linux, returns the empty string "".| 
|host_sku|int| For Windows, returns the Stock Keeping Unit (SKU) ID. For a list of SKU IDs and descriptions, see [GetProductInfo Function](http://msdn.microsoft.com/library/ms724358.aspx). Is NULLable. <br></br>For Linux, returns NULL. 
|os_language_version|int|For Windows, returns the Locale identifier (LCID) of the operating system. For a list of LCID values and descriptions, see [Locale IDs Assigned by Microsoft](http://go.microsoft.com/fwlink/?LinkId=208080). Cannot be NULL.<br></br>For Linux, returns 1033.|   
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Examples  
 The following example returns all columns from the **sys.dm_os_host_info** view.  
  
```  
SELECT host_platform, host_distribution, host_release, host_sku, host_service_pack_level, os_language_version  
FROM sys.dm_os_host_info;  
```  
  
## See Also  
[sys.dm_os_windows_info &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-os-windows-info-transact-sql.md)
  
[sys.dm_os_sys_info &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-os-sys-info-transact-sql.md)