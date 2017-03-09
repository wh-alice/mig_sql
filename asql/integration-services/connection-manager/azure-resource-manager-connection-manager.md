---
title: "Azure Resource Manager Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "SQL13.DTS.DESIGNER.AFPARMCM.F1"
  - "SQL14.DTS.DESIGNER.AFPARMCM.F1"
ms.assetid: 8ce8024f-153f-4066-b607-0d36fefc79ed
caps.latest.revision: 3
ms.author: "lingxl"
manager: "jhubbard"
---
# Azure Resource Manager Connection Manager
The **Azure Resource Manager Connection Manager** enables an SSIS package to manage Azure resources using a [service principal](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal).

The **Azure Resource Manager Connection Manager** is a component of the [SQL Server Integration Services (SSIS) Feature Pack for Azure](../../integration-services/azure-feature-pack-for-integration-services-ssis.md).

To create and configure an **Azure Resource Manager Connection Manager**, follow the steps below:

1. In the **Add SSIS Connection Manager** dialog box, select **AzureResourceManager**, and click **Add**.
2. In the **Azure Resource Manager Connection Manager Editor** dialog box, specify the **Application ID**, **Application Key**, and **Tenant ID** for the service principal. For details about these properties, please refer to [this](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal) article.
3. Click **OK** to close the dialog box.
4. You can see the properties of the connection manager you created in the **Properties** window.