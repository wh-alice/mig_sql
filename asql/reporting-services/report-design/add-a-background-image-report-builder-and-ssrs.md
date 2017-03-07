---
title: "Add a Background Image (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c777fefb-8695-44a7-b5cd-a18c587583f2
caps.latest.revision: 10
ms.author: "maggies"
manager: "erikre"
---
# Add a Background Image (Report Builder and SSRS)
  You can add a background image to a report item such as a rectangle, text box, list, matrix, table, and some parts of a chart, or a report section such as the page header, page footer, or report body. You can define a background image for any selected item on the report design surface that displays **BackgroundImage** in the Properties pane. Like other images, the background image can be a URL to an image on the report server, an image from a dataset field, or an image embedded in the report definition. To use an image embedded in the report, you must first add the image to the report definition before you can add the image to the design surface.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
### To embed an image in the report definition  
  
1.  In the Report Data pane, right-click the **Images** node, and then click **Add Image**.  
  
    > [!NOTE]  
    >  If the Report Data pane is not visible, on the **View** tab, click **Report Data**.  
  
2.  Navigate to the image you want to embed in your report definition, and then click **OK**.  
  
### To add a background image  
  
1.  In report design view, select the report item to which you want to add a background image.  
  
2.  If the Properties pane is not visible, on the **View** tab, select **Properties**.  
  
3.  In the Properties pane, expand **BackgroundImage**, and then do the following:  
  
    -   For an embedded image:  
  
         Set **Source** to **Embedded**.  
  
         Set **Value** to the name of an image that is embedded in the report.  
  
    -   For an external image:  
  
         Set **Source** to **External**.  
  
         Set **Value** to a valid path to an image. This can be on a report server in native mode or SharePoint integrated mode, or it can be on any other Web site. For more information, see [Add an External Image &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/add-an-external-image-report-builder-and-ssrs.md).  
  
    -   For an image is that is contained in a field in the database to which the report item is connected:  
  
         Set **Source** to **Database**.  
  
         Set **Value** to the name of a field in the report dataset. For more information, see [Add a Data-Bound Image &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/add-a-data-bound-image-report-builder-and-ssrs.md).  
  
         For **MIMEType**, or file format, select the appropriate MIME type for the image—for example, .bmp.  
  
        > [!NOTE]  
        >  MIMEType applies only if the **Source** property is set to **Database**. If the **Source** property is set to **External** or **Embedded**, the value of **MIMEType** is ignored.  
  
    -   For **BackgroundRepeat**, select an expression, **Default**, **Repeat**, **RepeatX**, or **RepeatY**, or **Clip**.  
  
         For background images in a chart, **BackgroundRepeat** can be set to **Default**, **Repeat**, **Fit**, and **Clip**, but not **RepeatX** or **RepeatY**.  
  
## See Also  
 [Images &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/images-report-builder-and-ssrs.md)   
 [Image Properties Dialog Box, General &#40;Report Builder and SSRS&#41;](../../a9retired/image-properties-dialog-box-general-report-builder-and-ssrs.md)  
  
  