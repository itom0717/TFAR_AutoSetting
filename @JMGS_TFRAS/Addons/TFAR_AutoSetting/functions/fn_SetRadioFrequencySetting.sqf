//------------------------------------------
//TFAR AutoSetting
//
// Name:
//   TFARAutoSetting_Fnc_SetRadioFrequencySetting
//
// Parameters:
//   Nothing
//
// Returns:
//   Nothing
//------------------------------------------


#include "\userconfig\TFAR_AutoSetting\setting.hpp"

//Color
//                             NON        1Ch       2Ch       3Ch       4Ch       5Ch       6Ch       7Ch       8Ch
#define CHANNELS_TEXT_COLOR   ["#a9a9a9","#ffffff","#dfeafa","#9fdff7","#7fd5f5","#5fcaf2","#3fc0f0","#1fb5ed","#00abeb"]
#define ERROR_COLOR           "#ffff00"


private ["_radioName", "_radio", "_hintTitle", "_hintInitializing", "_hintFrequencySetting", "_hintCompletion", "_hintError", "_chText", "_tLine", "_t", "_error", "_cnt"];


//----------------------------
_radioName = "*******";
_hintTitle = "";
_hintTitle = _hintTitle + (["Task Force Arrowhead Radio","1.2","#ffffff","","center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
_hintTitle = _hintTitle + "<br/>";
_hintTitle = _hintTitle + (["%1",                        "1.5","#adff2f","","center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
_hintTitle = _hintTitle + "<br/>";
_hintTitle = _hintTitle + "<br/>";

_hintInitializing     = (["Initializing ...<br/>"                  ,"1.2", "#dc143c", "", "center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
_hintFrequencySetting = (["Frequency setting ...<br/>"             ,"1.2", "#dc143c", "", "center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
_hintCompletion       = (["--- Initialization Completion ---<br/>" ,"1.2", "#dc143c", "", "center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
_hintError            = (["--- Initialization Failed ---<br/>"     ,"1.2", "#dc143c", "", "center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
//----------------------------


//----------------------------
_chText = ["","","","","","","","",""];
_tLine   = (["CH %1  -  %2 MHz<br/>" , "1.2", "%3", "", "center","","",""] call TFARAutoSetting_Fnc_CreateParseText);
{
	_t = format[_tLine, _x, "***", (CHANNELS_TEXT_COLOR select 0)];
	_chText set [_x, _t];
	//player sideChat (_chText select _x);
} forEach [1, 2, 3, 4, 5, 6, 7, 8];

_hintText = format[_hintTitle, _radioName];
_hintText = _hintText + _hintInitializing;
{
	_hintText = _hintText + (_chText select _x);
} forEach [1, 2, 3, 4, 5, 6, 7, 8];
_hintText = _hintText + "<br/>";
hintSilent parseText _hintText;
//----------------------------


//addItem radio
player addItem          TF_defaultWestPersonalRadio;
player AssignItem       TF_defaultWestPersonalRadio;
sleep 3;


_error = nil;
_cnt   = 20;
//Wait until the wireless set
waitUntil {
	sleep 1;
	_cnt = _cnt - 1;
	if (! isNil {call TFAR_fnc_activeSwRadio} ) exitWith {_error = false; true;};
	if (_cnt <= 0)                              exitWith {_error = true;  true;};
	false;
};


//----------------------------
if(! _error) then {
	//GetActiveRadio
	_radio = (call TFAR_fnc_activeSwRadio);
	{
		//CHANNEL
		_ch = _x;

		[_radio, _x, SW_CHANNELS_FREQUENCY select (_ch - 1) ] call TFAR_fnc_SetChannelFrequency;
		sleep 0.1;

		_t = format[_tLine, _ch, [_radio, _ch] call TFAR_fnc_GetChannelFrequency, (CHANNELS_TEXT_COLOR select _ch)];
		_chText set [_ch, _t];

		//-------------------------------------
		_radioName = getText(configFile >> "CfgWeapons"  >> _radio >> "displayName");
		_hintText = format[_hintTitle, _radioName];
		_hintText = _hintText + _hintFrequencySetting;
		{
			_hintText = _hintText + (_chText select _x);
		} forEach [1, 2, 3, 4, 5, 6, 7, 8];
		_hintText = _hintText + "<br/>";
		hintSilent parseText _hintText;
		//-------------------------------------

	} forEach [1, 2, 3, 4, 5, 6, 7, 8];
};
//----------------------------





//----------------------------
if(_error) then {
	_hintText = format[_hintTitle, _radioName];
	_hintText = _hintText + _hintError;

	_hintText = _hintText + "<br/>";
	_hintText = _hintText + (["Please try again <br/>it from leaving a space<br/>belongings is full.<br/>" ,"0.8", ERROR_COLOR, "EtelkaMonospacePro", "left","","",""] call TFARAutoSetting_Fnc_CreateParseText);

}
else {
	_hintText = format[_hintTitle, _radioName];
	_hintText = _hintText + _hintCompletion;
	{
		_hintText = _hintText + (_chText select _x);
	} forEach [1, 2, 3, 4, 5, 6, 7, 8];
};
_hintText = _hintText + "<br/>";
hintSilent parseText _hintText;
//----------------------------
