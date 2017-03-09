---
title: "Security (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 56bc41ea-de28-4184-aa7e-99111ae55af5
caps.latest.revision: 10
ms.author: "carlasab"
manager: "jhubbard"
---
# Security (Master Data Services)
  In [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)], use security to ensure that users have access to the specific master data necessary to do their jobs, and to prevent them from accessing data that should not be available to them.  
  
 You can also use security to make someone an administrator of a specific model and functional area (for example, to allow someone to create versions of the Customer model or to give someone the ability to set security permissions).  
  
 [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] security is based on local or Active Directory domain users and groups. MDS security allows you to use a granular level of detail when determining the data a user can access. Because of the granularity, security can easily become complicated and you should use caution when using overlapping users and groups. For more information, see [Overlapping User and Group Permissions &#40;Master Data Services&#41;](../master-data-services/overlapping-user-and-group-permissions-master-data-services.md).  
  
 You can assign security access in the **User and Group Permissions** functional area of the [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] web application or by using the web service.  
  
## Types of Users  
 There are two types of users in [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)]:  
  
-   Those who access data in the **Explorer** functional area.  
  
-   Those who have the ability to perform administrative tasks in areas other than **Explorer**. These users are called [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
## How to Set Security  
 To give a user or group permission to access data or functionality in MDS, you must assign:  
  
-   [Functional area access](../master-data-services/functional-area-permissions-master-data-services.md), which determines which of the five functional areas of the user interface a user can access.  
  
-   [Model object permissions](../master-data-services/model-object-permissions-master-data-services.md), which determine the attributes a user can access, and the type of access (Read, Create, and Update) that the user has to those attributes. The user can also assign Admin permissions at the Model level.  
  
-   Optionally, [hierarchy member permissions](../master-data-services/hierarchy-member-permissions-master-data-services.md), which determine the members a user can access, and the type of access (Read, Update, and Delete) the user has to those members.  
  
 When you assign permissions to attributes and members, the permissions intersect and rules determine which permission takes precedence. For more information, see [How Permissions Are Determined &#40;Master Data Services&#41;](../master-data-services/how-permissions-are-determined-master-data-services.md).  
  
## Security in the Add-in for Excel  
 Security set in the [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] web application is also applied to the [!INCLUDE[ssMDSXLS](../analysis-services/includes/ssmdsxls-md.md)]. Users are only able to view and work with data they have permission to. Administrators can perform administrative tasks.  
  
 The only caveat is that all security assigned in [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] does not take effect in Excel until a 20 minute interval passes. The interval is defined by the *MdsMaximumUserInformationCacheInterval* setting in the web.config file. To change the interval, you can change the setting and restart IIS.  
  
## Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Create a user who has full permission to a model.|[Create a Model Administrator &#40;Master Data Services&#41;](../master-data-services/create-a-model-administrator-master-data-services.md)|  
|Add an Active Directory group to [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)]; this is the first step in giving a group permission to access data in the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] web application.|[Add a Group &#40;Master Data Services&#41;](../master-data-services/add-a-group-master-data-services.md)|  
|Assign permission to a functional area of the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] web application.|[Assign Functional Area Permissions &#40;Master Data Services&#41;](../master-data-services/assign-functional-area-permissions-master-data-services.md)|  
|Assign permission to attribute values by assigning permission to model objects.|[Assign Model Object Permissions &#40;Master Data Services&#41;](../master-data-services/assign-model-object-permissions-master-data-services.md)|  
|Assign permission to member values by assigning permission to hierarchy nodes.|[Assign Hierarchy Member Permissions &#40;Master Data Services&#41;](../master-data-services/assign-hierarchy-member-permissions-master-data-services.md)|  
  
## See Also  
 [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md)   
 [Users and Groups &#40;Master Data Services&#41;](../master-data-services/users-and-groups-master-data-services.md)   
 [Functional Area Permissions &#40;Master Data Services&#41;](../master-data-services/functional-area-permissions-master-data-services.md)   
 [Model Object Permissions &#40;Master Data Services&#41;](../master-data-services/model-object-permissions-master-data-services.md)   
 [Hierarchy Member Permissions &#40;Master Data Services&#41;](../master-data-services/hierarchy-member-permissions-master-data-services.md)   
 [How Permissions Are Determined &#40;Master Data Services&#41;](../master-data-services/how-permissions-are-determined-master-data-services.md)  
  
  