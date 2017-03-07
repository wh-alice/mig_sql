---
title: "Best Practice with R Services | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f8f1f119-8583-4243-9d30-44237a66288f
caps.latest.revision: 12
---
# Best Practice with R Services
[!INCLUDE[rsql_productname_md](../a9notintoc/includes/rsql-productname-md.md)] provides a platform for developing intelligent applications that uncover new insights. A data scientist can use the power of R language to train and create models using data stored inside SQL. Once the model is ready for production, a data scientist can work with database administrators and SQL engineers to deploy their solution in production. The information in this section provides high level guidance on tuning performance both when creating and training models, and when deploying models to production.

> [!NOTE]
> While much of the information in this section is general guidance on configuring [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)], some is specific to RevoScaleR analytic functions.
  
## Machine configuration

The information in this section provides general guidance on the hardware and network configuration of the machine that is used to host [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)]. It should be considered in addition to the general [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] performance tuning information provided in the [Performance Center for SQL Server Database Engine and Azure SQL Database](../relational-databases/security/security-center-for-sql-server-database-engine-and-azure-sql-database.md).

### Processor

[!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] performs tasks in parallel by using the available cores on the machine; the more cores that are available, the better the performance. Since [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] is normally used by multiple users simultaneously, the database administrator should determine the ideal number of cores that are needed to support peak workload computations. While the number of cores may not help for IO bound operations, CPU bound algorithms will benefit from faster CPUs with many cores.

[!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] can take advantage of multiple cores when the __numTasks__ value specified for the SQL compute context is greater than 1.

### Memory

The amount of memory available on the machine can have a large impact on the performance of advanced analytic algorithms. Insufficient memory may impact the degree of parallelism when using the SQL compute context, the chunk size (rows per read operation,) that can be processed, and the number of simultaneous sessions that can be supported.

A minimum of 32GB is highly recommended. If you have more than 32GB available, you can configure the SQL data source to use more rows per read operation to improve performance.

### Power options

On the Windows operating system, the __High Performance__ power option should be used. Using a different power setting will result in decreased or inconsistent performance when using [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)].

### Disk

Training and prediction jobs using [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] are inherently IO bound, and depend on the speed of the disk(s) that the database is stored on. 

> [!NOTE]
> While a solid state drive (SSD) may offer better performance for read operations than a regular hard drive, it is not guaranteed to improve all IO bound performance.

### Paging file

The Windows operating system uses a paging file to manage crash dumps and for storing virtual memory pages. If you notice excessive paging, consider increasing the physical memory on the machine. While having more physical memory does not eliminate the need for paging, it does reduce the need for paging.

The speed of the disk that the page file is stored on can also affect performance. Storing the page file on an SSD, or using multiple page files across multiple SSDs, can improve performance.

See [How to determine the appropriate page file size for 64-bit versions of Windows](https://support.microsoft.com/en-us/kb/2860880) for information on sizing the page file.

### Network

[!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] can use either the __local__ or __SQL Server__ compute context when performing analysis. When using the __local__ compute context, analysis is performed on the client machine and data must be fetched from [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] over the network. The performance hit incurred for this network transfer depends on the size of the data transferred, speed of the network, and other network transfers occurring at the same time.

If the compute context is __SQL Server__, then the analytic functions are executed inside [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)]. The data is local to the analysis task, so no network overhead is introduced. 

When working with large data sets, you should always use the SQL Server compute context.

## Data optimization

### IO

As mentioned previously in the Disk section, the database should be stored on a fast storage media such as an SSD. If multiple drives are available, store the databases on a different drive than [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)].

> [!NOTE]
> [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] requires 8.3 filename support on Windows operating systems. You can use fsutil.exe to determine whether a drive supports 8.3 filenames, or to enable support if it does not. For more information on using fsutil.exe with 8.3 filenames, see [Fsutil 8dot3name](https://technet.microsoft.com/library/ff621566(v=ws.11).aspx).

Disk IO can also greatly impact performance when running rx analytic functions that use multiple iterations during training. For example, rxLogit, rxDTree, rxDForest and rxBTrees all use multiple iterations. When the data source is [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)], these algorithms use temporary files that are optimized to capture the data read from [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)]. These files are automatically cleaned up after the session completes. Having a high performance disk for read/write operations can significantly improve the overall elapsed time for these algorithms.

