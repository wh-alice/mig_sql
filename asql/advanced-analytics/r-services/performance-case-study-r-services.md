---
title: "Performance Case Study (R Services) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0e902312-ad9c-480d-b82f-b871cd1052d9
caps.latest.revision: 6
ms.author: "jeannt"
manager: "jhubbard"
---
# Performance Case Study (R Services)

To demonstrate the effect of the guidance provided in the previous sections, tests were run using the tables from the Airline data set. 

## Tests and Example Data

There are six tables, with 10M rows in each table:

| Table name | Description |
| ---------- | ----------- |
| _airline_ | Data converted from original xdf file using *rxDataStep*. |
| _airlineWithIntCol_ | *DayOfWeek* converted to an integer rather than a string. Also adds a *rowNum* column. |
| _airlineWithIndex_ | The same data as the *airlineWithIntCol* table, but with a single clustered index using the *rowNum* column. |
| _airlineWithPageComp_ | The same data as the *airlineWithIndex* table, but with page compression enabled. Also adds two columns, *CRSDepHour* and *Late*, which are computed from *CRSDepTime* and *ArrDelay*. |
| _airlineWithRowComp_ | The same data as the *airlineWithIndex* table, but with row compression enabled. Also adds two columns, *CRSDepHour* and *Late* which are computed from *CRSDepTime* and *ArrDelay*. 
| _airlineColumnar_ | A columnar store with a single clustered index. This table is populated with data from a cleaned up csv file. |

