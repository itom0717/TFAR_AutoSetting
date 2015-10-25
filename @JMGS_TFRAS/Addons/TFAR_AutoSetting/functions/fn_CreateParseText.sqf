//------------------------------------------
//TFAR AutoSetting
//
// Name:
//   TFARAutoSetting_Fnc_CreateParseText
//
// Description:
//   Structured Text Creation support
//
// Parameters:
//   0: STRING  - Text
//   1: STRING  - Font Size
//                  Default is "1.0"
//   2: STRING  - Color
//                  format RGB or ARGB
//   3: STRING  - Font Name
//                  "EtelkaMonospacePro"  ---- This font is recommended when the Japanese mixed
//                  "EtelkaNarrowMediumPro"
//                  "Purista"
//                  "Purista-Bold"
//                  "purista-light"
//                  "purista-medium"
//                  "Purista-Semibold"
//                  "Zeppelin32"
//                  "Zeppelin33"
//                  "Zeppelin33-Italic"
//   4: STRING  - Text Align
//                  "left" or  "center" or  "right"
//   5: BOOLEAN - Underline
//                  true or false
//   6: STRING  - Shadow
//                  "0" (no shadow), "1" (classic shadow, can be colored), "2" outline (always black)
//   7: STRING  - SharowColor
//                  Shadow = "1" to Color(format RGB or ARGB)
//
// Returns:
//   文字列
//------------------------------------------

private ["_text", "_size", "_color", "_font", "_align", "_underline", "_shadow", "_shadowColor", "_result", "_tag"];

_text        = _this select 0;
_size        = _this select 1;
_color       = _this select 2;
_font        = _this select 3;
_align       = _this select 4;
_underline   = _this select 5;
_shadow      = _this select 6;
_shadowColor = _this select 7;

_result      = "";
_tag         = "";


if((!isNil "_size") && (_size != "")) then
{
	_tag = _tag + format[" size='%1'", _size];
};

if((!isNil "_color") && (_color != "")) then
{
	_tag = _tag + format[" color='%1'", _color];
};

if((!isNil "_font") && (_font != "")) then
{
	_tag = _tag + format[" font='%1'", _font];
};

if((!isNil "_align") && (_align != "")) then
{
	_tag = _tag + format[" align='%1'", _align];
};

if((!isNil "_underline") && (_underline != "")) then
{
	_tag = _tag + format[" underline='%1'", _underline];
};

if((!isNil "_shadow") && (_shadow != "")) then
{
	_tag = _tag + format[" shadow='%1'", _shadow];
	if((!isNil "_shadowColor") && (_shadowColor != "")) then
	{
		_tag = _tag + format[" shadowColor='%1'", _shadowColor];
	};
};

if(_tag != "") then
{
	_result = "<t" + _tag + ">" + _text + "</t>";
}
else
{
	_result = _text;
};

_result;
