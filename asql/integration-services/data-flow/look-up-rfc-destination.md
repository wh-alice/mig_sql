---
title: "Look Up RFC Destination | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: db9404d8-4c42-45e5-a100-c7a84b056109
caps.latest.revision: 10
ms.author: "douglasl"
manager: "jhubbard"
---
# Look Up RFC Destination
  Use the **Look Up RFC Destination** dialog box to look up an RFC destination that is defined in the SAP Netweaver BW system. When the list of available RFC destinations appears, select the destination that you want, and the component will populate the associated options with the required values.  
  
 Both the SAP BW source and the SAP BW destination use the **Look Up RFC Destination** dialog box. For more information about these components of the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Connector 1.1 for SAP BW, see [SAP BW Source](../../integration-services/data-flow/sap-bw-source.md) and [SAP BW Destination](../../integration-services/data-flow/sap-bw-destination.md).  
  
> [!IMPORTANT]  
>  The documentation for the Microsoft Connector 1.1 for SAP BW assumes familiarity with the SAP Netweaver BW environment. For more information about SAP Netweaver BW, or for information about how to configure SAP Netweaver BW objects and processes, see your SAP documentation.  
  
 **To open the Look Up RFC Destination dialog box**  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package that contains the SAP BW source or destination.  
  
2.  On the **Data Flow** tab, double-click the SAP BW source or destination.  
  
3.  In the **SAP BW Source Editor** or the **SAP BW Destination Editor**, click **Connection Manager** to open the **Connection Manager** page of the editor.  
  
4.  On the **Connection Manager** page, in the **RFC Destination** group box, click **Look up** to display the **Look Up RFC Destination** dialog box.  
  
     In the **SAP BW Source Editor**, the **RFC Destination** group box appears only if the value for **Execution mode** is **P - Trigger process chain** or **W - Wait for notify**.  
  
## Options  
 **Destination**  
 View the name of the RFC destination that is defined in the SAP Netweaver BW system.  
  
 **Gateway Host**  
 View the server name or IP address of the gateway host. Usually, the name or IP address is the same as the SAP application server.  
  
 **Gateway Service**  
 View the name of the gateway service, in the format **sapgwNN**, where **NN** is the system number.  
  
 **Program ID**  
 View the Program ID that is associated with the RFC destination.  
  
## See Also  
 [SAP BW Source Editor &#40;Connection Manager Page&#41;](../../integration-services/data-flow/sap-bw-source-editor-connection-manager-page.md)   
 [SAP BW Destination Editor &#40;Connection Manager Page&#41;](../../integration-services/data-flow/sap-bw-destination-editor-connection-manager-page.md)   
 [Microsoft Connector for SAP BW F1 Help](../../integration-services/microsoft-connector-for-sap-bw-f1-help.md)  
  
  