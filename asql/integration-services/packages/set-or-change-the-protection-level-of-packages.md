---
title: "Set or Change the Protection Level of Packages | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "passwords [Integration Services]"
  - "packages [Integration Services],security"
  - "security [Integration Services],protection levels"
  - "protection level for packages [Integration Services]"
ms.assetid: 904a5580-82ba-4a26-b0c5-d1c989975f61
caps.latest.revision: 10
ms.author: "douglasl"
manager: "jhubbard"
---
# Set or Change the Protection Level of Packages
  To control access to the contents of packages and to the sensitive values that they contain, such as passwords, set the value of the **ProtectionLevel** property. The packages contained in a project need to have the same protection level as the project, to build the project. If you change the **ProtectionLevel** property setting on the project, you need to manually update the property setting for the packages.  
  
 For information about how to determine the **ProtectionLevel** settings that are appropriate for your packages at different stages in the package life cycle, see [Access Control for Sensitive Data in Packages](../../integration-services/packages/access-control-for-sensitive-data-in-packages.md). For an overview of security features in [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)], see [Security Overview &#40;Integration Services&#41;](../../integration-services/security/security-overview-integration-services.md).  
  
 The procedures in this topic describe how to use either [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] or the dtutil command prompt utility to change the **ProtectionLevel** property.  
  
> [!NOTE]  
>  In addition to the procedures in this topic, you can typically set or change the **ProtectionLevel** property of a package when you import or export the package. You can also change the **ProtectionLevel** property of a package when you use the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Import and Export Wizard to save a package.  
  
### To set or change the protection level of a package in SQL Server Data Tools  
  
1.  Review the available values for the **ProtectionLevel** property in the topic, [Setting the Protection Level of Packages](../../integration-services/packages/access-control-for-sensitive-data-in-packages.md), and determine the appropriate value for your package.  
  
2.  In [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] project that contains the package.  
  
3.  Open the package in the [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] designer.  
  
4.  If the Properties window does not show the properties of the package, click the design surface.  
  
5.  In the Properties window, in the **Security** group, select the appropriate value for the **ProtectionLevel** property.  
  
     If you select a protection level that requires a password, enter the password as the value of the **PackagePassword** property.  
  
6.  On the **File** menu, select **Save Selected Items** to save the modified package.  
  
### To set or change the protection level of packages at the command prompt  
  
1.  Review the available values for the **ProtectionLevel** property in the topic, [Setting the Protection Level of Packages](../../integration-services/packages/access-control-for-sensitive-data-in-packages.md), and determine the appropriate value for your package.  
  
2.  Review the mappings for the **Encrypt** option in the topic, [dtutil Utility](../../integration-services/dtutil-utility.md), and determine the appropriate integer to use as the value of the selected **ProtectionLevel** property.  
  
3.  Open a Command Prompt window.  
  
4.  At the command prompt, navigate to the folder that contains the package or packages for which you want to set the **ProtectionLevel** property.  
  
     The syntax examples shown in the following step assume that this folder is the current folder.  
  
5.  Set or change the protection level of the package or packages by using a command similar to the one of the following examples:  
  
    -   The following command sets the **ProtectionLevel** property of an individual package in the file system to level 2, "Encrypt sensitive with password", with the password, "strongpassword":  
  
         `dtutil.exe /file "C:\Package.dtsx" /encrypt file;"C:\Package.dtsx";2;strongpassword`  
  
    -   The following command sets the **ProtectionLevel** property of all packages in a particular folder in the file system to level 2, "Encrypt sensitive with password", with the password, "strongpassword":  
  
         `for %f in (*.dtsx) do dtutil.exe /file %f /encrypt file;%f;2;strongpassword`  
  
         If you use a similar command in a batch file, enter the file placeholder, "%f", as "%%f" in the batch file.  
  
## See Also  
 [dtutil Utility](../../integration-services/dtutil-utility.md)  
  
  