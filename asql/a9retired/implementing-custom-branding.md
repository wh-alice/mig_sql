---
title: "Implementing Custom Branding | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7127e904-5208-4c3d-b655-25ad00208176
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Implementing Custom Branding
A *brand package* can be created to modify the client application user interface (and optionally create a custom mobile report style) to match an organization's branding and aesthetics. To accomplish this a number of assets, images and configuration files are required.  
  
Each brand package must contain the images for all supported clients:  
  
- Windows 8,  
- Android  
- iOS  
- Windows Phone  
- HTML (web viewer)  
  
Image files are named using a logical naming convention: *[target OS]-[file description]-[image dimensions].png*  
  
Additionally, text-based configuration files must be created to specify:  
  
- the colors of various user interface elements (buttons, borders, text fields, etc.)  
- optionally, a custom mobile report style  
  
Once all the images have been prepared and all configuration files edited, the assets will need to be assembled in a ZIP file and uploaded via the Control Panel web application.  
  
## Image assets  
  
Each supported client uses a variety of specifically-sized and named image assets. Some of these files are shared between clients, most of them exist solely for use in a discrete client.  
  
As mentioned above, the majority of the images are logos of various sizes, while others are solid-color icons. These icons can be easily modified to fit any custom brand by changing their color.  
  
**Important:** Unless otherwise specified, all graphic files are assumed to be 32-bit PNG images.  
  
### Common  
  
The following assets are shared between two or more different clients:  
  
| Filename | Dimensions | Description |  
| -------- | ---------- | ----------- |  
| Activity-42x42.png | 42x42 | Standard resolution activity button icon |  
| Activity-42x42@2x.png | 84x84 (42x42 * 200%) | High resolution activity button icon |  
| BlankAvatarImage-80x80.png | 80x80 | Default user picture |  
| Hub-Connected-32x32.png | 32x32 | Hub connection indicator |  
| Hub-Disconnected-32x32.png | 32x32 | Hub "not connected" indicator |  
| Server-Connected-64x64.png | 64x64 | Server connection indicator |  
| Server-Default-64x64.png | 64x64 | Default server icon |  
| Server-Disconnected-64x64.png | 64x64 | Server "not connected" indicator |  
  
### Android  
  
The following unique files are required only by the Android client. Several different screen resolutions and configurations are supported.  
  
| Filename | Dimensions | Description |  
| -------- | ---------- | ----------- |  
Android-AddNewServerIcon-30x30.png | 30x30 | Add New Server button icon |  
| Android-Background-1200x1900.png | 1200x1900 | High resolution background image |  
| Android-Background-768x1280.png | 768x1280 | Lower resolution background image |  
| Android-Logo-320x64.png | 320x64 | Logo |  
  
### iOS  
  
The following unique files are required by only the iOS clients. The application is a universal binary that runs on both iPhone and iPad. High-resolution ("Retina") graphics are identified by the filename suffix @2x.  
  
| Filename | Dimensions | Description |  
| -------- | ---------- | ----------- |  
| iOS7-AddNewServerIcon-42x42.png | 42x42 | Standard resolution Add Server button icon |  
| iOS7-AddNewServerIcon-42x42@2x.png | 84x84 | Retina resolution Add Server button icon |  
| iOS7-Background-320x568.png | 320x568 | Standard resolution iPhone background (portrait) |  
| iOS7-Background-320x568@2x.png | 640x1136 | Retina resolution iPhone background (portrait) |  
| iOS7-Background-568x320.png | 568x320 | Standard resolution iPhone background (landscape) |  
| iOS7-Background-568x320@2x.png | 1136x640 | Retina resolution iPhone background (landscape) |  
| iOS7-Background-768x1024.png | 768x1024 | Standard resolution iPad background (portrait) |  
| iOS7-Background-768x1024@2x.png | 1536x2048 | Retina resolution iPad background (portrait) |  
| iOS7-Background-1024x768.png | 1024x768 | Standard resolution iPad background (landscape) |  
| iOS7-Background-1024x768@2x.png | 2048x1536 | Retina resolution iPad background (landscape) |  
| iOS7-BackIcon-42x42.png | 42x42 | Standard resolution Back button icon |  
| iOS7-BackIcon-42x42@2x.png | 84x84 | Retina resolution Back button icon |  
| iOS7-Logo-225x45.png | 225x45 | Standard resolution logo |  
| iOS7-Logo-225x45@2x.png | 550x90 | Retina resolution logo |  
| iOS7-Menu-32x32.png | 32x32 | Standard resolution Menu button icon |  
| iOS7-Menu-32x32@2x.png | 64x64 | Retina resolution Menu button icon |  
| iOS7-Search-32x32.png | 32x32 | Standard resolution Search button icon |  
| iOS7-Search-32x32@2x.png | 64x64 | Retina resolution Search button icon |  
| iOS7-Settings-42x42.png | 42x42 | Standard resolution Settings button icon |  
| iOS7-Settings-42x42@2x.png | 84x84 | Retina resolution Settings button icon |  
  
