PROGRAM _INIT
	// This is a simple Task to move an axis. Operation is via the Watch-Window.
	AxisPar.Distance := 20; // [°]
	AxisPar.Velocity := 360; // [°/s]
	AxisPar.Acceleration := 3600; // [°/s^2]
	AxisPar.Deceleration := 3600; // [°/s^2]

END_PROGRAM
PROGRAM _CYCLIC
	// Use the following commands:
	//   MpAxisBasic_0.Power: Switch the axis on
	//   MpAxisBasic_0.Home: Home the axis
	//   MpAxisBasic_0.MoveAdditive: move the arrow on the axis into the field of view
	//   MpAxisBasic_0.MoveVelocity: move the axis continously
	//   MpAxisBasic_0.Update: Activate a new speed after the change OF AxisPar.Velocity
	
	MpAxisBasic_0.MpLink := ADR(gAxis_1);
	MpAxisBasic_0.Parameters := ADR(AxisPar);
	MpAxisBasic_0.Enable := TRUE;
	MpAxisBasic_0();
	
END_PROGRAM