### Table compression

IO performance can often be improved by using either compression or SQL columnar tables (columnar tables inherently use compression.) Generally, data is often repeated in several columns within a table, so using a columnar store takes advantage of these repetitions when compressing the data.

A columnar table may not be as efficient if there are a lot of insertions into the table, but is a good choice if the data is static or only changes infrequently. If a columnar store is not appropriate, enabling compression on a row major table can be used to improve IO.

For more information, see the following topics:

* [Data Compression](../relational-databases/data-compression/data-compression.md)

* [Enable Compression on a Table or Index](../relational-databases/data-compression/enable-compression-on-a-table-or-index.md)

### Factors

The R language converts strings from tables into factors. Many data source objects take `colInfo` as a parameter to control how the columns are treated. For example, `c(“fruit” = c(type = “factor”, levels=as.character(c(1:3)), newLevels=c(“apple”, “orange”, “banana”)))` will consume integers 1, 2, and 3 from a table and treat them as factors with levels `apple`, `orange`, and `banana`. 

Data scientists often use factor variables in their formula; however, using factors when the source data is an integer will incur a performance hit as integers are converted to strings at run time. If the table column contains strings instead, we can specify the levels using `colInfo` ahead of time as well. For example, `c(“fruit” = c(type = “factor”, levels= c(“apple”, “orange”, “banana”)))`. This will treat the strings as factors as they are read. 

To avoid run time conversions, consider storing levels as integers in the table and consuming them as they are in the formula. If there is no semantic difference in the model generation, then this approach can lead to better performance.

### Data transformation

Data scientists often use transformation functions written in R as part of the analytics computation. The transformation functions must be applied to each row retrieved from the table during the computation. In [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], this transformation happens in batch mode and involves communication between the R interpreter and the analytics engine. To perform the transformation, the data moves from SQL to the analytics engine and then to the R interpreter process and back, so using transformations can adversely affect the performance of the algorithm significantly depending on the amount of data involved.

It is more efficient to have all necessarily columns in the table, or a view, before performing analysis, as this avoids transformations during the computation. If it is not possible to add additional columns to existing tables, consider creating another table or view with the transformed columns and use an appropriate query the retrieve the data.

### Batching

The SQL data source (`RxSqlServerData`) has an option to indicate the batch size (number of rows to process at a time) using the parameter `rowsPerRead`. At run time, algorithms will read the specified numbered of rows at a time. By default, the value of this parameter is set 50,000 to ensure that the algorithms can perform well even on machines with low memory. If the machine has enough available memory, increasing this value to 500,000 or even a million can yield better performance, especially for large tables. 

Increasing this value may not always produce better results and may require some experimentation to determine the optimal value. The benefits of this will be more evident on a large data set with multiple processes (numTasks > 1).

### Parallel processing

To improve the performance of running rx analytic functions inside [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)], [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] relies on parallel processing using the available cores on the [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] machine. Analytics can be performed using __simple parallelism__, or __parallel processes__.

Simple parallelism is used when you run an R script using the __sp_execute_external_script__ stored procedure, and have the __@parallel__ parameter set to __1__. [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] will create multiple parallel processes, up to the __max degree of parallelism MAXDOP__, and run the same script across all processes. Each process only receives a portion of the data, so this is not useful with scripts that must see all the data. For example, training a model. However, it is useful when performing tasks such as batch prediction in parallel. For more information on using simple parallelism, see the __Advanced tips: parallel processing__ section of [Using R Code in Transact-SQL](../advanced-analytics/r-services/tutorials/using-r-code-in-transact-sql-sql-server-r-services.md).

Parallel processing is used when you use rx analytic functions with the SQL compute context. You can set `numTasks` to the number of parallel processes you want to use. The actual number of processes created is controlled by [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)], and may be less than you requested. The number of processes created can never be more than MAXDOP.

> [!NOTE]
> When using `numTasks`, this only specifies the number of processes to create for processing rx analytics; if you specify `numTasks = 2`, and [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] allocates 2 parallel processes, there will also be many other parallel processes created to carry out processing. For example, a coordinator process will be created to aggregate the results of the processes running the rx analytics and deliver the results to the client.