### Windows 8  
  
The following unique files are required only by the Windows 8 client. Note that in addition to the standard naming convention, a resolution identifier (.100, .140, and .180) immediately precedes the file extension. These numbers represent the size of each image as a percentage of the standard resolution image and each asset should therefore be sized appropriately: 100%, 140%, and 180%. These images are then loaded automatically based on the client's display capabilities.  
  
| Filename | Dimensions | Description |  
| -------- | ---------- | ----------- |  
| Windows8-Background-1366x768.100.png | 1366x768 | Standard resolution background image |  
| Windows8-Background-1366x768.140.png | 1912x1075 (1366x768 * 140%) | Medium resolution background image |  
| Windows8-Background-1366x768.180.png | 2459x1382 (1366x768 * 180%) | High resolution background image |  
| Windows8-Footer-220x22.100.png | 220x22 | Standard resolution "Powered by..." logo |  
| Windows8-Footer-220x22.140.png | 308x31 (220x22 * 140%) | Medium resolution "Powered by..." logo |  
| Windows8-Footer-220x22.180.png | 396x40 (220x22 * 180%) | High resolution "Powered by..." logo |  
| Windows8-Logo-450x90.100.png | 450x90 | Standard resolution main logo |  
| Windows8-Logo-450x90.140.png | 630x126 (450x90 * 140%) | Medium resolution main logo |  
| Windows8-Logo-450x90.180.png | 810x162 (450x90 * 180%) | High resolution main logo |  
| Windows8-SmallLogo-150x30.100.png | 150x30  | Medium resolution main logo |  
| Windows8-SmallLogo-150x30.140.png | 210x42 (150x30 * 140%) | Medium resolution smaller logo |  
| Windows8-SmallLogo-150x30.180.png | 270x54 (150x30 * 180%) | High resolution smaller logo |  
| Windows8-Style-120x110.100.png | 120x110 | (Optional) Standard resolution style preview image |  
| Windows8-Style-120x110.140.png | 168x154 (120x110 * 140%) | (Optional) Medium resolution style preview image |  
| Windows8-Style-120x110.180.png | 216x198 (120x110 * 180%) | (Optional) High resolution style preview image |  
  
  
**Important** If no custom mobile report style is required, ensure that all Window8-Style files are omitted from the final brand package ZIP file. This includes the three PNGs as well as the Window8-Style.xaml config file.  
  
## Windows Phone  
  
The following unique files are required only by the Windows Phone clients. Note that while high-resolution image filenames are appended with the resolution identifier .150, this number does not reflect the image's scale. And unlike Windows 8 assets, standard resolution image filenames do not use a .100 identifier.  
  
| Filename | Dimensions | Description |  
| -------- | ---------- | ----------- |  
| WP-Background-480x853.png | 480x853 | Standard resolution background image |  
| WP-Background-480x853.150.png | 1080x1920 | Very high resolution background image |  
| WP-Logo-280x40.png | 280x40 | Standard resolution logo |  
| WP-Logo-280x40.150.png | 560x80 | High resolution logo |  
  
## HTML  
  
Only three images are required for the two HTML pages: a standard resolution logo, a high resolution logo, and a spinner image. For the sake of ease, the two required logos can be renamed copies of the similar iOS assets, iOS7-Logo-225x45.png and iOS7-Logo-225x45@2x.png. The spinner image, a 32-bit PNG, is animated using a CSS rotation transform and is displayed very briefly, so a high resolution version of the asset is unnecessary. It is recommended that the spinner image be kept as it is, but recolored as appropriate.  
  
| Filename | Dimensions | Description |  
| -------- | ---------- | ----------- |  
| Html-Logo-225x45.png | 225x45 | Standard resolution logo |  
| Html-Logo-225x45@2x.png | 550x90 | High resolution logo |  
| Html-Spinner-42x42.png | 42x42 | Loading spinner image, animated in-browser via CSS transform. |  
  
## Configuration files  
  
A brand package requires two text-based configuration files. A third optional file *Windows8-Style.xaml* is needed if a custom mobile report style is desired.  
  
| Filename | Description |  
| -------- | -------- |  
| theme.json| A JSON file containing the name/value pairs for setting the colors of the client application's main user interface.|  
| Html-Style.css| A CSS file for styling the browser-based login and mobile report list pages. |  
| Windows8-Style.xaml| An optional XAML file for styling for creating custom mobile report styles and color palettes.|  
  
## Creating a custom mobile report style (Windows8-Style.xaml)  
  
A custom brand package can be easily extended with the addition of a custom mobile report style (color palettes and UI styles that affect the appearance of mobile reports).  
  
In order to create a custom a style, the *Windows8-Style.xaml* configuration file will require editing. In addition three PNG image assets, mentioned in the above Windows 8 section, are required. These are the style thumbnails used in the mobile report style dropdown menu.  
  
The XML object described within the XAML file is divided into three discrete parts:  
  
- main properties  
- color palette  
- mobile report panel styles.  
  
**Important** Properties not described in the list below should **not** be modified.  
  
