---
title: "Create InfoPackage | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9cd4a848-409f-4681-a390-1c49a2aadbd7
caps.latest.revision: 10
ms.author: "douglasl"
manager: "jhubbard"
---
# Create InfoPackage
  Use the **Create InfoPackage** dialog box to create a new InfoPackage in the SAP Netweaver BW system.  
  
 You can open the **Create InfoPackage** dialog box from the **Connection Manager** page of the **SAP BW Destination Editor**. To learn more about the SAP BW destination, see [SAP BW Destination](../../integration-services/data-flow/sap-bw-destination.md).  
  
> [!IMPORTANT]  
>  The documentation for the Microsoft Connector 1.1 for SAP BW assumes familiarity with the SAP Netweaver BW environment. For more information about SAP Netweaver BW, or for information about how to configure SAP Netweaver BW objects and processes, see your SAP documentation.  
  
 **To open the Create InfoPackage dialog box**  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] package that contains the SAP BW destination.  
  
2.  On the **Data Flow** tab, double-click the SAP BW destination.  
  
3.  In the **SAP BW Destination Editor**, click **Connection Manager** to open the **Connection Manager** page of the editor.  
  
4.  On the **Connection Manager** page, in the **Create SAP BW Objects** group box, select **InfoPackage**, and then click **Create**.  
  
## Options  
 **InfoSource**  
 Enter the name of the InfoSource on which the new InfoPackage should be based.  
  
 **Short description**  
 Enter a description for the new InfoPackage.  
  
 **Source system**  
 Select the source system with which the new InfoPackage should be associated.  
  
 **Attributes**  
 Indicates that the InfoPackage will load attribute data.  
  
 **Texts**  
 Indicates that the InfoPackage will load text data.  
  
 **Transaction**  
 Indicates that the InfoPackage will load transaction data.  
  
 **Save & Activate**  
 Save and activate the new InfoPackage.  
  
## See Also  
 [Microsoft Connector for SAP BW F1 Help](../../integration-services/microsoft-connector-for-sap-bw-f1-help.md)  
  
  