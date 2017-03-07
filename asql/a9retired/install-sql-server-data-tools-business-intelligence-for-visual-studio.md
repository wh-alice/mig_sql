---
title: "Install SQL Server Data Tools - Business Intelligence for Visual Studio | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 68ed2924-9104-4c79-974f-0e87212ec2e1
caps.latest.revision: 8
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Install SQL Server Data Tools - Business Intelligence for Visual Studio
  SQL Server Data Tools - Business Intelligence (SSDT-BI) for Visual Studio includes business intelligence project authoring tools and project templates for SQL Server Analysis Services, Reporting Services, and Integration Services integrated into a Visual Studio shell. You can install SSDT-BI as a standalone business intelligence authoring environment or side-by-side with an existing SQL Server Data Tools (SSDT). It’s important to understand that SSDT-BI and SSDT are two separate download and install packages. Instructions here are for downloading and installing SSDT-BI. For more information, see [Tools and applications used in Analysis Services](../analysis-services/tools-and-applications-used-in-analysis-services.md) and [FAQ: Microsoft SQL Server Data Tools](http://msdn.microsoft.com/data/hh322942).  
  
 SQL Server Data Tools - Business Intelligence for Visual Studio uses SQL Server Setup to install the SSDT-BI environment as a shared feature. If you are familiar with SQL Server Setup, this process will seem familiar to you; however, if you have never run SQL Server Setup to install additional SQL Server features, this may seem a little confusing.  
  
 If you already have Visual Studio or SQL Server Data Tools (SSDT) installed, running SQL Server Setup to install SSDT-BI will not overwrite your existing Visual Studio installation or SSDT installation. Setup will install only the additional business intelligence feature tools and project templates.  
  
## Install SQL Server Data Tools - Business Intelligence for Visual Studio  
  
#### To install SQL Server Data Tools - Business Intelligence for Visual Studio  
  
1.  Click **Download**, then **Run** or **Save** from[Microsoft SQL Server Data Tools - Business Intelligence for Visual Studio 2013](http://go.microsoft.com/fwlink/p/?LinkId=396526).  
  
     Or  
  
     Click **Download**, then **Run** or **Save** from [Microsoft SQL Server Data Tools - Business Intelligence for Visual Studio 2012](http://go.microsoft.com/fwlink/p/?LinkID=273673).  
  
2.  In SQL Server Setup, on the **License Terms** page, if you agree to the Microsoft Software License Terms, select **I accept the license terms**, optionally select **Send feature usage data to Microsoft**, and then click  **Next**.  
  
3.  On the **Installation Type** page, verify **Perform a new installation of SQL Server 2012/2013** is selected, and then click **Next**.  
  
    > [!NOTE]  
    >  Setup will not install a new instance of SQL Server, but will install new SQL Server Features, including SQL Server Data Tools- Business Intelligence for Visual Studio, which you’ll select on the Feature Selection page.  
  
4.  On the **Feature Selection** page, click **SQL Server Data Tools – Business Intelligence for Visual Studio 2012/2013**, and then click **Next**.  
  
5.  On the **Error Reporting** page, optionally select **Send Windows and SQL Server Error Reports to Microsoft or your corporate report server**, and then click **Next**.  
  
  