---
title: "Lesson 5: Create Relationships | Microsoft Docs"
ms.custom: ""
ms.date: "03/09/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: abac1a00-f827-4c3e-a473-6db5c8a3a66f
caps.latest.revision: 27
ms.author: "owend"
manager: "erikre"
---
# Lesson 4: Create Relationships
In this lesson you will verify the relationships that were created automatically when you imported data and add new relationships between different tables. A relationship is a connection between two tables that establishes how the data in those tables should be correlated. For example, the Product table and the Product Subcategory table have a relationship based on the fact that each product belongs to a subcategory. To learn more, see [Relationships](../../analysis-services/tabular-models/relationships-ssas-tabular.md).
  
Estimated time to complete this lesson: **10 minutes**  
  
## Prerequisites  
This topic is part of a tabular modeling tutorial, which should be completed in order. Before performing the tasks in this lesson, you should have completed the previous lesson.  
  
## Review Existing Relationships and Add New Relationships  
When you imported data by using the Table Import Wizard, you got seven tables from the AdventureWorksDW database. Generally, when you import data from a relational source, existing relationships are automatically imported together with the data. However, before you proceed with authoring your model you should verify those relationships between tables were created properly. For this tutorial, you will also add three new relationships.  
  
#### To review existing relationships  
  
1.  In SSDT, click on the **Model** menu, then point to **Model View**, and then click **Diagram View**.  

    The model designer now appears in Diagram View, a graphical format displaying all of the tables you imported with lines between them. The lines between tables indicate the relationships that were automatically created when you imported the data.
    
    ![as-tabular-lesson4-diagram](../../analysis-services/tutorials/media/as-tabular-lesson4-diagram.png)
  
    Use the minimap controls in the lower-right corner of the model designer to adjust the view to include as many of the tables as possible. You can also click and drag tables to different locations, bringing tables closer together, or putting them in a particular order. Moving tables does not affect the relationships already between the tables. To view all of the columns in a particular table, click and drag on a table edge to expand or make it smaller.  
  
2.  Click on the solid line between the **DimCustomer** table and the **DimGeography** table. The solid line between these two tables show this relationship is active, that is, it is used by default when calculating DAX formulas.  
  
    Notice the **GeographyKey** column in the **DimCustomer** table and the **GeographyKey** column in the **DimGeography** table now both each appear within a box. This shows these are the columns used in the relationship. The relationship’s properties now also appear in the **Properties** window.  
  
    > [!TIP]  
    > In addition to using the model designer in diagram view, you can also use the Manage Relationships dialog box to show the relationships between all tables in a table format. Right-click **Relationships** in Tabular Model Explorer, and then click **Manage Relationships**. The Manage Relationships dialog box shows the relationships that were automatically created when you imported data.  
  
3.  Use the model designer in diagram view, or the Manage Relationships dialog box, to verify the following relationships were created when each of the tables were imported from the AdventureWorksDW database:  
  
    |Active|Table|Related Lookup Table|  
    |----------|---------|------------------------|  
    |Yes|**DimCustomer [GeographyKey]**|**DimGeography [GeographyKey]**|  
    |Yes|**DimProduct [ProductSubcategoryKey]**|**DimProductSubcategory [ProductSubcategoryKey]**|  
    |Yes|**DimProductSubcategory [ProductCategoryKey]**|**DimProductCategory [ProductCategoryKey]**|  
    |Yes|**FactInternetSales [CustomerKey]**|**DimCustomer [CustomerKey]**|  
    |Yes|**FactInternetSales [ProductKey]**|**DimProduct [ProductKey]**|  
  
    If any of the relationships in the table above are missing, verify that your model includes the following tables: DimCustomer, DimDate, DimGeography, DimProduct, DimProductCategory, DimProductSubcategory, and FactInternetSales. If tables from the same data source connection are imported at separate times, any relationships between those tables will not be created and must be created manually.  

### Let's take a closer look
In Diagram View, you'll notice an arrow, an asterisk, and a number on the lines that show the relationship between tables.

![as-tabular-lesson4-line](../../analysis-services/tutorials/media/as-tabular-lesson4-line.png)

The arrow shows the filter direction, the asterisk shows this table is the many side in the relationship's cardinality, and the 1 shows this table is the one side of the relationship. If you need to edit a relationship; for example, change the relationship's filter direction or cardinality, double click the relationship line in Diagram View to open the Edit Relationship dialog.

![as-tabular-lesson4-edit](../../analysis-services/tutorials/media/as-tabular-lesson4-edit.png)

Most likely, you will never need to edit a relationship. These features are meant for advanced data modeling and are outside the scope of this tutorial. To learn more, see [Bi-directional cross filters for tabular models in SQL Server 2016 Analysis Services](../../analysis-services/tabular-models/bi-directional-cross-filters-tabular-models-analysis-services.md).

However, in some cases, you may need to create additional relationships between tables in your model to support certain business logic. For this tutorial, you need to create three additional relationships between the FactInternetSales table and the DimDate table.  
  
#### To add new relationships between tables  
  
1.  In the model designer, in the **FactInternetSales** table, click and hold on the **OrderDate** column, then drag the cursor to the **Date** column in the **DimDate** table, and then release.  

    A solid line appears showing you have created an active relationship between the **Order Date** column in the **Internet Sales** table and the **Date** column in the **Date** table. 
  
      ![as-tabular-lesson4-new](../../analysis-services/tutorials/media/as-tabular-lesson4-new.png) 
  
    > [!NOTE]  
    > When creating relationships, the cardinality and filter direction between the primary table and the related lookup table is automatically selected.  
  
2.  In the **FactInternetSales** table, click and hold on the **DueDate** column, then drag the cursor to the **Date** column in the **DimDate** table, and then release.  
  
    A dotted line appears showing you have created an inactive relationship between the **DueDate** column in the **FactInternetSales** table and the **Date** column in the **DimDate** table. You can have multiple relationships between tables, but only one relationship can be active at a time.  
  
3.  Finally, create one more relationship; in the **FactInternetSales** table, click and hold on the **ShipDate** column, then drag the cursor to the **Date** column in the **DimDate** table, and then release.  
    
     ![as-tabular-lesson4-newinactive](../../analysis-services/tutorials/media/as-tabular-lesson4-newinactive.png)
  

  
  
  
