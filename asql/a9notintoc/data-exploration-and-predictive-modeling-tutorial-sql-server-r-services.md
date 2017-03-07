---
title: "Data Exploration and Predictive Modeling (Tutorial: SQL Server R Services) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-12-04"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 65589d17-bd34-4baa-8ba1-998f60d0344f
caps.latest.revision: 12
ms.author: "jeannt"
manager: "erikre"
---
# Data Exploration and Predictive Modeling (Tutorial: SQL Server R Services)
[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] (CTP3) contains a preview version of [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)]. This new product includes provides closer integration  of R with enterprise data sources such as [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] databases.  
  
**In This Topic**  
  
-   [Get the CTP3 Samples](#bkmk_samples)  
  
    Link to downloadable data and sample scripts  
  
-   [Developing an End-to-End Data Science Solution](#bkmk_end-to-end)  
  
    Learn how to build a solution, deploy it to [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], and perform scoring  
  
-   [SQL Server R Services for the Data Scientist](#bkmk_dataScience)  
  
    Learn more about the enhanced packages provided by [!INCLUDE[rsql_rro-short](../a9notintoc/includes/rsql-rro-short-md.md)] and how to use them with [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] data  
  
## <a name="bkmk_samples"></a>Get the CTP3 Samples  
Product samples for [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] are available from the Microsoft Download Center:  
  
[SQL Server 2016 Product Samples](https://www.microsoft.com/en-us/download/details.aspx?id=49502)  
  
This download includes the AdventureWorks databases, as well as samples for new features such as Stretch Database.  
  
> [!TIP]  
> To get only the samples for [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], select the zip file, and open the folder **Advanced Analytics**.  
  
### <a name="bkmk_end-to-end"></a>Developing an End-to-End Data Science Solution  
[Data Science End-to-End Walkthrough](../advanced-analytics/r-services/tutorials/data-science-end-to-end-walkthrough.md)  
  
This solution uses the New York City Taxi data set to demonstrate the entire data science process:  
  
-   Import data to [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Build a predictive model using R  
  
-   Deploy the R model to [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Use  the model in production for scoring  
  
Start here if you want to learn how to use the new functions provided by the **RevoScaleR** package to work with [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] data in R.  
  
> [!NOTE]  
> For additional examples of how the New York City taxi dataset is used in machine learning, see [Building Azure ML Models on the NYC Taxi Dataset](http://blogs.technet.com/b/machinelearning/archive/2015/04/02/building-azure-ml-models-on-the-nyc-taxi-dataset.aspx).  
  
### <a name="bkmk_dataScience"></a>SQL Server R Services for the Data Scientist  
The following walkthrough, currently available in PDF format from the Microsoft Download Center,  assumes that you are already familiar with the R language and want to learn how to use the new database integration features, such as the ability to change execution context.  
  
[Getting Started with RevoScaleR and SQL Server](http://go.microsoft.com/fwlink/?LinkID=691640&clcid=0x809)  
  
The walkthrough explains the functionality of the new R packages and functions provided by [!INCLUDE[rsql_rre-short](../a9notintoc/includes/rsql-rre-short-md.md)], including:  
  
-   Defining a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] data source  
  
-   Uploading data from a CSV file into a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database by using R  
  
-   Using R to modify tables and add column metadata  
  
-   Using the enhanced RevoScale R packages in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Creating predictive models and storing them in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Using stored models to generate predictions  
  
Depending on your familiarity with R, the walkthrough should take between 60 and 90 minutes to complete.  
  
## Additional Samples and Blogs  
This blog post outlines the process of using the R packages and functions provided by [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] to connect to [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. Sample code is provided.  
  
[Using R inside SQL Server](http://blog.revolutionanalytics.com/2015/10/previewing-using-revolution-r-enterprise-inside-sql-server.html)  
  
> [!NOTE]  
> If you need more information about learning the R language, or want to learn more about the R packages provided in [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], see these [resources](http://go.microsoft.com/fwlink/?LinkId=691541).  
  
## See Also  
[Getting Started with SQL Server R Services](../advanced-analytics/r-services/getting-started-with-sql-server-r-services.md)  
[SQL Server R Services Features and Tasks](../advanced-analytics/r-services/sql-server-r-services-features-and-tasks.md)  
  
