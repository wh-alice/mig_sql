---
title: "Evaluate a Policy-Based Management Policy on a Schedule | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Policy-Based Management, evaluate policy"
ms.assetid: bea09522-ff47-4037-ab55-a98ea7c10099
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# Evaluate a Policy-Based Management Policy on a Schedule
  This topic describes how to evaluate a Policy-Based Management policy on a schedule in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To evaluate a policy on a schedule, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires membership in the PolicyAdministratorRole role in the msdb database.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To evaluate a policy on a schedule  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the policy schedule that you want to evaluate.  
  
2.  Click the plus sign to expand the **Management** folder.  
  
3.  Click the plus sign to expand **Policy Management**.  
  
4.  Click the plus sign to expand the **Policies** folder.  
  
5.  Right-click the policy whose schedule you what to evaluate and select **Properties**.  
  
6.  On the **Open Policy –***policy_name* dialog box, in the **Evaluation Mode** list, select **On schedule**.  
  
7.  Under **Schedule**, click either **Pick** to specify an existing schedule or **New** to create a new schedule.  
  
8.  When finished, click **OK**.  
  
  