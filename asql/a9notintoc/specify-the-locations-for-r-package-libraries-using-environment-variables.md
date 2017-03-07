---
title: "Specify the Locations for R Package Libraries using Environment Variables | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-11-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 93911c13-ac03-401e-96d6-ad6b29a95c26
caps.latest.revision: 8
ms.author: "jeannt"
manager: "jhubbard"
---
# Specify the Locations for R Package Libraries using Environment Variables
  This topic describes how you can save the locations of your R libraries in a Windows environment variable.  
  
 If you need to install new R packages on a computer and you are not an administrator on the computer, typically the packages cannot be downloaded to the default location and must be saved in a private, user library. Thereafter, to reference the package in your code, you must add the location to libpath, or reference the full package path, like this:  
  
```  
library("c:/Temp/Downloads/PrivateRLibrary/packagename")  
```  
  
 However, in a Windows environment, you can easily add the paths to new libraries or edit the paths to existing R libraries  by using the environment variable **R_LIB_PATHS**.  
  
 There are other options for managing paths to R libraries, which include editing the R configuration file. For more information about configuring R, see this FAQ: [R for Windows FAQ (CRAN)](https://cran.r-project.org/bin/windows/base/rw-FAQ.html).  
  
### To define an environment variable for R libraries  
  
1.  Open **Control Panel** and search for **environment**.  
  
2.  **As administrator**  
  
     Click **Edit the system environment variables**, and then click **Environment Variables**.  
  
     **As non administrator**  
  
    1.  Open **Control Panel**, click **User Accounts**, and click **Change my environment variables**.  
  
    2.  Click **Edit the system environment variables**.  
  
3.  In the **User variables** pane, click **New**.  
  
    -   **Variable name**: Type **R_LIBS_USER**  
  
    -   **Variable value**: Type in the set of libraries as a single string delimited by semicolons. Be sure to use Windows notation for paths, replacing forward slashes with backward slashes.  
  
         For example, this value specifies the default installation directory for the libraries used by [!INCLUDE[rsql_productname](../a9notintoc/includes/rsql-productname-md.md)], plus a set of user libraries.  
  
        ```  
        c:\Users\<username>\Documents\R\win-library\3.2;c:\Program Files\RRO\RRO-3.2.2-for-RRE-7.5.0\R-3.2.2\library  
        ```  
  
## See Also  
 [Managing and Monitoring R Solutions](../advanced-analytics/r-services/managing-and-monitoring-r-solutions.md)  
  
  