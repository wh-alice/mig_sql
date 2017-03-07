---
title: "View the Properties of a Policy-Based Management Facet | Microsoft Docs"
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
  - "Policy-Based Management, view facet properties"
ms.assetid: 022a244c-c2e7-4467-b9a2-c7a27859be22
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# View the Properties of a Policy-Based Management Facet
  This topic describes how to view the properties of a Policy-Based Management facet in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To view the properties of a facet, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires membership in the PolicyAdministratorRole role in the msdb database.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view the properties of a facet  
  
1.  In **Object Explorer**, click the plus sign to expand the server that contains the facet whose properties you want to view.  
  
2.  Click the plus sign to expand the **Management** folder.  
  
3.  Click the plus sign to expand **Policy Management**.  
  
4.  Click the plus sign to expand the **Facets** folder.  
  
5.  Right-click the facet whose properties you want to view and select **Properties**. For more information on the available options in the **Facet Properties –***facet_name* dialog box, see [Facet Properties Dialog Box, General Page](../../relational-databases/policy-based-management/facet-properties-dialog-box-general-page.md), [Facet Properties Dialog Box, Dependent Policies Page](../../relational-databases/policy-based-management/facet-properties-dialog-box-dependent-policies-page.md), and [Facet Properties Dialog Box, Dependent Conditions Page](../../relational-databases/policy-based-management/facet-properties-dialog-box-dependent-conditions-page.md).  
  
6.  When finished, click **Close**.  
  
  