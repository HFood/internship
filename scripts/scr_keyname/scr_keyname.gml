function scr_keyname(argument0) //gml_Script_scr_keyname
{
    switch argument0
    {
        case 37:
            return "LEFT";
        case 39:
            return "RIGHT";
        case 38:
            return "UP";
        case 40:
            return "DOWN";
        case 160:
            return "SHIFT";
        case 16:
            return "SHIFT";
        case 161:
            return "SHIFT";
        case 162:
            return "CONTROL";
        case 17:
            return "CONTROL";
        case 163:
            return "CONTROL";
        case 27:
            return "ESCAPE";
        case 112:
            return "F1";
        case 113:
            return "F2";
        case 114:
            return "F3";
        case 115:
            return "F4";
        case 116:
            return "F5";
        case 117:
            return "F6";
        case 118:
            return "F7";
        case 119:
            return "F8";
        case 120:
            return "F9";
        case 121:
            return "F10";
        case 122:
            return "F11";
        case 123:
            return "F12";
        case 165:
            return "ALT";
        case 164:
            return "ALT";
        case 8:
            return "BACKSPACE";
        case 110:
            return "DECIMAL";
        case 111:
            return "DIVIDE";
        case 46:
            return "DELETE";
        case 35:
            return "END";
        case 36:
            return "HOME";
        case 45:
            return "INSERT";
        case 106:
            return "MULTIPLY";
        case 34:
            return "PAGE DOWN";
        case 33:
            return "PAGE UP";
        case 19:
            return "PAUSE";
        case 44:
            return "PRINTSCREEN";
        case 13:
            return "RETURN";
        case 109:
            return "SUBTRACT";
        case 9:
            return "TAB";
        case 96:
            return "NUMPAD 0";
        case 97:
            return "NUMPAD 1";
        case 98:
            return "NUMPAD 2";
        case 99:
            return "NUMPAD 3";
        case 100:
            return "NUMPAD 4";
        case 101:
            return "NUMPAD 5";
        case 102:
            return "NUMPAD 6";
        case 103:
            return "NUMPAD 7";
        case 104:
            return "NUMPAD 8";
        case 105:
            return "NUMPAD 9";
        case 32:
            return "SPACE";
    }

    return chr(argument0);
}

