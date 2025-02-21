# VisionSample_AxisSyc

## Table of Contents
* [Introduction](#introduction)
* [Features](#features)
* [Requirements](#requirements)
* [Revision History](#revision-history)
* [Detailed information about the project](#detailed-information-about-the-project)

# Introduction
A simple sample for [B&amp;R Machine Vision](https://www.br-automation.com/de-de/produkte/vision-systeme/) to show the connection to an axis and to trigger images simply and automatic via a mappMotion axis

This sample is used in the [Training: Einführung Integrated Machine Vision [SEM1610.3]](https://www.br-automation.com/de-de/academy/seminare-in-deutschland/alle-laender/seminare/training-einfuehrung-integrated-machine-vision-sem16103/) in Germany, Friedberg. It can also be used as a simple test and basic project.


**Note**: The included tasks serve only as a code example. It is recommended that you follow and understand the content and expand or adapt it if necessary.

**Note**: There is a sample with much more extended functions available: [mappVision-Demo/basic](https://github.com/br-automation-com/mappVision-Demo/blob/basic)

**Note**: There is a simple sample were some parts are used from, e.g. Vi_Image: [VisionSample_AllVF](https://github.com/samuelotto/VisionSample_AllVF)


# Features
* Trigger Vision Image via Axis
* Basic usage of [ViBaseAxisBasedAcquisition](https://help.br-automation.com/#/en/4/machine_vision%2Fmapp_vision%2Fprogramming%2Flibraries%2Fvibase%2Ffbks%2Fvibaseaxisbasedacquisition%2Ffb_vibaseaxisbasedacquisition.html)
* Sample task for showing the image on a mappView visualization
	* Including the download of the image e.g. as jpg, bmp or svg file
	* Based on [VisionSample_AllVF](https://github.com/samuelotto/VisionSample_AllVF)
* Includes a project-variant for the training, where the camera needs to be added and configured and the tast Vi_main to be filled.


# Requirements
Should also work with newer and some older versions
* Automation Studio 4.12
* Automation Runtime M4.93
* mappVision 5.27 (at least 5.26)
* mappView 5.24

# Revision History
## V1.00.0
First version

# Detailed information about the project
## General configuration
All settings are done as described in the mappVision Getting Started: [Automation Help - mappVision - Getting Started](https://help.br-automation.com/#/en/4/machine_vision%2Fmapp_vision%2Fgetting_started%2Fgetting_started.html)

## Task Vi_Main
This task can be used to trigger a camera.

The variable **CmdTriggerImage** activates the trigger with ViBaseAxisBasedAcquisition

**Note**: To use the ViBaseAxisBasedAcquisition, the Trigger Source needs to be set to "mapp Motion" in the Vision Application


## Task Vi_Image

This task has two features:
* Load the image from the camera and show it in mappView
* Save the image on the PLC

The variables **CmdShowImageMappView** and **CmdSaveFile** start the functions.