The number of processes that will be created for both simple parallelism and parallel processing depend on a variety of factors such as resource governance, current usage of resources, other sessions, and the query execution plan for the query used with the R script. 

#### Query parallelization

To ensure that the data can be analyzed in parallel, the query used to retrieve the data should be framed in such a way that it can render itself for parallel execution as noted above. 

[!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] supports working with SQL data sources using `RxSqlServerData` to specify the source. The source can be either a table or a query. For example, `RxSqlServerData(table=”airline”, connectionString = sqlConnString) or RxSqlServerData(sqlquery=”select [ArrDelay],[CRSDepTime],[DayOfWeek] from airlineWithIndex where rowNum <= 100000”, connectionString = sqlConnString)`.  As the analytics algorithms pull large volumes of data from the tables, it is important to ensure that the query given to `RxSqlServerData` is optimized for parallel execution. A query that does not result in a parallel execution plan can result in a single process for computation.

[!INCLUDE[ssManStudioFull_md](../a9notintoc/includes/ssmanstudiofull-md.md)] can be used to analyze the execution plan, and address any shortcomings for improving the performance of the query. For example, as simple as a missing index on a table can affect the time taken to execute a query. Some trace flags that can help during this analysis include 8607 and 3604. These can be set using `dbcc traceon(8607,3604, -1)`. Trace flag 8607 shows the optimization output tree, while 3604 redirects the trace output to the client executing the command.

Another oversight that can affect the performance is when the query retrieves more columns than are necessary for the computation. For example, if a formula is based on only 3 variables, and the table has 30 columns, do not use a query such as `select *` or one that selects more columns than needed.

> [!NOTE]
> If a table is specified in the data source instead of a query, [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)] will internally determine the necessary columns to fetch from the table; however, this approach is unlikely to result in parallel execution.

### Reorganization

The [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] Database Engine automatically maintains indexes whenever insert, update, or delete operations are made to the underlying data. Over time, these modifications can cause the information in the index to become scattered (fragmented) in the database. Heavily fragmented indexes can degrade the query performance and cause your application to respond slowly. This can be fixed by reorganizing or rebuilding the index. Rebuilding an index drops and re-creates the index. The following [!INCLUDE[tsql_md](../a9notintoc/includes/tsql-md.md)] statements will rebuild a simple index on a table.

    ALTER INDEX simple_index ON airlineWithIndex REBUILD
    GO

### Algorithm parameters

Many rx training algorithms support parameters to control how the training model is generated, which can be modified to increase the speed of computation. While the accuracy and correctness of the model is important, the performance of the algorithm may be equally important. It may be possible to improve the performance without reducing the accuracy or correctness in some cases. For example, `rxDTree` supports the `maxDepth` parameter that controls the maximum tree depth. As `maxDepth` is increased, performance can degrade, so it is important to analyze the benefits of increasing the depth vs. the performance impact. 

One of the parameters that can be used with `rxLinMod` and `rxLogit` is the `cube` argument. This argument can be used when the first dependent variable of the formula is a factor variable. If `cube` is set to `TRUE`, the regression is done using a partitioned inverse, it may be faster and use less memory than standard regression computation. If the formula has a large number of variables, the performance gain can be significant.

The RevoScaleR users guide has some useful information for controlling the model fit for various algorithms. For example, with `rxDTree` you can control the balance between time complexity and prediction accuracy by adjusting parameters such as `maxNumBins`, `maxDepth`, `maxComplete`, and `maxSurrogate`. Increasing the depth to beyond 10 or 15 can make the computation very expensive.

