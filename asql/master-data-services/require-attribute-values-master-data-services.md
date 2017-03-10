---
title: "Require Attribute Values (Master Data Services) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "business rules [Master Data Services], requiring attribute values"
  - "attributes [Master Data Services], requiring values"
ms.assetid: a360ef13-0c34-43b8-a87e-2f5d8732d30e
caps.latest.revision: 9
ms.author: "carlasab"
manager: "jhubbard"
---
# Require Attribute Values (Master Data Services)
  In [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)], require attribute values when you want to ensure your master data is complete.  
  
> [!NOTE]  
>  Members that are missing domain-based attribute values are not displayed in derived hierarchies that are based on those relationships.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **System Administration** functional area.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
### To require attribute values  
  
1.  In [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)], click **System Administration**.  
  
2.  From the menu bar, point to **Manage** and click **Business Rules**.  
  
3.  On the **Business Rules** page, from the **Model** drop-down list, select a model.  
  
4.  From the **Entity** drop-down list, select an entity.  
  
5.  From the **Member Types** drop-down list, select a type of member for the business rule to apply to.  
  
6.  Click **Add**.  
  
7.  In the **Name** box, type a name for the business rule.  
  
8.  Optionally, in the **Description** field, type the business rule description.  
  
9. Under the **Then** block, click **Add**. A panel will be displayed.  
  
10. From the **Operator** drop-down list, select **required action**.  
  
11. From the **Attribute** drop-down list, select an attribute.  
  
12. Click **Save**. A new row will be added to the **Then** grid.  
  
13. Click **Save**.  
  
14. Click **Publish All**.  
  
15. On the confirmation dialog box, click **OK**. The value in the **Business Rule State** column is **Active**.  
  
## Next Steps  
  
-   Apply business rules to data by following one of these procedures:  
  
    -   [Validate Specific Members against Business Rules &#40;Master Data Services&#41;](../master-data-services/validate-specific-members-against-business-rules-master-data-services.md)  
  
    -   [Validate a Version against Business Rules &#40;Master Data Services&#41;](../master-data-services/validate-a-version-against-business-rules-master-data-services.md)  
  
## See Also  
 [Business Rules &#40;Master Data Services&#41;](../master-data-services/business-rules-master-data-services.md)   
 [Derived Hierarchies &#40;Master Data Services&#41;](../master-data-services/derived-hierarchies-master-data-services.md)  
  
  