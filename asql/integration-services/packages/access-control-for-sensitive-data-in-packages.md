---
title: "Access Control for Sensitive Data in Packages | Microsoft Docs"
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
  - "packages [Integration Services], security"
  - "protection levels for packages [Integration Services]"
  - "configuration files [Integration Services]"
  - "encryption [Integration Services]"
  - "cryptography [Integration Services]"
  - "security [Integration Services], protection levels"
ms.assetid: d4b073c4-4238-41fc-a258-4e114216e185
caps.latest.revision: 44
ms.author: "douglasl"
manager: "jhubbard"
---
# Access Control for Sensitive Data in Packages
  To protect the data in an [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] package, you can set a protection level that helps protect just sensitive data or all the data in the package. Furthermore, you can encrypt this data with a password or a user key, or rely on the database to encrypt the data. Also, the protection level that you use for a package is not necessarily static, but changes throughout the life cycle of the package. You often set one protection level during development and another as soon as you deploy the package.  
  
> [!NOTE]  
>  In addition to the protection levels described in this topic, you can use fixed database-level roles to protect packages that are saved to the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server.  
  
## Definition of Sensitive Information  
 In an [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] package, the following information is defined as *sensitive*:  
  
-   The password part of a connection string. However, if you select an option that encrypts everything, the whole connection string will be considered sensitive.  
  
-   The task-generated XML nodes that are tagged as sensitive. The tagging of XML nodes is controlled by [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] and cannot by changed by users.  
  
-   Any variable that is marked as sensitive. The marking of variables is controlled by [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)].  
  
 Whether [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] considers a property sensitive depends on whether the developer of the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] component, such as a connection manager or task, has designated the property as sensitive. Users cannot add properties to, nor can they remove properties from, the list of properties that are considered sensitive.  
  
## Encryption  
 Encryption, as used by package protection levels, is performed by using the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Data Protection API (DPAPI), which is part of the Cryptography API (CryptoAPI).  
  
 The package protection levels that encrypt packages by using passwords require that you provide a password also. If you change the protection level from a level that does not use a password to one that does, you will be prompted for a password.  
  
 Also, for the protection levels that use a password, [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] uses the Triple DES cipher algorithm with a key length of 192 bits, available in the [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] Class Library (FCL).  
  
## Protection Levels  
 The following table describes the protection levels that [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] provides. The values in parentheses are values from the <xref:Microsoft.SqlServer.Dts.Runtime.DTSProtectionLevel> enumeration. These values appear in the Properties window that you use to configure the properties of the package when you work with packages in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