### Main properties  
  
The main (root) properties of the style definition are further divided into three groups  
  
- general style colors  
- standard mobile report style colors  
- accent mobile report style colors  
  
### General style colors  
  
Three hexadecimal properties handle general colors: *TileBrush*, *PositiveValueBrush*, and *NegativeValueBrush*. TileBrush controls the color of the mobile report tile, the small rectangle containing the title and thumbnail that appears in the mobile report list view. *PositiveValueBrush* and *NegativeValueBrush* control the colors for positive values and negative values throughout a mobile report. These are generally shades of green and red, respectively.  
  
### Standard mobile report style colors  
  
These properties handle the default appearance of mobile reports using this style. Background, a hexadecimal value, is the mobile report's background color. *TitleBrush* and *SubTitleBrush*, both hex colors, are used for the main mobile report's title and subtitle. *PanelVariant* and *PanelBackground* handle the appearance of mobile report panels - the boxes that surround  
mobile report controls. A mobile report panel can have its own title and subtitle colors, as described further below. Finally, SelectedForeground and SelectedBackground handle the appearance of selected elements in Selection Lists (both List and Tree styles).  
  
A string value, *PanelVariant*, tells the mobile report which base theme variant to use to draw the mobile report panels. Valid properties are `Standard` or `Accent`. A Standard panel is considered to have a light-on-dark appearance, while an Accent panel has a "dark-on-light" color appearance. Choose the value most appropriate for this particular style.  
  
### Accent mobile report style colors  
  
These properties handle the accent appearance of mobile reports using this style. *AccentBackground*, a hexadecimal value, is the mobile report's background color. *AccentTitleBrush* and *AccentSubTitleBrush*, both hex colors, are used for the main mobile report's title and subtitle. *AccentPanelVariant* and *AccentPanelBackground*, handle the appearance of mobile report panels - the boxes that surround mobile report controls. A mobile report panel can have its own title and subtitle colors, as described further below. Finally, *AccentSelectedForeground* and *AccentSelectedBackground* handle the appearance of selected elements in Selection Lists (both  
List and Tree styles).  
  
A string value, *AccentPanelVariant*, tells the mobile report which base theme variant to use to draw the mobile report panels. Valid properties are `Standard` or *Accent*. A Standard panel is considered to have a light-on-dark appearance, while an Accent panel has a "dark-on-light" color appearance. Choose the value most appropriate for this particular style.  
  
### The color palette  
  
At the heart of a mobile report style is the color palette definition. These are one or more comma-separated hexadecimal values representing the colors used by various controls (charts, gauges, maps) to visually identify data.  
  
### PaletteName  
  
A globally unique, valid string id to represent the color palette, eg. `PaletteName="MyCompanyGreen"` or `PaletteName="MyCompanyBlue"`.  
  
### ChartingDataPoints  
  
These collections of hexadecimal values represent the colors used by a chart when it contains a specific number of data point series. If, for example, the control is given four series, it will draw the data points using the colors from the *ChartingDataPoints4* collection.  
  
It is recommended to create the largest collection, *ChartingDataPoints12*, first and then remove color for the lesser properties.  
  
### GaugeStops and MappingStops  
  
These collections of three colors handle the colors for their respective controls.  
  
*GaugeStops* contains the colors for the three different gauge sections in the following order:  
  
- Positive  
- Caution  
- Negative  
  
These are generally green, yellow, and red respectively.  
  
*MappingStops* contains the colors used by the map control to differentiate different data regions.  
  
Using the same values found in *ChartingDataPoints3* is recommended.  
  
### Mobile Report panel styles  
  
Due to the way the mobile report style parser is designed, four properties must be set to complete a mobile report style: two each for the default mobile report panel style and the accent mobile report panel style. These properties handle the color of the title and subtitle within an individual panel. These properties are set among the two template code blocks: *PanelHeaderTemplate* and *AccentPanelHeaderTemplate*.  
  
### Title  
  
To set the color of the title of a mobile report panel, locate and change the *Foreground* property of a TextBlock with the property `Text="{Binding Title}"` found within the corresponding *PanelHeaderTemplate* block.  
  
### SubTitle  
  
To set the color of the subtitle of a mobile report panel, locate and change the *Foreground* property of a TextBlock with the property `Text="{Binding SubTitle}"` found within the corresponding *PanelHeaderTemplate* block.  
  
### Style thumbnail images  
  
Once the XAML file has been edited, two images are required. These will act as thumbnails within the mobile report style dropdown menu. Standard resolution, medium resolution, and high-resolution images are required. Please refer to the image information described in the Windows 8 images list in this document.  
  
## Creating the final brand package  
  
Once all the images and configuration files have assembled, a single brand package file must be created. This is done by creating a ZIP archive containing the required files. In the ZIP archive, files must exist on the root level (the archive cannot contain sub-folders).  
  
Once this file is created, it should be uploaded and assigned using the Control Panel web application. See [Managing Custom Branding](Managing%20Custom%20Branding.md) for more information.