The scripts used to perform the tests described in this section, as well as links to the example data used for the tests, are available at [https://github.com/Microsoft/SQL-Server-R-Services-Samples/tree/master/PerfTuning](https://github.com/Microsoft/SQL-Server-R-Services-Samples/tree/master/PerfTuning).

Each test was run six times, the time of the first run (cold run,) was dropped. To allow for the occasional outlier, the maximum time for the remaining five runs was also dropped. The average of the four remaining runs was taken to compute the average elapsed runtime of each test. R garbage collection was induced before each test. The value of *rowsPerRead* for each test was set to 500000.

## Data Size When Using Compression and a Columnar Store Table

The following are the results of using compression and a columnar table to reduce the size of the data:

| Table name | Rows | Reserved | Data | index_size | Unused | % Saving (reserved) |
| ---------- | ---- | -------- | ---- | ---------- | ------ | ------------------- |
| airlineWithIndex | 10000000 | 2978816 KB | 2972160 KB | 6128 KB | 528 KB | 0 |
| airlineWithPageComp | 10000000 | 625784 KB | 623744 KB | 1352 KB | 688 KB | 79% |
| airlineWithRowComp | 10000000 | 1262520 KB | 1258880 KB | 2552 KB | 1088 KB | 58% |
| airlineColumnar | 9999999 | 201992 KB | 201624 KB | n/a | 368 KB | 93% |

## Using Integer vs. String in Formula

In this experiment, `rxLinMod` was used with the airline table (where *DayOfWeek* is a string) and *airlineWithIndex* (where *DayOfWeek* is an integer). For the first case, `colInfo` was used to specify the factor levels (`Monday`, `Tuesday`, …). For the second, `colInfo` was not specified. In both case, the same formula was used. The formula used is `ArrDelay ~ CRSDepTime + DayOfWeek`. The following results clearly shows the benefit of using integer vs string:

| Table name | Test name | Average time |
| ---------- | --------- | ------------ |
| airline | FactorCol | 10.72 |
| airlineWithIntCol | IntCol | 3.4475 |

## Using Compression

In this experiment, `rxLinMod` was used with the *airlineWithIndex*, *airlineWithPageComp*, and *airlineWithRowComp* tables. The same formula and query was used for all tables. 

| Table name | Test name | numTasks | Average time |
| ---------- | --------- | -------- | ------------ |
| airlineWithIndex | NoCompression | 1 | 5.6775 |
| &nbsp; | &nbsp; | 4 | 5.1775 |
| airlineWithPageComp | PageCompression | 1 | 6.7875 |
| &nbsp; | &nbsp; | 4 | 5.3225 |
| airlineWithRowComp | RowCompression | 1 | 6.1325 |
| &nbsp; | &nbsp; | 4 | 5.2375 |

Note that compression alone (*numTasks* set to 1,) does not seem to help in this example, as the increase in CPU to handle compression compensates for the decrease in IO time. However, when the test is run in parallel by setting *numTasks* to 4, the average time decreases. For larger data sets, the effect of compression may be more noticeable. Compression depends on the data set and values, so experimentation may be needed to determine the effect compression has on your data set.

## Avoiding Transformation Function

In this experiment, `rxLinMod` is used with the airlineWithIndex table both with and without using a transformation function.  

| Test name | Average time |
| --------- | ------------ |
| WithTransformation | 5.1675 |
| WithoutTransformation | 4.7 |

Note that there is improvement in time when not using a transformation function (using columns pre-computed and persisted in table). The savings will be much greater if there are many more transformations and the data set is larger (> 100M).

## Using Columnar Store

In this experiment, `rxLinMod` was used with the airlineWithIndex and airlineColumnar tables without using any transformation. The results indicate that the columnar store can perform better than row store. There will be a significant difference in performance on larger data set (> 100 M).  

| Table name | Test name |Average time |
| ---------- | --------- | ------------ |
| airlineWithIndex | RowStore | 4.67 |
| airlineColumnar | ColStore | 4.555 |

## Effect of the Cube Parameter

In this experiment, `rxLinMod` is used with the airline table where `DayOfWeek` is stored as string. The formula used is `ArrDelay ~ Origin:DayOfWeek + Month + DayofMonth + CRSDepTime`. The results clearly show that the use of `cube` parameter helps with performance. 

| Test name | Cube parameter | numTasks | Average time | One row predict (ArrDelay_Pred) |
| --------- | -------------- | -------- | ------------ | ------------------------------- |
| CubeArgEffect | `cube = F` | 1 | 91.0725 | 9.959204 |
| &nbsp; | &nbsp; | 4 | 44.09 | 9.959204 |
| &nbsp; | `cube = T` | 1 | 21.1125 | 9.959204 |
| &nbsp; | &nbsp; | 4 | 8.08 | 9.959204 |

## Effect of maxDepth for rxDTree

In this experiment, `rxDTree` is used with the airlineColumnar table. Several different values for *maxDepth* were used to demonstrate how it affects the run time complexity. As the depth increases, the total number of nodes increase exponentially and the elapsed time will increase significantly. For this test *numTasks* was set to 4.

| Test name | maxDepth | Average time |
| --------- | -------- | ------------ |
| TreeDepthEffect | 1 | 10.1975 |
| &nbsp; | 2 | 13.2575 |
| &nbsp; | 4 | 19.27 |
| &nbsp; | 8 | 45.5775 |
| &nbsp; | 16 | 339.54 |

## Effect of Power Option

In this experiment, `rxLinMod` was used with the airlineWithIntCol table while Windows was set to both Balanced as well as High Performance power options. For all tests, *numTasks* was set to 1. The test was run 6 times, and was performed twice under both power options to demonstrate the variability of results when using the Balanced power option. The results show that the numbers are more consistent and faster for the high performance power option. 

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

## Prediction Using a Stored Model

In this experiment, a model is created and stored to a database. Then the stored model is loaded from the database and predictions created using a one row data frame in memory (local compute context). The time taken to train, save, and load the model and predict is shown below. This is clearly a faster way to do prediction. The test results show the time to save the model and the time taken to load the model and predict. 

| Table name | Test name | Average time (to train model) | Time to save/load model |
| ---------- | --------- | ----- | ----- |
| airline | SaveModel | 21.59 | 2.08 | 
| &nbsp; | LoadModelAndPredict | &nbsp; |  2.09 (includes time to predict) |


## Performance Troubleshooting

The tests used in this section produce output files for each run by using the *reportProgress* parameter, which is passed to the tests with value `3`. The console output is directed to a file in the output directory. The output file contains information regarding the time spent in IO, transition time, and compute time. These times are useful for troubleshooting and diagnosis. The test scripts process these times for the various runs to come up with the average time over runs. These test scripts and techniques can also be useful in trouble shooting issues when using rx analytic functions on your [!INCLUDE[ssNoVersion_md](../../a9notintoc/includes/ssnoversion-md.md)]. For example, the following shows the sample times for a run. The main timings of interest are Total read time (IO time) and Transition time (overhead in setting up processes for computation).

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
 
 ## See Also
 [SQL Server R Services Performance Tuning Guide](../../advanced-analytics/r-services/sql-server-r-services-performance-tuning.md)
 
 [SQL Server Configuration for R Services](../../advanced-analytics/r-services/sql-server-configuration-r-services.md)
 
 [R and Data Optimization](../../advanced-analytics/r-services/r-and-data-optimization-r-services.md)