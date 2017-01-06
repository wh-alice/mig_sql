---
title: "Deploying the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3ad3508d-d9b1-47fb-a63b-21cdc3ed44e0
caps.latest.revision: 26
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# Deploying the JDBC Driver
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When you deploy an application that depends on the Microsoft JDBC Driver for SQL Server, you must redistribute the JDBC driver together with your application. Unlike Windows Data Access Components (Windows DAC), which is a component of the Windows operating system, the JDBC driver is considered to be a component of SQL Server.  
  
 There are two approaches to deploying the JDBC driver with your application. One is to include the JDBC driver files as part of your own custom installation package. The second approach involves using the JDBC installation package provided by Microsoft, which you can download from the [Microsoft JDBC Driver for SQL Server Developer Center](http://go.microsoft.com/fwlink/?LinkId=70166).  
  
 The following sections discuss how to use the JDBC installation package on Windows and UNIX operating systems.  
  
> [!NOTE]  
>  For information about deploying Java applications in general, see the Java website.  
  
## Deploying the JDBC Driver on Windows Systems  
 When you deploy the JDBC driver on Windows operating systems, you must use the executable zip file version of the installation package, which is typically named `sqljdbc_<version>_<language>.exe`.  
  
 To run the executable zip file silently, you must use the `/auto` command-line option on the command line or in a batch file as in the following:  
  
 `sqljdbc_<version>_<language>.exe /auto`  
  
> [!NOTE]  
>  When you use the `/auto` option it is not a truly silent installation, as a WinZip dialog box still appears on the user's screen. However, you will not need to interact with it and it closes as soon as the unzip operation is complete.  
  
## Deploying the Driver on UNIX Systems  
 When you deploy the JDBC driver on UNIX operating systems, you must use the gzip file version of the installation package, which is typically named `sqljdbc_<version>_<language>.tar.gz`.  
  
 Before you install the JDBC driver, make sure that both the gzip and tar utilities are installed on the user's system, and that the folders that contain the executables for both utilities are added to the PATH environment variable.  
  
 To unpack the zipped tar file, navigate to the directory where you want the driver unpacked and type the following command:  
  
 `gzip -d sqljdbc_<version>_<language>.tar.gz`  
  
 To unpack the tar file, move it to the directory where you want the driver installed and type the following command:  
  
 `tar –xf sqljdbc_<version>_<language>.tar`  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  