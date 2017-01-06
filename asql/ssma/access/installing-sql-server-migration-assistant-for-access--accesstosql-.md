---
title: "Installing SQL Server Migration Assistant for Access (AccessToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
helpviewer_keywords: 
  - "installing SSMA"
  - "instructions, installation"
  - "instructions, upgrade"
  - "licensing SSMA"
  - "prerequisites for installing SSMA"
  - "procedure, installation"
  - "procedure, licensing"
  - "procedure, upgrading"
  - "removing SSMA"
  - "Setup"
  - "uninstalling SSMA"
  - "upgrading SSMA"
ms.assetid: dd50eebd-75df-4e0d-8c4d-88b511aae4c7
caps.latest.revision: 31
ms.author: "lonnyb"
manager: "lonnyb"
---
# Installing SQL Server Migration Assistant for Access (AccessToSQL)
Microsoft SQL Server Migration Assistant (SSMA) for Access is installed by using a Windows Installer-based wizard. This topic provides information about the installation prerequisites, a link to the latest version of SSMA, and instructions for installing, licensing, uninstalling, and upgrading SSMA.  
  
## Prerequisites  
Before you install SSMA, make sure that your system meets the following requirements:  
  
-   Windows 7 or a later version, or Windows Server 2008 or a later version.  
  
-   Microsoft Windows Installer 3.1 or a later version.  
  
-   The Microsoft .NET Framework version 4.0 or a later version. The .NET Framework version 4.0 is available on the SQL Server product disc, and from the [Microsoft .NET Framework Developer Center](http://go.microsoft.com/fwlink/?LinkId=48882) Web site.  
  
-   Access to and sufficient permissions on the computer that hosts the target instance of SQL Server/SQL Azure DB where you will be migrating database objects and data.  
  
-   DAO provider version 12.0 or 14.0. You can install DAO provider from Microsoft Office 2010/2007 product or download it from Microsoft web site.  
  
-   The SQL Server Native Access Client (SNAC) version 10.5 and above for migration to SQL Azure. You can obtain the latest version of SNAC from [Microsoft® SQL Server® 2008 R2 Feature Pack](http://go.microsoft.com/fwlink/?LinkId=196940)  
  
-   4 GB RAM recommended.  
  
## Installing SSMA  
SSMA is a Web download. To download the latest version, see the [SQL Server Migration Assistant download page](http://aka.ms/ssmaforaccess).  
  
After you download the latest version, you must extract the installation files from before you can install SSMA.  
  
**To install the SSMA**  
  
1.  Double-click SSMA for Access *n*.Install.exe, where *n* is the build number.  
  
2.  On the Welcome page, click **Next**.  
  
    If you do not have the prerequisites installed, a message will appear that indicates that you must first install required components. Make sure that you have installed all prerequisites, and then run the installation program again.  
  
3.  Read the End User License Agreement. If you agree, select **I accept the terms in the license agreement**, and then click **Next**.  
  
4.  On the Choose Setup Type page, click **Typical**.  
  
5.  Click **Install**.  
  
> [!IMPORTANT]  
> 1.  Please uninstall all prior versions of SSMA for Access before installing the new version.  
  
The default installation location is C:\Program Files\Microsoft SQL Server Migration Assistant for Access.  
  
## Uninstalling SSMA for Access  
Uninstall SSMA by using **Add or Remove Programs** in Control Panel. Be aware that uninstalling the program does not delete SSMA project files, or log files.  
  
**To uninstall SSMA**  
  
1.  Click **Start**, click **Control Panel**, and then click **Add or Remove Programs**.  
  
2.  Select **Microsoft SQL Server Migration Assistant for Access**, and then click **Remove**.  
  
## Upgrading to a Later Version  
If you want to upgrade to a later version of SSMA for Access, you must first uninstall SSMA for Access and then install the newer version. Follow the instructions earlier in this topic for uninstalling and installing.  
  
If you open a project from an earlier version of SSMA for Access, SSMA will ask if you want to convert the project to the newer version. You must click **Yes** to work with the project in the newer version of SSMA.  
  
## See Also  
[Preparing Access Databases for Migration](http://msdn.microsoft.com/en-us/9b80a9e0-08e7-4b4d-b5ec-cc998d3f5114)  
[Migrating Access Databases to SQL Server](http://msdn.microsoft.com/en-us/76a3abcf-2998-4712-9490-fe8d872c89ca)  
[Linking Access Applications to SQL Server](http://msdn.microsoft.com/en-us/82374ad2-7737-4164-a489-13261ba393d4)  
  
