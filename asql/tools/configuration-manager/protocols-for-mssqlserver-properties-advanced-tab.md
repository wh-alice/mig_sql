---
title: "Protocols for MSSQLSERVER Properties (Advanced Tab) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: abd5ca68-825f-4c07-b27c-3b3a79d03d74
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# Protocols for MSSQLSERVER Properties (Advanced Tab)
  Use the **Advanced** tab on the **Protocols for MSSQLSERVER Properties** dialog box to configure **Extended Protection for Authentication** for the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)]. **Extended Protection** is a feature of the network components implemented by the operating system. **Extended Protection** is available in Windows 7 and Windows Server 2008 R2, and is included in service packs for older operating systems. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is more secure when connections are made using **Extended Protection**. Some benefits of **Extended Protection** require **Force Encryption** to be selected on the **Flags** tab.  
  
> [!IMPORTANT]  
>  Windows does not enable **Extended Protection** by default. For information about how to enable **Extended Protection** in Windows, see the Knowledge Base article, [Extended Protection for Authentication](http://go.microsoft.com/fwlink/?LinkId=178431).  
  
 For more information about how to configure other [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services, and a complete description of **Extended Protection**, see more recent information on [Microsoft.com](http://go.microsoft.com/fwlink/?LinkId=177752).  
  
 **Extended Protection** is fully supported by the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client beginning with [!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)]. Support for **Extended Protection** for other [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] client providers is not currently supported.  
  
## Options  
 **Extended Protection**  
 There are three possible values:  
  
-   When set to **Off**, **Extended Protection** is disabled. The instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] will accept connections from any client regardless of whether the client is protected or not. **Off** is compatible with older and unpatched operating systems, but is less secure. Only use this setting when you know that the client operating systems do not support extended protection.  
  
-   When set to **Allowed**, **Extended Protection** is required for connections from operating systems that support **Extended Protection**. Connections from unprotected client applications that are running on protected client operating systems are rejected. **Extended Protection** is ignored for connections from unprotected operating systems. This setting is more secure than **Off**, but is not the most secure setting. Use this setting in mixed environments, where some operating systems or applications support **Extended Protection** and some do not.  
  
-   When set to **Required**, only connections from protected applications on protected operating systems are accepted. This setting is the most secure of the three options but connections from operating systems that do not support **Extended Protection** will not be able to connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
 **Accepted NTLM SPNs**  
 When the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is identified by more than one NTLM service principal name (SPN), list the SPNs here as a series of strings separated by semicolons. For example, the value **MSSQLSvc/HostName1.Contoso.com;MSSQLSvc/HostName2.Contoso.com**, indicates that clients attempting to connect to SPNs named **MSSQLSvc/HOST1.Contoso.com** and **MSSQLSvc/HOST2.Contoso.com** are allowed. The variable has a maximum length of 2048 characters.  
  
## See Also  
 [Extended Protection for Authentication with Reporting Services](../../reporting-services/security/extended-protection-for-authentication-with-reporting-services.md)  
  
  