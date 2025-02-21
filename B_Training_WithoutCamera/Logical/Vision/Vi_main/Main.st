PROGRAM _INIT
	// This sample-task triggers a camera with a mappMotion axis
	// In the Vision Application the Trigger Source must be switched to "mapp Axis". In this sample the axis "gAxis_1" is connected to the VisionApplication
	// Usage:
	//   Activate the camera with CmdTriggerImage
	//   Use ViBaseAxisBasedAcquisition_0.AcquisitionParameters.AcquisitionPositions[x] to make one or more trigger points
	//   After the change of Parameters use ViBaseAxisBasedAcquisition_0.Update
	
	VisionCtrl.Parameters.SetFocus := 6000; // [10µm]
	VisionCtrl.Parameters.ExposureTime := 60; // [µs]
	VisionCtrl.Parameters.FlashColor := 1; // red
	VisionCtrl.Parameters.FlashSegment := 15; // 15 = all Segments
	VisionCtrl.Parameters.EnableVF := TRUE; // Enables the Vision Function (here matching)
END_PROGRAM
PROGRAM _CYCLIC
	// ToDo: Insert code for triggering the camera with mappMotion here

	// Load the image from the camera (task Vi_Image --> CmdShowImageMappView) when the image is ready
	IF VisionCtrl.Status.CompletedAcquisitionCnt <> CompletedAcquisitionCntOld THEN
		CompletedAcquisitionCntOld := VisionCtrl.Status.CompletedAcquisitionCnt;
		CmdShowImageMappView := TRUE;
	END_IF
	
END_PROGRAM