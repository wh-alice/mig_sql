---
title: "Install Analysis Services | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: cd6ac80d-b735-4e3e-a024-489f1409ad33
caps.latest.revision: 20
ms.author: "owend"
manager: "erikre"
---
# Install Analysis Services
  [!INCLUDE[ssASnoversion](../../../../a9notintoc/includes/ssasnoversion-md.md)] is an analytical database server that hosts Tabular models, multidimensional cubes, and data mining models that you can access from reports, spreadsheets, and dashboards.  
  
 [!INCLUDE[ssASnoversion](../../../../a9notintoc/includes/ssasnoversion-md.md)] is multi-instance, which means that you can install more than one copy of [!INCLUDE[ssASnoversion](../../../../a9notintoc/includes/ssasnoversion-md.md)] on a single computer, or run new and old versions  side-by-side. Any instance you install runs in one of three modes, as determined during setup: Multidimensional and Data Mining, Tabular, or SharePoint. If you want to use multiple modes, you'll need a separate instance for each one.  
  
 After you install the server in a particular mode, you can use it host solutions that conform to that mode. For example, a tabular mode server is required if you want tabular model data access over the network.  
  
## Get tools and designers  
 SQL Server Setup no longer installs the model designers or management tools used for solution design or server administration. In this release, tools have a separate installation, which you can get from the following links:  
  
-   [Download SQL Server Management Studio for SQL Server 2016](https://msdn.microsoft.com/library/mt238290.aspx)  
  
-   [Download SQL Server Data Tools for SQL Server 2016](https://msdn.microsoft.com/library/mt204009.aspx)  
  
 You'll need both Management Studio and SQL Server Data Tools to work with Analysis Services instances and data. Tools can be installed anywhere, but be sure to configure ports on the server before attempting a  connection. See [Configure the Windows Firewall to Allow Analysis Services Access](../../../../analysis-services/instances/configure-the-windows-firewall-to-allow-analysis-services-access.md) for details.  
  
## Install using a wizard  
 The following list shows you which pages in the SQL Server Installation wizard are used to install Analysis Services.  
  
1.  Select **Analysis Services** from the Feature Tree in Setup.  
  
     ![Setup feature tree showing Analsyis Services](../../../../analysis-services/instances/install/windows/media/ssas-setupas.gif "Setup feature tree showing Analsyis Services")  
  
2.  On the Analysis Services Configuration page, be sure to select **Tabular Mode** if you want a Tabular instance. Otherwise, the default is **Multidimensional and Data Mining mode**.  
  
     ![Setup page with Analysis Services config options](../../../../analysis-services/instances/install/windows/media/ssas-setupasconfig.png "Setup page with Analysis Services config options")  
  
 Multidimensional and Data Mining mode uses MOLAP as the default storage for models deployed to Analysis Services. After deploying to the server, you can configure a solution to use ROLAP if you want to run queries directly against the relational database rather than storing query data in an Analysis Services  multidimensional database .  
  
 Tabular mode uses the xVelocity in-memory analytics engine (VertiPaq), which is the default storage for tabular models that you deploy to Analysis Services. After you deploy tabular model solutions to the server, you can selectively configure tabular solutions to use DirectQuery disk storage as an alternative to memory-bound storage.  
  
 Memory management and IO settings can be adjusted to get better performance when using non-default storage modes. See [Server Properties in Analysis Services](../../../../analysis-services/server-properties/server-properties-in-analysis-services.md) for more information.  
  
## Command Line Setup  
 SQL Server Setup includes a parameter (**ASSERVERMODE**) that specifies the server mode. The following example illustrates a command line setup that installs Analysis Services in Tabular server mode.  
  
```  
  
Setup.exe /q /IAcceptSQLServerLicenseTerms /ACTION=install /FEATURES=AS /ASSERVERMODE=TABULAR /INSTANCENAME=ASTabular /INDICATEPROGRESS/ASSVCACCOUNT=<DomainName\UserName> /ASSVCPASSWORD=<StrongPassword> /ASSYSADMINACCOUNTS=<DomainName\UserName>   
```  
  
 **INSTANCENAME** must be less than 17 characters.  
  
 All placeholder account values must be replaced with valid accounts and password.  
  
 **ASSERVERMODE** is case-sensitive.  All values must be expressed in upper case. The following table describes the valid values for **ASSERVERMODE**.  
  
|Value|Description|  
|-----------|-----------------|  
|MULTIDIMENSIONAL|This is the default value. If you do not set **ASSERVERMODE**, the server is installed in Multidimensional server mode.|  
|POWERPIVOT|This value is optional. In practice, if you set the **ROLE** parameter, the server mode is automatically set to 1, making **ASSERVERMODE** optional for a [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for SharePoint installation. For more information, see [Install Power Pivot from the Command Prompt](http://msdn.microsoft.com/en-us/7f1f2b28-c9f5-49ad-934b-02f2fa6b9328).|  
|TABULAR|This value is required if you are installing Analysis Services in Tabular mode using command line setup.|  
  
## See Also  
 [Determine the Server Mode of an Analysis Services Instance](../../../../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md)   
 [Tabular Modeling (SSAS Tabular)](https://msdn.microsoft.com/library/hh212945(v=sql.110).aspx)  
  
  