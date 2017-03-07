---
title: "Validation Page (Always On Availability Group Wizards) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.addreplicawizard.validation.f1"
  - "sql13.swb.adddatabasewizard.validation.f1"
  - "sql13.swb.newagwizard.validation.f1"
helpviewer_keywords: 
  - ", listeners"
ms.assetid: c8971556-240c-491a-bc86-9cc72f71a3dd
caps.latest.revision: 16
ms.author: "mikeray"
manager: "jhubbard"
---
# Validation Page (Always On Availability Group Wizards)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  
    
  This help topic describes the options of the **Validation** page. This topic applies to the [!INCLUDE[ssAoNewAgWiz](../../../database-engine/availability-groups/windows/includes/ssaonewagwiz-md.md)], [!INCLUDE[ssAoAddRepWiz](../../../database-engine/availability-groups/windows/includes/ssaoaddrepwiz-md.md)], and [!INCLUDE[ssAoAddDbWiz](../../../database-engine/availability-groups/windows/includes/ssaoadddbwiz-md.md)] of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. Use this page to validate that your environment supports all the configuration choices you made on previous pages of the wizard.  
  
##  <a name="PageOptions"></a> Validation Page Options  
 **Results of availability group validation.**  
 This grid displays the results of each completed validation step. The grid columns are as follows:  
  
 **Name**  
 Displays a phrase that describes a specific step.  
  
 **Result**  
 Displays one of the following hyperlink texts. For more information about the result of given validation step, click the hyperlink.  
  
|Result|Description|  
|------------|-----------------|  
|**Error**|Indicates that the validation step failed. Click the link to view the error message.|  
|**Skipped**|Indicates that the validation step was skipped because it is not required by your selections. Click the link to view the reason that a step was skipped.|  
|**Success**|Indicates that the validation step completed successfully|  
|**Warning**|Indicates a potential issue with the availability group configuration.  Click the link to view the warning message.|  
  
 **Re-run Validation**  
 Click to repeat the validation steps if you make a change outside of the wizard in response to a validation error.  
  
##  <a name="RelatedTasks"></a> Related Tasks  
  
-   [Use the New Availability Group Dialog Box &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-new-availability-group-dialog-box-sql-server-management-studio.md)  
  
-   [Use the Add Replica to Availability Group Wizard &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-add-replica-to-availability-group-wizard-sql-server-management-studio.md)  
  
-   [Use the Add Database to Availability Group Wizard &#40;SQL Server Management Studio&#41;](../Topic/Use%20the%20Add%20Database%20to%20Availability%20Group%20Wizard%20\(SQL%20Server%20Management%20Studio\).md)  
  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)  
  
  