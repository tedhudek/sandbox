+ADw-span id+AD0AIg-vsdriver.building+AF8-a+AF8-driver+ACIAPgA8-/span+AD4-Building a Driver with the WDK
+AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9-

+ADw-span class+AD0AIg-sidebar+AF8-heading+ACI- style+AD0AIg-font-weight: bold+ADsAIgA+-In this article+ADw-/span+AD4-

-   +AFs-Building a Driver Using Visual Studio+AF0-(+ACM-building+AF8-a+AF8-driver+AF8-using+AF8-visual+AF8-studio)
-   +AFs-Building a Driver Using the Command Line (MSBuild)+AF0-(+ACM-building+AF8-a+AF8-driver+AF8-using+AF8-the+AF8-command+AF8-line+AF8AXw-msbuild+AF8-)
-   +AFs-Configuring project properties for your driver and driver package+AF0-(+ACM-configure+AF8-project+AF8-props)
-   +AFs-Troubleshooting tip for building a driver+AF0-(+ACM-troubleshooting)
-   +AFs-Related topics+AF0-(+ACM-related+AF8-topics)

This topic describes how to build a driver with the Windows Driver Kit (WDK). WDK+AMIAoA-10 is fully integrated with Microsoft Visual Studio. You can build a driver using the Visual Studio development environment, or you can build a driver directly from the command line using the Microsoft Build Engine (+AFs-MSBuild+AF0-(http://go.microsoft.com/fwlink/p/?linkid+AD0-262804)).

You can use any edition of Microsoft Visual Studio+AMIAoA-2015, including Microsoft Visual Studio Community+AMIAoA-2015, to build drivers for:

-   Windows+AMIAoA-10
-   Windows+AMIAoA-8.1
-   Windows+AMIAoA-7

+ACoAKg-Important+ACoAKgDCAKAAwgCg-Starting in Windows Driver Kit (WDK)+AMIAoA-8, MSBuild replaced the Windows Build Utility (Build.exe) that was used in previous versions of the WDK. The WDK now uses the same compiler and build tools that you use to build Visual Studio projects. Driver projects that were built with previous versions of the WDK must be converted to work in the Visual Studio environment. You can run a conversion utility from the command line, or you can convert an existing driver by creating new Visual Studio project from existing sources. For more information, see +AFs-Creating a Driver From Existing Source Files+AF0-(creating+AF8-a+AF8-driver+AF8-from+AF8-existing+AF8-source+AF8-files.md) and +AFs-WDK and the Visual Studio build environment+AF0-(URL).

+AMIAoA-

+ADw-span id+AD0AIg-building+AF8-a+AF8-driver+AF8-using+AF8-visual+AF8-studio+ACIAPgA8-/span+AD4APA-span id+AD0AIg-BUILDING+AF8-A+AF8-DRIVER+AF8-USING+AF8-VISUAL+AF8-STUDIO+ACIAPgA8-/span+AD4-Building a Driver Using Visual Studio
-----------------------------------------------------------------------------------------------------------------------------------------------------

You build a driver the same way you build any project or solution in Visual Studio. When you create a new driver project using a Windows driver template, the template defines a default (active) project configuration and a default (active) solution build configuration.

+ACoAKg-Note+ACoAKgDCAKAAwgCg-You can convert projects and solutions that you created with WDK+AMIAoA-8 or Windows Driver Kit (WDK)+AMIAoA-8.1 to work with Windows Driver Kit (WDK)+AMIAoA-10 and Visual Studio+AMIAoA-2015. Before you open the projects or solutions, run the +AFs-ProjectUpgradeTool+AF0-(URL). The ProjectUpgradeTool converts the projects and solutions so that they can be built using WDK+AMIAoA-10.

+AMIAoA-

For information about managing and editing build configurations, see +AFs-Building in Visual Studio+AF0-(http://go.microsoft.com/fwlink/p/?linkid+AD0-227872).

The default Solution build configuration is +ACoAKg-Debug+ACoAKg- and +ACoAKg-Win32+ACoAKg-. In versions of the WDK prior to Windows+AMIAoA-8, this build configuration would correspond to building a driver using an +ACoAKg-x86 Checked Build Environment+ACoAKg-.

+ACEAWwBd-(../common/wedge.gif)+ACoAKg-To select a configuration and build a driver+ACoAKg-

1.  Ensure that you have the same version of SDK and WDK installed on your computer.
2.  Open the driver project or solution in Visual Studio.
3.  Right-click the solution in the +ACoAKg-Solutions Explorer+ACoAKg- and select +ACoAKg-Configuration Manager+ACoAKg-.
4.  From the +ACoAKg-Configuration Manager+ACoAKg-, select the Active Solution Configuration (for example, +ACoAKg-Debug+ACoAKg- or +ACoAKg-Release+ACoAKg-) and the Active Solution Platform (for example, +ACoAKg-Win32+ACoAKg-) that correspond to the type of build you are interested in.
5.  Select the target operating system for which to build the driver. Navigate to the project properties in +ACoAKg-Driver +ACY-gt+ADs- General+ACoAKg-, and set the +ACoAKg-TargetVersion+ACoAKg- property.
6.  Configure the project properties for your driver or driver package. You can set properties for deployment, driver signing, or other tasks. For more information, see +AFs-Configuring project properties for your driver and driver package+AF0-(+ACM-configure+AF8-project+AF8-props).
7.  From the +ACoAKg-Build+ACoAKg- menu, click +ACoAKg-Build Solution+ACoAKg- (+ACoAKg-Ctrl+-Shift+-B+ACoAKg-).

+ADw-span id+AD0AIg-building+AF8-a+AF8-driver+AF8-using+AF8-the+AF8-command+AF8-line+AF8AXw-msbuild+AF8AIgA+ADw-/span+AD4APA-span id+AD0AIg-BUILDING+AF8-A+AF8-DRIVER+AF8-USING+AF8-THE+AF8-COMMAND+AF8-LINE+AF8AXw-MSBUILD+AF8AIgA+ADw-/span+AD4-Building a Driver Using the Command Line (MSBuild)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

You can build a driver from the command line using the +ACoAKg-Visual Studio Command Prompt+ACoAKg- window and the Microsoft Build Engine (+AFs-MSBuild+AF0-(http://go.microsoft.com/fwlink/p/?linkid+AD0-262804))

+ACEAWwBd-(../common/wedge.gif)+ACoAKg-To build a driver using the Visual Studio Command Prompt window+ACoAKg-

1.  Open a +ACoAKg-Developer Command Prompt for VS2015+ACoAKg- window.

    From this window you can use MSBuild.exe to build any Visual Studio project by specifying the project (.VcxProj) or solutions (.Sln) file.

2.  Navigate to the project directory and enter the +ACoAKg-MSbuild+ACoAKg- command for your target.

    For example, to perform a clean build of a Visual Studio driver project called MyDriver.vcxproj using the default Platform and Configuration, navigate to the project directory and enter the following MSBuild command:

    +AGAAYABg- syntax
    msbuild /t:clean /t:build .+AFw-MyDriver.vcxproj 
    +AGAAYABg-

    +ACoAKg-Syntax+ACoAKg- - To specify a specific configuration and platform, use the following command syntax:

    +AGAAYABg- syntax
    msbuild /t:clean /t:build ProjectFile /p:Configuration+AD0APA-Debug+AHw-Release+AD4- /p:Platform+AD0-architecture /p:TargetPlatformVersion+AD0-a.b.c.d /p:TargetVersion+AD0-OS    
    +AGAAYABg-

    For example, the following command builds a Universal Windows driver for the +ACI-Debug+ACI- configuration, +ACI-Win32+ACI- platform, and for Windows+AMIAoA-10.

    +AGAAYABg- syntax
    msbuild /t:clean /t:build .+AFw-MyDriver.vcxproj /p:Configuration+AD0AIg-Debug+ACI- /p:Platform+AD0-Win32 /p:TargetVersion+AD0A4iCsAJ0-Windows10+AOIgrACd- /p:TargetPlatformVersion+AD0A4iCsAJ0-10.0.10010.0+AOIgrACd-
    +AGAAYABg-

    The +ACoAKg-TargetPlatformVersion+ACoAKg- setting is optional and allows you to specify the kit version to build with. The default is to use the latest kit.

+ADw-span id+AD0AIg-configure+AF8-project+AF8-props+ACIAPgA8-/span+AD4APA-span id+AD0AIg-CONFIGURE+AF8-PROJECT+AF8-PROPS+ACIAPgA8-/span+AD4-Configuring project properties for your driver and driver package
-----------------------------------------------------------------------------------------------------------------------------------------------------

Property pages allow you to configure and set options for your driver and driver package. You can choose to configure your driver so that it is automatically signed when you build your solution, or automatically deployed to a remote test computer.

The WDK provides a number of command-line tools, such as +AFs-Stampinf+AF0-(URL) and +AFs-WPP Preprocessor (WPP Tracing)+AF0-(URL), that are commonly included in the build process. These tools are not distributed with Visual Studio. To combine these tools with the Visual Studio build environment they are wrapped as +AFs-WDK tasks for MSBuild+AF0-(URL). If you use one of the driver templates or have an existing driver that you have converted, these property pages might already exist for your project. If not, the property pages are automatically added to your project as you add the related file types to the project or solution (for example, .mc or .man files for the message compiler). For more information, see +AFs-WDK and the Visual Studio build environment+AF0-(URL)

You can set properties for an individual driver or for an entire driver package. The following table shows some of the available properties that you can configure specifically for drivers and driver packages.

+ADw-table+AD4-
+ADw-colgroup+AD4-
+ADw-col width+AD0AIg-50+ACUAIg- /+AD4-
+ADw-col width+AD0AIg-50+ACUAIg- /+AD4-
+ADw-/colgroup+AD4-
+ADw-thead+AD4-
+ADw-tr class+AD0AIg-header+ACIAPg-
+ADw-th align+AD0AIg-left+ACIAPg-Driver Project Properties+ADw-/th+AD4-
+ADw-th align+AD0AIg-left+ACIAPg-Driver Package Properties+ADw-/th+AD4-
+ADw-/tr+AD4-
+ADw-/thead+AD4-
+ADw-tbody+AD4-
+ADw-tr class+AD0AIg-odd+ACIAPg-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4-Signing properties for individual driver files (see +ADw-a href+AD0AIg-signing+AF8-a+AF8-driver.htm+ACIAPg-Signing a Driver+ADw-/a+AD4-)+ADw-/p+AD4APA-/td+AD4-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4-Signing properties for driver packages (see +ADw-a href+AD0AIg-signing+AF8-a+AF8-driver.htm+ACIAPg-Signing a Driver+ADw-/a+AD4-)+ADw-/p+AD4APA-/td+AD4-
+ADw-/tr+AD4-
+ADw-tr class+AD0AIg-even+ACIAPg-
+ADw-td align+AD0AIg-left+ACIAPgA8-a href+AD0AIg-counters+AF8-manifest+AF8-preprocessor+AF8-properties+AF8-for+AF8-driver+AF8-projects.htm+ACIAPg-Counters Manifest Preprocessor Properties for Driver Projects+ADw-/a+AD4- (for +ADw-a href+AD0AIg-perf.ctrpp+ACIAPgA8-strong+AD4-CTRPP+ADw-/strong+AD4APA-/a+AD4-)+ADw-/td+AD4-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4APA-a href+AD0AIg-deployment+AF8-properties+AF8-for+AF8-driver+AF8-projects.htm+ACIAPg-Deployment Properties for Driver Package Projects+ADw-/a+AD4- (see +ADw-a href+AD0AIg-deploying+AF8-a+AF8-driver+AF8-to+AF8-a+AF8-test+AF8-computer.htm+ACIAPg-Deploying a Driver to a Test Computer+ADw-/a+AD4-)+ADw-/p+AD4APA-/td+AD4-
+ADw-/tr+AD4-
+ADw-tr class+AD0AIg-odd+ACIAPg-
+ADw-td align+AD0AIg-left+ACIAPgA8-a href+AD0AIg-driver+AF8-model+AF8-settings+AF8-properties+AF8-for+AF8-driver+AF8-projects.htm+ACIAPg-Driver Model Settings Properties for Driver Projects+ADw-/a+AD4APA-/td+AD4-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4APA-a href+AD0AIg-driver+AF8-verifier+AF8-properties+AF8-for+AF8AXw-driver+AF8-projects.htm+ACIAPg-Driver Verifier Properties for Driver Package Projects+ADw-/a+AD4APA-/p+AD4APA-/td+AD4-
+ADw-/tr+AD4-
+ADw-tr class+AD0AIg-even+ACIAPg-
+ADw-td align+AD0AIg-left+ACIAPgA8-a href+AD0AIg-message+AF8-compiler+AF8-properties+AF8-for+AF8-driver+AF8-projects.htm+ACIAPg-Message Compiler Properties for Driver Projects+ADw-/a+AD4APA-/td+AD4-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4APA-a href+AD0AIg-kmdf+AF8-verifier+AF8-properties+AF8-for+AF8-driver+AF8-package+AF8-projects.htm+ACIAPg-KMDF Verifier Properties for Driver Package Projects+ADw-/a+AD4APA-/p+AD4APA-/td+AD4-
+ADw-/tr+AD4-
+ADw-tr class+AD0AIg-odd+ACIAPg-
+ADw-td align+AD0AIg-left+ACIAPgA8-a href+AD0AIg-stampinf+AF8-properties+AF8-for+AF8-driver+AF8-projects.htm+ACIAPg-Stampinf Properties for Driver Projects+ADw-/a+AD4APA-/td+AD4-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4APA-a href+AD0AIg-umdf+AF8-verifier+AF8-properties+AF8-for+AF8-driver+AF8-package+AF8-projects.htm+ACIAPg-UMDF Verifier Properties for Driver Package Projects+ADw-/a+AD4APA-/p+AD4APA-/td+AD4-
+ADw-/tr+AD4-
+ADw-tr class+AD0AIg-even+ACIAPg-
+ADw-td align+AD0AIg-left+ACIAPgA8-a href+AD0AIg-URL+ACIAPg-WPP Preprocessor (WPP Tracing)+ADw-/a+AD4APA-/td+AD4-
+ADw-td align+AD0AIg-left+ACIAPgA8-p+AD4APA-a href+AD0AIg-inf2cat+AF8-properties+AF8-for+AF8-driver+AF8-package+AF8-projects.htm+ACIAPg-Inf2Cat Properties for Driver Package Projects+ADw-/a+AD4- (see the +ADw-a href+AD0AIg-devtest.inf2cat+ACIAPgA8-strong+AD4-Inf2Cat+ADw-/strong+AD4APA-/a+AD4- tool)+ADw-/p+AD4APA-/td+AD4-
+ADw-/tr+AD4-
+ADw-/tbody+AD4-
+ADw-/table+AD4-

+AMIAoA-

+ADw-span id+AD0AIg-troubleshooting+ACIAPgA8-/span+AD4APA-span id+AD0AIg-TROUBLESHOOTING+ACIAPgA8-/span+AD4-Troubleshooting tip for building a driver
-------------------------------------------------------------------------------------------------------------

The following tip can help you to troubleshoot problems when you use the WDK and Visual Studio to build drivers.

+ACEAWwBd-(../common/wedge.gif)+ACoAKg-To increase the verbosity of the build output using the options in Visual Studio+ACoAKg-

1.  Click +ACoAKg-Tools+ACoAKgAm-gt+ADs- +ACoAKg-Options+ACoAKg-.
2.  Click the +ACoAKg-Project and Solutions+ACoAKg- folder and click +ACoAKg-Build and Run+ACoAKg-.
3.  Change the options for the +ACoAKg-MSBuild project build output verbosity+ACoAKg- and +ACoAKg-MSBuild project build log file verbosity+ACoAKg-. By default, these are set to Minimal.

+ADw-span id+AD0AIg-related+AF8-topics+ACIAPgA8-/span+AD4-Related topics
-----------------------------------------------

+AFs-Building in Visual Studio+AF0-(http://go.microsoft.com/fwlink/p/?linkid+AD0-227872)
+AFs-Building Drivers for Different Versions of Windows+AF0-(building+AF8-drivers+AF8-for+AF8-different+AF8-versions+AF8-of+AF8-windows.md)
+AFs-Using the Microsoft C Runtime with User-Mode Drivers and Desktop Apps+AF0-(using+AF8-the+AF8-microsoft+AF8-c+AF8-runtime+AF8-with+AF8-user+AF8-mode+AF8-drivers+AF8-and+AF8-apps.md)
+AFs-ProjectUpgradeTool+AF0-(URL)
+AFs-MSBuild+AF0-(http://go.microsoft.com/fwlink/p/?linkid+AD0-262804)
+AFs-Creating a Driver From Existing Source Files+AF0-(creating+AF8-a+AF8-driver+AF8-from+AF8-existing+AF8-source+AF8-files.md)
+AFs-WDK and the Visual Studio build environment+AF0-(URL)
+AFs-Signing a Driver+AF0-(signing+AF8-a+AF8-driver.md)
+AFs-Deploying a Driver to a Test Computer+AF0-(deploying+AF8-a+AF8-driver+AF8-to+AF8-a+AF8-test+AF8-computer.md)
+AMIAoA-

+AMIAoA-

+AFs-Send comments about this topic to Microsoft+AF0-(mailto:wsddocfb+AEA-microsoft.com?subject+AD0-Documentation+ACU-20feedback+ACU-20+AFs-VsDriver+AFw-vsdriver+AF0-:+ACU-20Building+ACU-20a+ACU-20Driver+ACU-20with+ACU-20the+ACU-20WDK+ACU-20+ACU-20RELEASE:+ACU-20(9/30/2015)+ACY-body+AD0AJQ-0A+ACU-0APRIVACY+ACU-20STATEMENT+ACU-0A+ACU-0AWe+ACU-20use+ACU-20your+ACU-20feedback+ACU-20to+ACU-20improve+ACU-20the+ACU-20documentation.+ACU-20We+ACU-20don't+ACU-20use+ACU-20your+ACU-20email+ACU-20address+ACU-20for+ACU-20any+ACU-20other+ACU-20purpose,+ACU-20and+ACU-20we'll+ACU-20remove+ACU-20your+ACU-20email+ACU-20address+ACU-20from+ACU-20our+ACU-20system+ACU-20after+ACU-20the+ACU-20issue+ACU-20that+ACU-20you're+ACU-20reporting+ACU-20is+ACU-20fixed.+ACU-20While+ACU-20we're+ACU-20working+ACU-20to+ACU-20fix+ACU-20this+ACU-20issue,+ACU-20we+ACU-20might+ACU-20send+ACU-20you+ACU-20an+ACU-20email+ACU-20message+ACU-20to+ACU-20ask+ACU-20for+ACU-20more+ACU-20info.+ACU-20Later,+ACU-20we+ACU-20might+ACU-20also+ACU-20send+ACU-20you+ACU-20an+ACU-20email+ACU-20message+ACU-20to+ACU-20let+ACU-20you+ACU-20know+ACU-20that+ACU-20we've+ACU-20addressed+ACU-20your+ACU-20feedback.+ACU-0A+ACU-0AFor+ACU-20more+ACU-20info+ACU-20about+ACU-20Microsoft's+ACU-20privacy+ACU-20policy,+ACU-20see+ACU-20http://privacy.microsoft.com/en-us/default.aspx. +ACI-Send comments about this topic to Microsoft+ACI-)

+AMIAqQDCAKA-2015 Microsoft. All rights reserved.

