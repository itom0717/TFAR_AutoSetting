//------------------------------------------
//TFAR AutoSetting
//
// Name:
//   TFARAutoSetting_Fnc_Init
//
// Description:
//   Initializing process
//   Perform the processing of the server-side and client-side
//
// Parameters:
//   Nothing
//
// Returns:
//   Nothing
//------------------------------------------



//Server Side Only
if (isServer or isDedicated) then
{
	[] spawn TFARAutoSetting_Fnc_InitServer;
};

//Client Side Only
if (hasInterface) then
{
	[] spawn TFARAutoSetting_Fnc_InitClient;
};
