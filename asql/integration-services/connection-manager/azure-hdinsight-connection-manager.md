---
title: "Azure HDInsight Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-28"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "SQL13.DTS.DESIGNER.AFPHDICM.F1"
  - "SQL14.DTS.DESIGNER.AFPHDICM.F1"
ms.assetid: 29d01bd9-8b38-43b1-b937-67f8aea57c0f
caps.latest.revision: 4
ms.author: "lingxl"
manager: "jhubbard"
---
# Azure HDInsight Connection Manager
The **Azure HDInsight Connection Manager** enables an SSIS package to connect to an Azure HDInsight cluster.

The **Azure HDInsight Connection Manager** is a component of the [SQL Server Integration Services (SSIS) Feature Pack for Azure](../../integration-services/azure-feature-pack-for-integration-services-ssis.md).

To create and configure an **Azure HDInsight Connection Manager**, follow the steps below:

1. In the **Add SSIS Connection Manager** dialog box, select **AzureHDInsight**, and click **Add**.
2. In the **Azure HDInsight Connection Manager Editor** dialog box, specify the **Cluster DNS name** (without the protocol prefix), **Username**, and **Password** for the HDInsight cluster to connect to.
3. Click **OK** to close the dialog box.
4. You can see the properties of the connection manager you created in the **Properties** window.