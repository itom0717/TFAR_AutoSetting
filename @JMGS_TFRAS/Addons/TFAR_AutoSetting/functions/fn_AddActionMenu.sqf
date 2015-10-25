//------------------------------------------
//TFAR AutoSetting
//
// Name:
//   TFARAutoSetting_Fnc_AddActionMenu
//
// Description:
//   And register the initial setting menu to action menu
//
// Parameters:
//  Nothing
//
// Returns:
//   Nothing
//------------------------------------------

#include "\userconfig\TFAR_AutoSetting\setting.hpp"

[] spawn {
	player addAction [ MENU_TEXT, {call TFARAutoSetting_Fnc_SetRadioFrequencySetting}, "", -98, false, true ];
};
