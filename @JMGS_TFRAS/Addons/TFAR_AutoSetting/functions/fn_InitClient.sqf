//------------------------------------------
//TFAR AutoSetting
//
// Name:
//   TFARAutoSetting_Fnc_InitClient
//
// Description:
//   Client-side initialization process
//
// Parameters:
//   Nothing
//
// Returns:
//   Nothing
//------------------------------------------

waitUntil
{
	!isnull player
};


if (player == player) then
{
	sleep 10;

	//The default value setting
	nul = [] spawn TFARAutoSetting_Fnc_SetDefaultTFARSetting;

	sleep 3;

	//Add a menu to ActionMenu
	nul = [] spawn TFARAutoSetting_Fnc_AddActionMenu;

	//Add EventHandler Respawn
	player addEventHandler ["Respawn", {nul = [] spawn TFARAutoSetting_Fnc_AddActionMenu}];

};
