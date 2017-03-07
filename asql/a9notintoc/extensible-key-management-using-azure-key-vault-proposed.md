---
title: "Extensible Key Management Using Azure Key Vault (Proposed) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7b5e186f-2e4f-4b0c-972d-ce1d6ba034ec
caps.latest.revision: 9
ms.author: "rickbyh"
---
# Extensible Key Management Using Azure Key Vault (Proposed)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  The [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Connector for [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Azure Key Vault enables [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] encryption to use the Azure Key Vault service as an [Extensible Key Management &#40;EKM&#41;](../relational-databases/security/encryption/extensible-key-management-ekm.md) provider to protect [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] encryption keys.  
  
 This topic describes the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] connector. Additional information is available in [Setup Steps for Extensible Key Management Using the Azure Key Vault](../relational-databases/security/encryption/setup-steps-for-extensible-key-management-using-the-azure-key-vault.md), [Use SQL Server Connector with SQL Encryption Features](../relational-databases/security/encryption/use-sql-server-connector-with-sql-encryption-features.md), and[SQL Server Connector, Appendix.  
  
##  <a name="Uses"></a> What is Extensible Key Management (EKM) & Why Use it?  
 [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] provides several types of encryption that help protect sensitive data, including [Transparent Data Encryption &#40;TDE&#41;](../relational-databases/security/encryption/transparent-data-encryption-tde.md), [Column Level Encryption](../t-sql/functions/cryptographic-functions-transact-sql.md) (CLE), and [Backup Encryption](../relational-databases/backup-restore/backup-encryption.md). In all of these cases the data is encrypted using a symmetric data encryption key (DEK). The symmetric data encryption key is further protected by encrypting it with a hierarchy of keys stored in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. The following image represents how the traditional service-manage key hierarchy works.  
  
 ![ekm-key-hierarchy-traditional](../a9notintoc/media/ekm-key-hierarchy-traditional.png "ekm-key-hierarchy-traditional")  
  
 Instead of this model, the alternative is the EKM Provider Model. Using the EKM provider architecture enables [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] to protect the data encryption keys by using an asymmetric key stored outside of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] in an external cryptographic provider. This model adds an additional layer of security and separates the management of keys and data.  
  
 The [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Connector serves as a bridge between [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] and Azure Key Vault, so [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] can leverage the scalability, high performance, and highly availability of the Azure Key Vault service. The following image represents how the key hierarchy works in the EKM provider architecture with Azure Key Vault and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Connector.  
  
 ![ekm-key-hierarchy-with-akv](../a9notintoc/media/ekm-key-hierarchy-with-akv.png "ekm-key-hierarchy-with-akv")  
  
 Azure Key Vault can be used with [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] installations on [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Azure Virtual Machines and for on-premises servers. The key vault service also provides the option to use tightly controlled and monitored Hardware Security Modules (HSMs) for a higher level of protection for asymmetric encryption keys. For more information about the key vault, see [Azure Key Vault](http://go.microsoft.com/fwlink/?LinkId=521401).  
  
 The following image summarizes the process flow of EKM using the key vault. (The process step numbers in the image are not meant to match the setup step numbers that follow the image.)  
  
 The following image summarizes the process flow of EKM using the key vault. The process step numbers in the image are not meant to match the setup step numbers that follow the image.  
  
 ![SQL Server EKM using the Azure Key Vault](../a9notintoc/media/ekm-using-azure-key-vault.png "SQL Server EKM using the Azure Key Vault")  
  
 For the next step, see [Setup Steps for Extensible Key Management Using the Azure Key Vault](../relational-databases/security/encryption/setup-steps-for-extensible-key-management-using-the-azure-key-vault.md).  
  
 For use scenarios, see [Use SQL Server Connector with SQL Encryption Features](../relational-databases/security/encryption/use-sql-server-connector-with-sql-encryption-features.md).  
  
## See Also  
   
  
  