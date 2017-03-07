---
title: "Exception Message Box Programming | Microsoft Docs"
ms.custom: ""
ms.date: "08/15/2016"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "ExceptionMessageBox class, about ExceptionMessageBox class"
  - "exception message box [SQL Server], about exception message box"
  - "exception message box [SQL Server]"
  - "interfaces [SQL Server]"
  - "exceptions [SQL Server]"
  - "messages [SQL Server], exception message box"
ms.assetid: 0b1ba514-6959-4e69-bfd2-3cf3c1ac4b9c
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Exception Message Box Programming
  The exception message box is a programmatic interface that is installed with and used by [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] graphical components. The exception message box is a supported managed assembly that you can use in your applications to provide significantly more control over the messaging experience and to give your users the options to save error message content for later reference and to get help on messages. Because the exception message box is installed by all editions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] except [!INCLUDE[ssEW](../a9retired/includes/ssew-md.md)], you can use it with no additional configuration on any computer on which [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] client components have been installed.  
  
 The <xref:Microsoft.SqlServer.MessageBox.ExceptionMessageBox> class in the <xref:Microsoft.SqlServer.MessageBox> namespace has all the functionality of the <xref:System.Windows.Forms.MessageBox> class and more. Ideal for any tasks for which <xref:System.Windows.Forms.MessageBox> may be used, <xref:Microsoft.SqlServer.MessageBox.ExceptionMessageBox> is designed to elegantly handle managed code exceptions. The exception message box allows you to do the following:  
  
-   Provide customized button text for up to five buttons. Buttons and the dialog box resize automatically for different text lengths.  
  
-   Allow users to easily copy the message title, text, button text, and help links (if any) to the Clipboard or send this information in an e-mail message.  
  
-   Display all underlying exceptions and errors in a hierarchical relationship tree when users click **Additional Information**.  
  
-   Allow users to decide whether to display the message when the same exception occurs again.  
  
-   Access an online help system by using a help link associated with the exception.  
  
 For more information, see [Program Exception Message Box](../a9retired/program-exception-message-box.md).  
  
  