---
title: "Add a Destination using Destination Assistant | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 747a0de0-3c2f-4d31-a692-7111fc0911d8
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Add a Destination using Destination Assistant
  This topic provides steps to add a new destination using the Destination Assistant and also lists the options that are available on the **Add New Destination** dialog, which you will see when you drag-drop the Destination Assistant to the SSIS Designer.  
  
### To use Destination Assistant to add a destination  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] package that you want to add a destination component to.  
  
2.  Drag the **Destination Assistant** component from the SSIS Toolbox to the **Data Flow** tab. You should see the **Add New Destination** dialog box. The next section provides you details about the options available in the dialog box.  
  
3.  Select the type of the destination in the **Types** list.  
  
4.  Select an existing connection manager in the **Connection Managers** list or select **\<New>** to create a new connection manager.  
  
5.  If you select an existing connection manager, click **OK** to close the **Add New Destination** dialog box. You should see the destination and connection managers added to the data flow.  
  
6.  If you click **\<New>** to create a new connection manager, you should see a **Connection Manager** dialog box, which lets you specify parameters for the connection. After you are done with creating the new connection manager, you will see the destination and the connection manager in SSIS Designer.  
  
  