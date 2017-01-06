---
title: "Download SQL Server Management Studio (SSMS) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
keywords: 
  - "install ssms, download ssms, latest ssms"
  - "SQL Server Management Studio"
  - "ssms.exe"
  - "sql man studio"
  - "sql management studio"
  - "sql management studio install"
  - "download sql management studio"
  - "ms sql management studio"
  - "install sql management studio"
  - "ssms download"
  - "sql server ssms"
  - "ssms express"
ms.assetid: adafeeef-4255-4924-8042-02f503d599ca
caps.latest.revision: 140
ms.author: "sstein"
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
  - "zh-cn"
  - "zh-tw"
---
# Download SQL Server Management Studio (SSMS)
SQL Server Management Studio (SSMS) is an integrated environment for accessing, configuring, managing, administering, and developing all components of SQL Server. SSMS combines a broad group of graphical tools with a number of rich script editors to provide developers and administrators of all skill levels access to SQL Server. This release features improved compatibility with previous versions of SQL Server, a stand-alone web installer, and toast notifications within SSMS when new releases become available.  

    
| ![download](../ssdt/media/download.png) Download SQL Server Management Studio (SSMS)  |  |
|:---|:---|
|**[Download SQL Server Management Studio (16.5.1)](https://go.microsoft.com/fwlink/?linkid=837453)**|Current GA release for production use.|
|**[Download SQL Server Management Studio - Release Candidate](../ssms/sql-server-management-studio--ssms----release-candidate.md)**|Includes support for SQL Server vNext CTP1, and works side-by-side with 16.x, but not recommended for production use.| 


> [!NOTE]
> * SSMS releases are now branded numerically, not by months.
> * This generally available release of SSMS is free and does not require a SQL Server license to install and use.  


## SQL Server Management Studio   
**Version Information**  
  
The release number: 16.5.1  
The build number for this release: 13.0.16100.1
  
**Supported SQL Server versions**  
  
* This version of SSMS works with all [supported versions of SQL Server (SQL Server 2008 - SQL Server 2016),](https://support.microsoft.com/en-us/lifecycle?C2=1044) and provides the greatest level of support for working with the latest cloud features in Azure SQL Database, and Azure SQL Data Warehouse.  
* There is no explicit block for SQL Server 2000 or SQL Server 2005, but some features may not work properly.  
* Additionally, one SSMS 16.x release or SSMS 2016 can be installed side by side with previous versions of SSMS 2014 and earlier. 
  
**Supported Operating systems**  
  
This release of SSMS supports the following platforms when used with the latest available service pack:   
 Windows 10, Windows 8, Windows 8.1, Windows 7 (SP1), Windows Server 2012 (64-bit), Windows Server 2012 R2 (64-bit), Windows Server 2008 R2 (64-bit)  
   
 **Available Languages**  
> [!NOTE]  
> Non-English localized releases of SSMS require the [KB 2862966 security update package](https://support.microsoft.com/en-us/kb/2862966) if installing on: Windows 8, Windows 7, Windows Server 2012, and Windows Server 2008 R2. 
  
 This release of SSMS can be installed in the following languages:  
[Chinese (People's Republic of China)](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x804) | [Chinese (Taiwan)](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x404) | [English (United States)](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x409) | [French](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x40c)  
[German](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x407) | [Italian](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x410) | [Japanese](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x411) | [Korean](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x412) | [Portuguese (Brazil)](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x416) | [Russian](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x419) | [Spanish](http://go.microsoft.com/fwlink/?linkid=837453&clcid=0x40a)  

 
## Changelog  

16.5.1

* Fixed an issue where Invoke-Sqlcmd erroneously inserts multiple rows when check constraint occurs. [Microsoft Connect Item: 811560](https://connect.microsoft.com/SQLServer/feedback/details/811560)

* Fixed an issue where non-ENU language versions do not work completely when creating Availability Groups.
 
* Fixed an issue where clicking query plan XML does not open the proper SSMS UI.



For the full list of features, see   
                [SQL Server Management Studio - Changelog (SSMS)](../ssms/sql-server-management-studio---changelog--ssms-.md)  
  
To see the list of known issues and work arounds, see   
                [SQL Server Management Studio -  Release Notes](../ssms/sql-server-management-studio----release-notes.md)  
  
For information about user data collection, see   
                [SQL Server Privacy Statement](http://www.microsoft.com/privacystatement/en-us/SQLServer/Default.aspx).  
  
## Previous releases  
[Previous SQL Server Management Studio Releases](../ssms/previous-sql-server-management-studio-releases.md)  
  
## Feedback  
  
![needhelp_person_icon](../ssms/media/needhelp_person_icon.png) [SQL Client Tools Forum](https://social.msdn.microsoft.com/Forums/en-US/home?forum=sqltools) |  [Log an issue or suggestion at Microsoft Connect](https://connect.microsoft.com/SQLServer/Feedback).  
  
## See Also  
[Tutorial: SQL Server Management Studio](http://msdn.microsoft.com/en-us/d2bade70-07cf-4d94-b5d2-88aecb538ed1)  
[SQL Server Management Studio documentation](https://msdn.microsoft.com/library/hh213248(v=sql.130).aspx)  
[Microsoft SQL Server](https://msdn.microsoft.com/library/bb545450.aspx)  
[Additional updates and service packs](https://technet.microsoft.com/sqlserver/ff803383.aspx)  
[Download SQL Server Data Tools (SSDT)](../ssdt/download-sql-server-data-tools--ssdt-.md)  