For more information on tuning performance for `rxDForest` and `rxDTree`, see [Performance tuning options for rxDForest/rxDTree](https://support.microsoft.com/en-us/kb/3104235).

### Model and prediction

Once the training has completed and the best model selected, we recommend storing the model in the database so that it is readily available for predictions. For on-line transaction processing that requires prediction, loading the pre-computed model from the database for the prediction is very efficient. An example of this is provided in the [Performance case study](#perfromance-case-study) section below.

> [!NOTE] If fast prediction using a stored model and integrating the analytics into an application is an important scenario, we recommend __DeployR__. It can be used to easily integrate R analytics inside web, desktop, mobile, and dashboard applications. In particular, it is well suited for storing a model and then performing single row prediction using the stored model. For more information, see [About DeployR](https://msdn.microsoft.com/microsoft-r/rserver/deployr-about).

### Resource governance

[!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] supports resource governance for controlling the various resources used by [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)]. For example, the default value for memory consumption by R is limited to 20% of the total memory available for [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)]. This is done to ensure that [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] workflows are not severely affected by long running R jobs. However, these limits can be changed by the database administrator. 

The resources limited are __MAX_CPU_PERCENT__, __MAX_MEMORY_PERCENT__, and __MAX_PROCESSES__. The [!INCLUDE[tsql_md](../a9notintoc/includes/tsql-md.md)] statement `select * from sys.resource_governor_external_resource_pools` can be used to view the current settings. If [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] is primarily used for R services, then it might be helpful to increase MAX_CPU_PERCENT to 40% or 60%. If there many R sessions using the same [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] at the same time, all three will should be increased. To change a value, the [!INCLUDE[tsql_md](../a9notintoc/includes/tsql-md.md)] statement can be used. For example, `ALTER EXTERNAL RESOURCE POOL [default] WITH (MAX_MEMORY_PERCENT = 40)` sets the memory usage to 40%. The following is an example of setting all three at once: `ALTER EXTERNAL RESOURCE POOL [default] WITH (MAX_CPU_PERCENT = 40, MAX_MEMORY_PERCENT = 50, MAX_PROCESSES = 20)`. 

> [!NOTE]
> To make changes to these settings take effect immediately, use `ALTER RESOURCE GOVERNOR RECONFIGURE` command after changing a memory, CPU, or max process setting. 

For more information, see [Resource Governor](../relational-databases/resource-governor/resource-governor.md).

## Performance case study

To demonstrate the effect of the guidance provided in the previous sections, tests were run using the tables from the Airline data set. There are six tables, with 10M rows in each table:

| Table name | Description |
| ---------- | ----------- |
| airline | Data converted from original xdf file using rxDataStep. |
| airlineWithIntCol | DayOfWeek converted to an integer rather than a string. Also adds a rowNum column. |
| airlineWithIndex | The same data as the airlineWithIntCol table, but with a single clustered index using the rowNum column. |
| airlineWithPageComp | The same data as the airlineWithIndex table, but with page compression enabled. Also adds two columns; CRSDepHour and Late, which are computed from CRSDepTime and ArrDelay. |
| airlineWithRowComp | The same data as the airlineWithIndex table, but with row compression enabled. Also adds two columns; CRSDepHour and Late which are computed from CRSDepTime and ArrDelay. 
| airlineColumnar | A columnar store with a single clustered index. This table is populated with data from a cleaned up csv file. |

The database containing these tables, as well as the scripts used to perform the tests described in this section, are available at [TBD].

Each test was run six times, the time of the first run (cold run,) was dropped. To allow for the occasional outlier, the maximum time for the remaining five runs was also dropped. The average of the four remaining runs was taken to compute the average elapsed runtime of each test. R garbage collection was induced before each test. The value of `rowsPerRead` for each test was set to 500000.

### Data size when using compression and a columnar store table

The following are the results of using compression and a columnar table to reduce the size of the data:

| Table name | Rows | Reserved | Data | index_size | Unused | % Saving (reserved) |
| ---------- | ---- | -------- | ---- | ---------- | ------ | ------------------- |
| airlineWithIndex | 10000000 | 2978816 KB | 2972160 KB | 6128 KB | 528 KB | 0 |
| airlineWithPageComp | 10000000 | 625784 KB | 623744 KB | 1352 KB | 688 KB | 79% |
| airlineWithRowComp | 10000000 | 1262520 KB | 1258880 KB | 2552 KB | 1088 KB | 58% |
| airlineColumnar | 9999999 | 201992 KB | 201624 KB | n/a | 368 KB | 93% |

### Using integer vs. string in formula

In this experiment, `rxLinMod` was used with the airline table (where DayOfWeek is a string) and airlineWithIndex (where DayOfWeek is an integer). For the first case, `colInfo` was used to specify the factor levels (`Monday`, `Tuesday`, …). For the second, `colInfo` was not specified. In both case, the same formula was used. The formula used is `ArrDelay ~ CRSDepTime + DayOfWeek`. The following results clearly shows the benefit of using integer vs string:

| Table name | Test name | Average time |
| ---------- | --------- | ------------ |
| airline | FactorCol | 10.72 |
| airlineWithIntCol | IntCol | 3.4475 |

### Using compression

In this experiment, `rxLinMod` was used with the airlineWithIndex, airlineWithPageComp, and airlineWithRowComp tables. The same formula and query was used for all tables. 

| Table name | Test name | numTasks | Average time |
| ---------- | --------- | -------- | ------------ |
| airlineWithIndex | NoCompression | 1 | 5.6775 |
| &nbsp; | &nbsp; | 4 | 5.1775 |
| airlineWithPageComp | PageCompression | 1 | 6.7875 |
| &nbsp; | &nbsp; | 4 | 5.3225 |
| airlineWithRowComp | RowCompression | 1 | 6.1325 |
| &nbsp; | &nbsp; | 4 | 5.2375 |

Note that compression alone (`numTasks` set to `1`,) does not seem to help in this example, as the increase in CPU to handle compression compensates for the decrease in IO time. However, when the test is run in parallel by setting `numTasks` to `4`, the average time decreases. For larger data sets, the effect of compression may be more noticeable. Compression depends on the data set and values, so experimentation may be needed to determine the effect compression has on your data set.

### Avoiding transformation function

In this experiment, `rxLinMod` is used with the airlineWithIndex table both with and without using a transformation function.  

| Test name | Average time |
| --------- | ------------ |
| WithTransformation | 5.1675 |
| WithoutTransformation | 4.7 |

Note that there is improvement in time when not using a transformation function (using columns pre-computed and persisted in table). The savings will be much greater if there are many more transformations and the data set is larger (> 100M).

### Using columnar store

In this experiment, `rxLinMod` was used with the airlineWithIndex and airlineColumnar tables without using any transformation. The results indicate that the columnar store can perform better than row store. There will be a significant difference in performance on larger data set (> 100 M).  

| Table name | Test name |Average time |
| ---------- | --------- | ------------ |
| airlineWithIndex | RowStore | 4.67 |
| airlineColumnar | ColStore | 4.555 |

### Effect of the cube parameter

In this experiment, `rxLinMod` is used with the airline table where `DayOfWeek` is stored as string. The formula used is `ArrDelay ~ Origin:DayOfWeek + Month + DayofMonth + CRSDepTime`. The results clearly show that the use of `cube` parameter helps with performance. 

| Test name | Cube parameter | numTasks | Average time | One row predict (ArrDelay_Pred) |
| --------- | -------------- | -------- | ------------ | ------------------------------- |
| CubeArgEffect | `cube = F` | 1 | 91.0725 | 9.959204 |
| &nbsp; | &nbsp; | 4 | 44.09 | 9.959204 |
| &nbsp; | `cube = T` | 1 | 21.1125 | 9.959204 |
| &nbsp; | &nbsp; | 4 | 8.08 | 9.959204 |

### Effect of maxDepth for rxDTree

In this experiment, `rxDTree` is used with the airlineColumnar table. Several different values for `maxDepth` were used to demonstrate how it affects the run time complexity. As the depth increases, the total number of nodes increase exponentially and the elapsed time will increase significantly. For this test `numTasks` was set to `4`.

| Test name | maxDepth | Average time |
| --------- | -------- | ------------ |
| TreeDepthEffect | 1 | 10.1975 |
| &nbsp; | 2 | 13.2575 |
| &nbsp; | 4 | 19.27 |
| &nbsp; | 8 | 45.5775 |
| &nbsp; | 16 | 339.54 |

### Effect of power option

In this experiment, `rxLinMod` was used with the airlineWithIntCol table while Windows was set to both Balanced as well as High Performance power options. For all tests, `numTasks` was set to `1`. The test was run 6 times, and was performed twice under both power options to demonstrate the variability of results when using the Balanced power option. The results show that the numbers are more consistent and faster for the high performance power option. 

__High Performance__ power option:

| Test name | Run # | Elapsed time | Average time |
| --------- | ----- | ------------ | ------------ |
| IntCol | 1 | 3.57 seconds | &nbsp; |
| &nbsp; | 2 | 3.45 seconds | &nbsp; |
| &nbsp; | 3 | 3.45 seconds | &nbsp; |
| &nbsp; | 4 | 3.55 seconds | &nbsp; |
| &nbsp; | 5 | 3.55 seconds | &nbsp; |
| &nbsp; | 6 | 3.45 seconds | &nbsp; |
| &nbsp; | &nbsp; | &nbsp; | 3.475 |
| &nbsp; | 1 | 3.45 seconds | &nbsp; |
| &nbsp; | 2 | 3.53 seconds | &nbsp; |
| &nbsp; | 3 | 3.63 seconds | &nbsp; |
| &nbsp; | 4 | 3.49 seconds | &nbsp; |
| &nbsp; | 5 | 3.54 seconds | &nbsp; |
| &nbsp; | 6 | 3.47 seconds | &nbsp; |
| &nbsp; | &nbsp; | &nbsp; | 3.5075 |

__Balanced__ power option:

| Test name | Run # | Elapsed time | Average time |
| --------- | ----- | ------------ | ------------ |
| IntCol | 1 | 3.89 seconds | &nbsp; |
| &nbsp; | 2 | 4.15 seconds | &nbsp; |
| &nbsp; | 3 | 3.77 seconds | &nbsp; |
| &nbsp; | 4 | 5 seconds | &nbsp; |
| &nbsp; | 5 | 3.92 seconds | &nbsp; |
| &nbsp; | 6 | 3.8 seconds | &nbsp; |
| &nbsp; | &nbsp; | &nbsp; | 3.91 |
| &nbsp; | 1 | 3.82 seconds | &nbsp; |
| &nbsp; | 2 | 3.84 seconds | &nbsp; |
| &nbsp; | 3 | 3.86 seconds | &nbsp; |
| &nbsp; | 4 | 4.07 seconds | &nbsp; |
| &nbsp; | 5 | 4.86 seconds | &nbsp; |
| &nbsp; | 6 | 3.75 seconds | &nbsp; |
| &nbsp; | &nbsp; | &nbsp; | 3.88 |

### Prediction using a stored model

In this experiment, a model is created and stored to a database. Then the stored model is loaded from the database and predictions created using a one row data frame in memory (local compute context.) The time taken to train, save, and load the model and predict is shown below. This is clearly a faster way to do prediction. The test results show the time to save the model and the time taken to load the model and predict. 

| Table name | Test name | Average time (to train model) | Time to save/load model |
| ---------- | --------- | ----- | ----- |
| airline | SaveModel | 21.59 | 2.08 | 
| &nbsp; | LoadModelAndPredict | &nbsp; |  2.09 (includes time to predict) |


### Performance troubleshooting

The tests used in this section produce output files for each run by using the `reportProgress` parameter, which is passed to the tests with value `3`. The console output is directed to a file in the output directory. The output file contains information regarding the time spent in IO, transition time, and compute time. These times are useful for troubleshooting and diagnosis. The test scripts process these times for the various runs to come up with the average time over runs. These test scripts and techniques can also be useful in trouble shooting issues when using rx analytic functions on your [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)]. For example, the following shows the sample times for a run. The main timings of interest are Total read time (IO time) and Transition time (overhead in setting up processes for sql computation).

    Running IntCol Test. Using airlineWithIntCol table.  
        run  1  took  3.66  seconds  
        run  2  took  3.44  seconds  
        run  3  took  3.44  seconds  
        run  4  took  3.44  seconds  
        run  5  took  3.45  seconds  
        run  6  took  3.75  seconds  

    Average Time:  3.4425  
                    metric   time    pct 
    1           Total time 3.4425 100.00 
    2 Overall compute time 2.8512  82.82 
    3      Total read time 2.5378  73.72 
    4      Transition time 0.5913  17.18 
    5    Total non IO time 0.3134   9.10 