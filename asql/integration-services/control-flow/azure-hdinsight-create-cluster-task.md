---
title: "Azure HDInsight Create Cluster Task | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-02-28"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.afpcreatecltask.f1"
  - "sql14.dts.designer.afpcreatecltask.f1"
ms.assetid: a8ec413a-38d3-45df-887e-6f5f4d9f8465
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# Azure HDInsight Create Cluster Task
The **Azure HDInsight Create Cluster Task** enables an SSIS package to create an Azure HDInsight cluster in the specified Azure subscription and resource group.
  
The **Azure HDInsight Create Cluster Task** is a component of the [SQL Server Integration Services (SSIS) Feature Pack for Azure](../../integration-services/azure-feature-pack-for-integration-services-ssis.md).
  
> [!NOTE]  
> - Creating a new HDInsight cluster may take 10~20 minutes.  
> - There is a cost associated with creating and running an Azure HDInsight cluster. See [HDInsight Pricing](http://azure.microsoft.com/en-us/pricing/details/hdinsight/) for details.  
  
To add an **Azure HDInsight Create Cluster Task**, drag-drop it to the SSIS Designer, and double-click or right-click and click **Edit** to see the following **Azure HDInsight Create Cluster Task Editor** dialog box.  
  
The following table provides a description of the fields in this dialog box.  
  
|||  
|-|-|  
|**Field**|**Description**|  
|AzureResourceManagerConnection|Select an existing Azure Resource Manager Connection Manager or create a new one that will be used to create the HDInsight cluster.|  
|AzureStorageConnection|Select an existing Azure Storage Connection Manager or create a new one that refers to an Azure Storage Account that will be associated with the HDInsight cluster.|
|SubscriptionId|Specify the ID of the subscription the HDInsight cluster will be created in.|
|ResourceGroup|Specify the Azure resource group the HDInsight cluster will be created in.|
|Location|Specify the location of the HDInsight cluster. The cluster must be created in the same location as the Azure Storage Account specified.|  
|ClusterName|Specify a name for the HDInsight cluster to be created.|  
|ClusterSize|Specify the number of nodes to create in the cluster.|  
|BlobContainer|Specify the name of the default storage container to be associated with the HDInsight cluster.|  
|UserName|Specify the user name to be used for connecting to the HDInsight cluster.|  
|Password|Specify the password to be used for connecting to the HDInsight cluster.|
|SshUserName|Specify the user name used to remotely access the HDInsight cluster using SSH.|
|SshPassword|Specify the password used to remotely access the HDInsight cluster using SSH.|
|FailIfExists|Specify whether the task should fail if the cluster already exists.|  
  
> [!NOTE]  
> The locations of the HDInsight cluster and the Azure Storage Account must be the same.