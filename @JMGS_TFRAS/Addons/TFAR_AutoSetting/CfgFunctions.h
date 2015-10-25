//------------------------------------------
//TFAR AutoSetting
// CfgFunctions.h
//------------------------------------------
class CfgFunctions 
{
	class TFARAutoSetting
	{
		class MENT_TFARAutoSetting_Functions
		{
			file = "TFAR_AutoSetting\functions";
			class Init
			{
				postInit = 1;
			};
			class InitServer {};
			class InitClient {};
			class SetDefaultTFARSetting {};
			class AddActionMenu {};
			class SetRadioFrequencySetting {};
			class CreateParseText {};
		};
	};
};
