---
title: "Reserved Words (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "reserved words [Master Data Services]"
  - "Master Data Services, reserved words"
ms.assetid: 88afd0d0-4362-4394-8357-4e65388fc0fc
caps.latest.revision: 11
ms.author: "carlasab"
manager: "jhubbard"
---
# Reserved Words (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], when you create model objects or members, some words cannot be used. Using these words may cause errors.  
  
> [!NOTE]  
>  You should also limit your use of special characters (symbols, hyphenation, etc.).  
  
-   [Models](../master-data-services/reserved-words-master-data-services.md#models)  
  
-   [Entities](../master-data-services/reserved-words-master-data-services.md#entities)  
  
-   [Explicit Hierarchies](../master-data-services/reserved-words-master-data-services.md#exhierarchies)  
  
-   [Attributes](../master-data-services/reserved-words-master-data-services.md#attributes)  
  
-   [Members](../master-data-services/reserved-words-master-data-services.md#members)  
  
##  <a name="models"></a> Models  
 If you create a model with the name set to **Name** or **Code**, do not select **Create entity with same name as model** because **Name** or **Code** cannot be used for the name of an entity.  
  
##  <a name="entities"></a> Entities  
 For entity names, you cannot use **Name** or **Code**.  
  
##  <a name="exhierarchies"></a> Explicit Hierarchies  
 For explicit hierarchy names, you cannot use **Name** or **Code**.  
  
##  <a name="attributes"></a> Attributes  
  
-   **ID**  
  
-   **Code**  
  
-   **EnterUserName**  
  
-   **LastChgUserName**  
  
-   **Name**  
  
-   **EnterDTM**  
  
-   **EnterUserID**  
  
-   **EnterUserName**  
  
-   **LastChgDTM**  
  
-   **LastChgUserID**  
  
-   **Status_ID**  
  
-   **ValidationStatus_ID**  
  
-   **Version_ID**  
  
##  <a name="members"></a> Members  
 For members, you cannot use **MDMMemberStatus**, **MDMUnused**, or **ROOT** for the **Code** attribute value.  
  
## See Also  
 [Master Data Services Overview &#40;MDS&#41;](../master-data-services/master-data-services-overview-mds.md)  
  
  