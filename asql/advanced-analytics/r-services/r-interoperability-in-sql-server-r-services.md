---
title: "R Interoperability in SQL Server R Services | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0506b950-34b3-4f11-8e2f-d067a58015bd
caps.latest.revision: 9
ms.author: "jeannt"
manager: "jhubbard"
---
# R Interoperability in SQL Server R Services

This topic focuses on the mechanism for running for R within [!INCLUDE[rsql_productname_md](../../advanced-analytics/r-services/includes/rsql-productname-md.md)], and describes the differences between Microsoft R and open source R.
For information about additional components, see [New Components in SQL Server](../../advanced-analytics/r-services/new-components-in-sql-server-to-support-r-services.md).

### Open Source R Components

[!INCLUDE[rsql_productname_md](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] includes a complete distribution of the base R packages and tools. For more information about what is included with the base distribution, see the documentation installed during setup in the following default location:
`C:\Program Files\Microsoft SQL Server\<instance_name>\R_SERVICES\doc\manual`

As part of the installation of [!INCLUDE[rsql_productname_md](../../advanced-analytics/r-services/includes/rsql-productname-md.md)], you must consent to the terms of the GNU Public License. Thereafter, you can run standard R packages without further modification just as you would in any other open source distribution of R.

[!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not modify the R runtime in any way. The R runtime is executed outside of the [!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process and can be run independently of [!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. However, we strongly recommend that you do not run these tools while [!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is using R, to avoid resource contention.

The R base package distribution that is associated with a specific [!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance can be found in the folder associated with the instance. For example, if you installed R Services on the default instance, the R libraries are located in 
`C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\R_SERVICES\library`.

Similarly, the R tools associated with the default instance would be located in `C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\R_SERVICES\bin`,

For more information about the base distribution, see [Packages installed with Microsoft R Open](https://mran.revolutionanalytics.com/rro/installed/)

### Additional R Packages

In addition to the base R distribution, [!INCLUDE[rsql_productname_md](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] includes some proprietary R packages as well as a framework for parallel execution of R, and libraries that support execution of R in remote compute contexts. 

This combined set of R features - the R base distribution plus the enhanced R features and packages - is referred to as **Microsoft R**. If you install Microsoft R Server (Standalone), you get  exactly the same set of packages that are installed with SQL Server R Services (In-Database) but in a different folder. 

Microsoft R includes a distribution of the Intel Math Kernel Library, which is used whenever possible for faster mathematical processing. For example, the basic linear algebra (BLAS) library is used for many of the add-on packages as well as for R itself. For more information, see these articles:

+ [How the Intel Math Kernel Speeds up R](http://blog.revolutionanalytics.com/2014/10/revolution-r-open-mkl.html)
+ [Performance benefits of linking R to multithreaded math libraries](http://blog.revolutionanalytics.com/2010/06/performance-benefits-of-multithreaded-r.html)

Among the most important additions to Microsoft R are the **RevoScaleR** and **RevoPemaR** packages. These are R packages that have been written largely in C or C++ for better performance.

+ **RevoScaleR.** Includes a variety of APIs for data manipulation and analysis. The APIs have been optimized to analyze data sets that are too big to fit in memory and to perform computations distributed over several cores or processors.

   The RevoScaleR APIs also support working with subsets of data for greater scalability. In other words, most RevoScaleR functions can operate on chunks of data, and use updating algorithms to aggregate results. Therefore R solutions based on the RevoScaleR functions can work with very large data sets and are not bound by local memory.

  The RevoScaleR package also supports the .XDF file format for faster movement and storage of data used for analysis. The XDF format uses columnar storage, is portable, and can be used to load and then manipulate data from various sources, including text, SPSS, or an ODBC connection. An example of how to use the XDF format is provided in this tutorial: [Data Science Deep Dive](../../advanced-analytics/r-services/tutorials/data-science-deep-dive-using-the-revoscaler-packages.md)


+ **RevoPemaR.** PEMA stands for Parallel External Memory Algorithm. The **RevoPemaR** package provides APIs that you can use to develop your own parallel algorithms. For more information, see [RevoPemaR Getting Started Guide](https://msdn.microsoft.com/microsoft-r/pemar-getting-started).

## See Also
[Architecture Overview](../../advanced-analytics/r-services/architecture-overview-sql-server-r-services.md)

[New Components in SQL Server to Support R Services](../../advanced-analytics/r-services/new-components-in-sql-server-to-support-r-services.md)

[Security Overview](../../advanced-analytics/r-services/security-overview-sql-server-r-services.md)
