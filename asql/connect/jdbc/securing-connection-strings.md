---
title: "Securing Connection Strings | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 69ce8557-5260-4ea4-81b8-d0c5481f0868
caps.latest.revision: 9
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
# Securing Connection Strings
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Protecting access to your data source is one of the most important goals of helping to secure an application. To limit access to your data source, you must take precautions to help secure connection information such as a user ID, password, and data source name. Storing a user ID and password in plain text, such as in your source code, presents a serious security issue. Even if you supply a compiled version of code that contains user ID and password information in an external source, your compiled code can potentially be disassembled and the user ID and password exposed. As a result, it is imperative that critical information such as a user ID and password not exist in your code.  
  
 It is strongly recommended that you not store the password together with the connection URL in application source code. Instead, consider storing the password in a separate file that has restricted access. The access to that file can be granted to the context under which the application is running.  
  
 Another approach is to store the encrypted password in a file. Make sure that you use an encryption API that does not require the key to be stored somewhere and is not derived from the password of a user. For example, you might consider using certificate-based public/private key pairs, or use an approach where two parties use a key agreement protocol (Diffie-Hellman algorithm) to generate identical secret keys for encryption without ever having to transmit the secret key.  
  
 If you take connection string information from an external source, such as a user supplying a user ID and password, you must validate any input from the source to ensure that it follows the correct format and does not contain additional parameters that affect your connection.  
  
## See Also  
 [Securing JDBC Driver Applications](../../connect/jdbc/securing-jdbc-driver-applications.md)  
  
  