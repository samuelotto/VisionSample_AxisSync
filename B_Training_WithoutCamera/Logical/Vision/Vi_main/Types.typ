(*Camera*)

TYPE
	VisionCtrlType : 	STRUCT 
		Cmd : VisionCtrlCmdType;
		Parameters : VisionCtrlParType;
		Status : VisionCtrlStatusType;
	END_STRUCT;
	VisionCtrlCmdType : 	STRUCT 
		AcquireImage : BOOL;
		EnableVisionFunction : BOOL;
	END_STRUCT;
	VisionCtrlParType : 	STRUCT 
		SetFocus : UINT;
		ExposureTime : UDINT;
		FlashColor : USINT;
		FlashSegment : USINT;
		EnableVF : BOOL;
	END_STRUCT;
	VisionCtrlStatusType : 	STRUCT 
		CompletedAcquisitionCnt : USINT;
	END_STRUCT;
END_TYPE
