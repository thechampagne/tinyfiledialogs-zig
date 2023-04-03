// zlib License
// 
// (C) 2032 XXIV
// 
// This software is provided 'as-is', without any express or implied
// warranty.  In no event will the authors be held liable for any damages
// arising from the use of this software.
// 
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it
// freely, subject to the following restrictions:
// 
// 1. The origin of this software must not be misrepresented; you must not
//    claim that you wrote the original software. If you use this software
//    in a product, an acknowledgment in the product documentation would be
//    appreciated but is not required.
// 2. Altered source versions must be plainly marked as such, and must not be
//    misrepresented as being the original software.
// 3. This notice may not be removed or altered from any source distribution.
pub extern var tinyfd_version: [8]u8;
pub extern var tinyfd_needs: [*c]u8;
pub extern var tinyfd_verbose: c_int;
pub extern var tinyfd_silent: c_int;
pub extern var tinyfd_allowCursesDialogs: c_int;
pub extern var tinyfd_forceConsole: c_int;
pub extern var tinyfd_assumeGraphicDisplay: c_int;
pub extern var tinyfd_response: [1024]u8;

pub extern fn tinyfd_getGlobalChar(aCharVariableName: [*c]const u8) [*c]const u8;
pub extern fn tinyfd_getGlobalInt(aIntVariableName: [*c]const u8) c_int;
pub extern fn tinyfd_setGlobalInt(aIntVariableName: [*c]const u8, aValue: c_int) c_int;
pub extern fn tinyfd_beep() void;
pub extern fn tinyfd_notifyPopup(aTitle: [*c]const u8, aMessage: [*c]const u8, aIconType: [*c]const u8) c_int;
pub extern fn tinyfd_messageBox(aTitle: [*c]const u8, aMessage: [*c]const u8, aDialogType: [*c]const u8, aIconType: [*c]const u8, aDefaultButton: c_int) c_int;
pub extern fn tinyfd_inputBox(aTitle: [*c]const u8, aMessage: [*c]const u8, aDefaultInput: [*c]const u8) [*c]u8;
pub extern fn tinyfd_saveFileDialog(aTitle: [*c]const u8, aDefaultPathAndFile: [*c]const u8, aNumOfFilterPatterns: c_int, aFilterPatterns: [*c]const [*c]const u8, aSingleFilterDescription: [*c]const u8) [*c]u8;
pub extern fn tinyfd_openFileDialog(aTitle: [*c]const u8, aDefaultPathAndFile: [*c]const u8, aNumOfFilterPatterns: c_int, aFilterPatterns: [*c]const [*c]const u8, aSingleFilterDescription: [*c]const u8, aAllowMultipleSelects: c_int) [*c]u8;
pub extern fn tinyfd_selectFolderDialog(aTitle: [*c]const u8, aDefaultPath: [*c]const u8) [*c]u8;
pub extern fn tinyfd_colorChooser(aTitle: [*c]const u8, aDefaultHexRGB: [*c]const u8, aDefaultRGB: [*c]const u8, aoResultRGB: [*c]u8) [*c]u8;

pub extern fn tinyfd_arrayDialog(aTitle: [*c]const u8, aNumOfColumns: c_int, aColumns: [*c]const [*c]const u8, aNumOfRows: c_int, aCells: [*c]const [*c]const u8) [*c]u8;
pub extern fn tinyfd_checklistDialog(aTitle: [*c]const u8, aNumOfOptions: c_int, aOptions: [*c]const [*c]const u8) [*c]u8;
