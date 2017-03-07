---
title: "Advanced Connection Properties | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4edfab68-7e68-45e8-a3f3-a0049ff7eb9e
caps.latest.revision: 8
ms.author: "douglasl"
manager: "jhubbard"
---
# Advanced Connection Properties
  Use the **Advanced Connection Properties** dialog box to add more connection parameters to the connection string.  
  
 The additional connection parameters can be any ODBC connection parameter that is supported by the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database instance you are using.  
  
 The parameters added using the **Advanced Connection Properties** dialog box are added to the parameters selected in the **Connect to SQL Server** dialog box.  
  
 The last instance of each parameter provided overrides any previous instances of the parameter. Parameters added using the **Advanced Connection Parameters** dialog box follow and replace the parameters provided in the **SQL Server Connection** dialog box. For example, if the **SQL Server Connection** dialog box specifies SERVER1 as the Server name, and the **Additional Connection Parameters** page contains ;SERVER=SERVER2, the connection will be made to SERVER2.  
  
 Parameters added using the **Advanced Connection Properties** dialog box are passed as plain text.  
  
> [!IMPORTANT]  
>  Do not include login credentials in the **Advanced Connection Properties** dialog box. They will not be encrypted when they are passed across the network.  
  
## See Also  
 [Access the CDC Designer Console](../../integration-services/change-data-capture/access-the-cdc-designer-console.md)   
 [SQL Server Connection for Instance Creation](../../integration-services/change-data-capture/sql-server-connection-for-instance-creation.md)  
  
  