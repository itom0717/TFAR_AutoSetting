//------------------------------------------
//TFAR AutoSetting
//
// Name:
//   TFARAutoSetting_Fnc_SetDefaultRadioSetting
//
// Description:
//  default value of the radio
//
// Parameters:
//   Nothing
//
// Returns:
//   Nothing
//------------------------------------------

#include "\userconfig\TFAR_AutoSetting\setting.hpp"


if (hasInterface) then
{
	//Client Only

	//----------------------------
	tf_same_sw_frequencies_for_side = true;
	_settingsSwWest = false call TFAR_fnc_generateSwSettings;
	_settingsSwWest set [2, SW_CHANNELS_FREQUENCY];
	tf_freq_west = _settingsSwWest;

	TF_defaultWestPersonalRadio = DEFAULT_WEST_PERSONAL_RADIO;
	TF_defaultWestRiflemanRadio = DEFAULT_WEST_RIFLEMAN_RADIO;
	TF_defaultWestAirborneRadio = DEFAULT_WEST_AIRBORNE_RADIO;
	//----------------------------
};



if (isServer or isDedicated) then
{
	//Server Side only

	tf_no_auto_long_range_radio = true;
	publicVariable "tf_no_auto_long_range_radio";

	tf_same_sw_frequencies_for_side = true;
	publicVariable "tf_same_sw_frequencies_for_side";

	tf_same_lr_frequencies_for_side = true;
	publicVariable "tf_same_lr_frequencies_for_side";

	TF_defaultWestPersonalRadio = DEFAULT_WEST_PERSONAL_RADIO;
	TF_defaultWestRiflemanRadio = DEFAULT_WEST_RIFLEMAN_RADIO;
	TF_defaultWestAirborneRadio = DEFAULT_WEST_AIRBORNE_RADIO;
	publicVariable "TF_defaultWestPersonalRadio";
	publicVariable "TF_defaultWestRiflemanRadio";
	publicVariable "TF_defaultWestAirborneRadio";


	_settingsSwWest = false call TFAR_fnc_generateSwSettings;
	_settingsSwWest set [2, SW_CHANNELS_FREQUENCY];
	tf_freq_west = _settingsSwWest;
	publicVariable "tf_freq_west";

	_settingsLrWest = false call TFAR_fnc_generateLrSettings;
	_settingsLrWest set [2, LR_CHANNELS_FREQUENCY];
	tf_freq_west_lr = _settingsLrWest;
	publicVariable "tf_freq_west_lr";


};
