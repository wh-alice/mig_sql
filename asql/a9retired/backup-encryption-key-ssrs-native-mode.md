---
title: "Backup Encryption Key (SSRS Native Mode) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "SQL13.rsconfigtool.backupencryptionkey.F1"
ms.assetid: eb8c82be-323b-4d86-ab10-c1bf69a4abe3
caps.latest.revision: 7
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Backup Encryption Key (SSRS Native Mode)
  [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] uses an encryption key to secure sensitive data that is stored in the report server database. Having a backup of this key is essential for ensuring continued access to encrypted connection strings and credentials. You must have a backup copy of this key if you move the report server database to another computer or if you change the user name or password of the Report Server service account. Both operations require that you restore the key from a backup copy that you previously created.  
  
 [!INCLUDE[applies](../a9retired/includes/applies-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Native mode.  
  
 To open the Backup Encryption Key dialog box, click **Encryption Keys** in the navigation pane of the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager, and then click **Backup**. This dialog box also appears when you update the service account using the Service Account page in the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager. For more information on the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager, see [Reporting Services Configuration Manager &#40;Native Mode&#41;](../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md).  
  
## Options  
 **File Location**  
 Specify a file name and location for [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] to the symmetric key. The symmetric key is never stored in plain text. You must type a password to protect the file.  
  
 **Password**  
 Type a password that protects the file against unauthorized access. Only users who know the password will be able to restore the key that is locked inside the file. [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] enforces a strong password policy. The password must be at least 8 characters and include a combination of uppercase and lowercase alphanumeric characters and at least one symbol character.  
  
 **Confirm Password**  
 Re-type the password you entered.  
  
## See Also  
 [Reporting Services Configuration Manager Help Topics](../a9retired/reporting-services-configuration-manager-help-topics.md)   
 [Back Up and Restore Reporting Services Encryption Keys](../reporting-services/install/windows/ssrs-encryption-keys-back-up-and-restore-encryption-keys.md)   
 [Delete and Re-create Encryption Keys  &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/ssrs-encryption-keys-delete-and-re-create-encryption-keys.md)   
 [Initialize a Report Server &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/ssrs-encryption-keys-initialize-a-report-server.md)   
 [Store Encrypted Report Server Data &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/ssrs-encryption-keys-store-encrypted-report-server-data.md)   
 [Encryption Keys - Reporting Services Native mode &#40;Configuration Manager&#41;](../a9retired/encryption-keys-reporting-services-native-mode-configuration-manager.md)  
  
  