|Protection level|Description|  
|----------------------|-----------------|  
|Do not save sensitive (**DontSaveSensitive**)|Suppresses the values of sensitive properties in the package when the package is saved. This protection level does not encrypt, but instead it prevents properties that are marked sensitive from being saved with the package and therefore makes the sensitive data unavailable to other users. If a different user opens the package, the sensitive information is replaced with blanks and the user must provide the sensitive information.<br /><br /> When used with the **dtutil** utility (dtutil.exe), this protection level corresponds to the value of 0.|  
|Encrypt all with password (**EncryptAllWithPassword**)|Uses a password to encrypt the whole package. The package is encrypted by using a password that the user supplies when the package is created or exported. To open the package in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer or run the package by using the **dtexec** command prompt utility, the user must provide the package password. Without the password the user cannot access or run the package.<br /><br /> When used with the **dtutil** utility, this protection level corresponds to the value of 3.|  
|Encrypt all with user key (**EncryptAllWithUserKey**)|Uses a key that is based on the current user profile to encrypt the whole package. Only the user who created or exported the package can open the package in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer or run the package by using the **dtexec** command prompt utility.<br /><br /> When used with the **dtutil** utility, this protection level corresponds to the value of 4.<br /><br /> Note: For protection levels that use a user key, [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] uses DPAPI standards. For more information about DPAPI, see the MSDN Library at [http://msdn.microsoft.com/library](http://go.microsoft.com/fwlink/?LinkId=15408).|  
|Encrypt sensitive with password (**EncryptSensitiveWithPassword**)|Uses a password to encrypt only the values of sensitive properties in the package. DPAPI is used for this encryption. Sensitive data is saved as a part of the package, but that data is encrypted by using a password that the current user supplies when the package is created or exported. To open the package in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer, the user must provide the package password. If the password is not provided, the package opens without the sensitive data and the current user must provide new values for sensitive data. If the user tries to execute the package without providing the password, package execution fails. For more information about passwords and command line execution, see [dtexec Utility](../../integration-services/packages/dtexec-utility.md).<br /><br /> When used with the **dtutil** utility, this protection level corresponds to the value of 2.|  
|Encrypt sensitive with user key (**EncryptSensitiveWithUserKey**)|Uses a key that is based on the current user profile to encrypt only the values of sensitive properties in the package. Only the same user who uses the same profile can load the package. If a different user opens the package, the sensitive information is replaced with blanks and the current user must provide new values for the sensitive data. If the user attempts to execute the package, package execution fails. DPAPI is used for this encryption.<br /><br /> When used with the **dtutil** utility, this protection level corresponds to the value of 1.<br /><br /> Note: For protection levels that use a user key, [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] uses DPAPI standards. For more information about DPAPI, see the MSDN Library at [http://msdn.microsoft.com/library](http://go.microsoft.com/fwlink/?LinkId=15408).|  
|Rely on server storage for encryption (**ServerStorage**)|Protects the whole package using [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database roles. This option is supported when a package is saved to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] msdb database. In addition, the SSISDB catalog uses the **ServerStorage** protection level<br /><br /> This option is not supported when a package is saved to the file system from [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)].|  
  
## Protection Level Setting and the SSISDB Catalog  
 The SSISDB catalog uses the **ServerStorage** protection level. When you deploy an [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] project to the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server, the catalog automatically encrypts the package data and sensitive values. The catalog also automatically decrypts the data when you retrieve it.  
  
 If you export the project (.ispac file) from the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] server to the file system, the system automatically changes the protection level to **EncryptSensitiveWithUserKey**. If you import the project by using the **Integration Services Import Project Wizard** in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], the **ProtectionLevel** property in the **Properties** window shows a value of **EncryptSensitiveWithUserKey**.  
  
## Protection Level Setting Based on Package Life Cycle  
 You set the protection level of a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] package when you first develop it in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)]. Later, when the package is deployed, imported or exported from [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], or copied from [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], the [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Package Store, or the file system, you can update the package protection level. For example, if you create and save packages on your computer with one of the user key protection level options, you likely would want to change the protection level when you give the package to other users; otherwise they cannot open the package.  
  
 Typically, you change the protection level as listed in the following steps:  
  
1.  During development, leave the protection level of packages set to the default value, **EncryptSensitiveWithUserKey**. This setting helps ensure that only the developer sees sensitive values in the package. Or, you can consider using **EncryptAllWithUserKey**, or **DontSaveSensitive**.  
  
2.  When it is time to deploy the packages, you have to change the protection level to one that does not depend on the developer's user key. Therefore you typically have to select **EncryptSensitiveWithPassword**, or **EncryptAllWithPassword**. Encrypt the packages by assigning a temporary strong password that is also known to the operations team in the production environment.  
  
3.  After the packages have been deployed to the production environment, the operations team can re-encrypt the deployed packages by assigning a strong password that is known only to them. Or, they can encrypt the deployed packages by selecting **EncryptSensitiveWithUserKey** or **EncryptAllWithUserKey**, and using the local credentials of the account that will run the packages.  
  
## Related Tasks  
  
-   [Set or Change the Protection Level of Packages](../../integration-services/packages/set-or-change-the-protection-level-of-packages.md)  
  
## See Also  
 [Import and Export Packages &#40;SSIS Service&#41;](../../integration-services/service/import-and-export-packages-ssis-service.md)   
 [Integration Services &#40;SSIS&#41; Packages](../../integration-services/integration-services-ssis-packages.md)   
 [Security Overview &#40;Integration Services&#41;](../../integration-services/security/security-overview-integration-services.md)  
  
  