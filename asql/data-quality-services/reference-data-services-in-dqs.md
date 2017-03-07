---
title: "Reference Data Services in DQS | Microsoft Docs"
ms.custom: ""
ms.date: "10/01/2012"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "data-quality-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ef217717-6d05-443e-af26-44dc745a349d
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# Reference Data Services in DQS
  Reference data refers to an accurate and complete set of related or categorized global data (beyond the boundaries of an enterprise) that is available at trusted public domains or from premium commercial content providers.  
  
 The Reference Data Service feature in [!INCLUDE[ssDQSnoversion](../data-quality-services/includes/ssdqsnoversion-md.md)] (DQS) enables you to subscribe to third-party reference data providers, and to easily cleanse and enrich your business data by validating it against their high-quality data. You can use services from leading data quality service providers from within DQS to standardize, correct, or enrich your data during the cleansing process. For example, you can use a list of area codes or zip codes against the reference data to validate addresses of your customers.  
  
 The Reference Data Service feature has the following benefits:  
  
-   Reference data enables you to ensure the quality of your data by comparing it to data guaranteed by a third-party company.  
  
-   The reference data process is incorporated into DQS knowledge base building and a data quality project, enabling you to institute a comprehensive data quality process.  
  
-   Supports using reference data from Windows Azure Marketplace as well as directly from third party reference data providers.  
  
##  <a name="Marketplace"></a> Using Reference Data from Windows Azure Marketplace  
 DQS supports using reference data from Windows Azure Marketplace to enable content providers to provide reference data services through Marketplace. Marketplace is a service from Microsoft that provides a single marketplace and delivery channel for high-quality data and applications as cloud services. For more information about Marketplace, see [Learn About Windows Azure Marketplace](http://go.microsoft.com/fwlink/?LinkId=211291) (http://go.microsoft.com/fwlink/?LinkId=211291).  
  
 The seamless integration between Marketplace and DQS simplifies the steps associated with discovering, exploring, and acquiring information for data quality projects from within DQS. The data is consumed from DQS, and helps DQS users achieve high data quality by bringing together DQS, Marketplace, and reference data service providers in an innovative way.  
  
 To use reference data from Marketplace in DQS for the cleansing activity, you must have a Marketplace account key. Creating a Marketplace account key is free, and you pay only if you subscribe to paid datasets. There is no charge for subscribing to, and using free datasets. For detailed information about creating a Marketplace account key, see [Create Your Account](http://go.microsoft.com/fwlink/?LinkId=212936) (http://go.microsoft.com/fwlink/?LinkId=212936).  
  
 Additionally, you can perform the following Marketplace activities from within DQS:  
  
-   Browse data sets in Marketplace.  
  
-   Create a Marketplace account key.  
  
-   Manage your Marketplace account details such as account keys and subscriptions to data providers.  
  
 You can perform these activities in the **Reference Data** tab of the **Configuration** screen in [!INCLUDE[ssDQSClient](../data-quality-services/includes/ssdqsclient-md.md)].  
  
##  <a name="Direct"></a> Using Reference Data Directly from the Third Party Reference Data Providers  
 If you are not connected to the Internet and therefore cannot use Marketplace, DQS also supports direct connection to data providers that are available within your organization’s network. To use reference data from direct online third-party reference data providers, you have to create a record for the data provider in DQS.  
  
##  <a name="HowToCleanse"></a> How to Cleanse Data by Using the Reference Data  
 Cleansing your data in DQS using reference data includes the following three steps:  
  
1.  **Configuring the reference data provider details in DQS**: Before you can use reference data in DQS, you must configure reference data service details in DQS.  
  
    1.  If you are using Marketplace, provide a valid Marketplace account key, browse to the [Data Quality Services](http://go.microsoft.com/fwlink/?LinkId=227587) data category in Marketplace, and subscribe to the required providers.  
  
    2.  If you are using a direct online reference data provider, you must add direct reference data provider details in DQS before you can use it.  
  
     Configuring the reference data provider details in DQS is one time activity for a particular data provider. Only DQS administrators can configure reference data settings in DQS.  
  
2.  **Map a domain/composite domain in a knowledge base to the reference data service**: Map a domain/composite domain to the appropriate reference data service subscribed/added in step 1.  
  
3.  **Use the Mapped Domains for the Cleansing activity in a data quality project**: While creating a data quality project for the **Cleansing** activity, select the knowledge base that contains domains/composite domains mapped with reference data services in step 2, and perform the cleansing activity.  
  
## Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Describes how to configure DQS to use reference data services from Marketplace or direct third-party online data providers.|[Configure DQS to Use Reference Data](../data-quality-services/configure-dqs-to-use-reference-data.md)|  
|Describes how to map a domain/composite domain in a knowledge base to a reference data service.|[Attach Domain or Composite Domain to Reference Data](../data-quality-services/attach-domain-or-composite-domain-to-reference-data.md)|  
|Describes how to cleanse data using reference data service.|[Cleanse Data Using Reference Data &#40;External&#41; Knowledge](../data-quality-services/cleanse-data-using-reference-data-external-knowledge.md)|  
  
  