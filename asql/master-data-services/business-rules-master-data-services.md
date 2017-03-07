---
title: "Business Rules (Master Data Services) | Microsoft Docs"
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
  - "business rules [Master Data Services], about business rules"
  - "business rules [Master Data Services]"
ms.assetid: a9f9e41a-2461-4845-b947-58b3a205543f
caps.latest.revision: 16
ms.author: "carlasab"
manager: "jhubbard"
---
# Business Rules (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], a business rule is a rule that you use to ensure the quality and accuracy of your master data. You can use a business rule to automatically update data, to send email, or to start a business process or workflow.  
  
 To view examples of business rules, see [Business Rule Examples &#40;Master Data Services&#41;](../master-data-services/business-rule-examples-master-data-services.md).  
  
## Create and Publish Business Rules  
 Business rules are **If/Then/Else** statements that you create in [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)]. If an attribute value meets a specified condition, then an action is taken, otherwise a Else action is taken. Possible actions include setting a default value or changing a value. These actions can be combined with sending an email notification.  
  
 Business rules can be based on specific attribute values (for example, take action if Color=Blue), or when attribute values change (for example, take action if the value of the Color attribute changes). For more information about tracking non-specific changes, see [Change Tracking &#40;Master Data Services&#41;](../Topic/Change%20Tracking%20\(Master%20Data%20Services\).md).  
  
 To use business rules you must first create and publish your rules, then apply the published rules to data. You can apply rules to subsets of data or to all data for a version by validating the version. A version cannot be committed until all attributes pass business rule validation.  
  
 If a user attempts to add an attribute value that doesn’t pass business rule validation, the value can still be saved. You can review and correct validation issues, which are displayed in [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)].  
  
 When you create a model deployment package, if you want to include business rules you must include data from the version in the package.  
  
 If you create a business rule that uses the **OR** operator, you should create a separate rule for each conditional statement that can be evaluated independently. You can then exclude rules as needed, providing more flexibility and easier troubleshooting.  
  
## How Business Rules Are Applied  
 You can set priority order for rules to run in by moving business rules up and down. However, before priority is taken into account, business rules are applied based on the type of action the rule takes. The order is as follows:  
  
1.  **Default Value**  
  
2.  **Change Value**  
  
3.  **Validation**  
  
4.  **External Action**  
  
5.  **User Defined Action Script**  
  
 Within these groups, actions are applied in priority order, from lowest to highest. So for example, four separate rules might have **Default Value** actions. The **Default Value** action that occurs first depends on the priority order specified in the web UI.  
  
 Other important notes about applying rules:  
  
-   If a business rule is excluded or is not published with a status of **Active**, the rule is still available but is not included when business rules are applied.  
  
-   Business rules apply to the attribute values for all leaf or all consolidated members, not both.  
  
-   Business rules can be applied to any version of a model that is **Open** or **Locked**.  
  
-   Changes made to data when business rules are applied are not logged as transactions.  
  
-   A business rule cannot contain more than one **start workflow** action.  
  
## System Settings  
 There are two settings in [!INCLUDE[ssMDScfgmgr](../a9retired/includes/ssmdscfgmgr-md.md)] that affect business rules. You can adjust these settings in [!INCLUDE[ssMDScfgmgr](../a9retired/includes/ssmdscfgmgr-md.md)] or directly in the System Settings table. For more information, see [System Settings &#40;Master Data Services&#41;](../master-data-services/system-settings-master-data-services.md).  
  
## Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Create and publish a new business rule.|[Create and Publish a Business Rule &#40;Master Data Services&#41;](../master-data-services/create-and-publish-a-business-rule-master-data-services.md)|  
|Add multiple conditions to a business rule.|[Add Multiple Conditions to a Business Rule &#40;Master Data Services&#41;](../master-data-services/add-multiple-conditions-to-a-business-rule-master-data-services.md)|  
|Create a business rule to require that attributes have values.|[Require Attribute Values &#40;Master Data Services&#41;](../master-data-services/require-attribute-values-master-data-services.md)|  
|Create a business rule to take an action based on changes to attribute values.|[Initiate Actions Based on Attribute Value Changes &#40;Master Data Services&#41;](../Topic/Initiate%20Actions%20Based%20on%20Attribute%20Value%20Changes%20\(Master%20Data%20Services\).md)|  
|Create a business rule to take user-defined script as a condition|[Business Rules Extension &#40;Master Data Services&#41;](../master-data-services/business-rules-extension-master-data-services.md)|  
|Create a business rule to take a user-defined script as an action|[Business Rules Extension &#40;Master Data Services&#41;](../master-data-services/business-rules-extension-master-data-services.md)|  
|Change the name of an existing business rule.|[Change a Business Rule Name &#40;Master Data Services&#41;](../master-data-services/change-a-business-rule-name-master-data-services.md)|  
|Configure [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)] to send notifications when business rules are applied.|[Configure Business Rules to Send Notifications &#40;Master Data Services&#41;](../master-data-services/configure-business-rules-to-send-notifications-master-data-services.md)|  
|Apply business rules to specific members.|[Validate Specific Members against Business Rules &#40;Master Data Services&#41;](../master-data-services/validate-specific-members-against-business-rules-master-data-services.md)|  
|Exclude a business rule so it is not used.|[Exclude a Business Rule &#40;Master Data Services&#41;](../master-data-services/exclude-a-business-rule-master-data-services.md)|  
|Delete an existing business rule.|[Delete a Business Rule &#40;Master Data Services&#41;](../master-data-services/delete-a-business-rule-master-data-services.md)|  
  
## Related Content  
  
-   [Master Data Services Overview &#40;MDS&#41;](../master-data-services/master-data-services-overview-mds.md)  
  
-   [Versions &#40;Master Data Services&#41;](../master-data-services/versions-master-data-services.md)  
  
-   [Validation &#40;Master Data Services&#41;](../master-data-services/validation-master-data-services.md)  
  
-   [Change Tracking &#40;Master Data Services&#41;](../Topic/Change%20Tracking%20\(Master%20Data%20Services\).md)  
  
  