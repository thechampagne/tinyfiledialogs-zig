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
pub const wchar_t = c_int;
pub extern var tinyfd_winUtf8: c_int;
pub extern fn tinyfd_utf8toMbcs(aUtf8string: [*c]const u8) [*c]u8;
pub extern fn tinyfd_utf16toMbcs(aUtf16string: [*c]const wchar_t) [*c]u8;
pub extern fn tinyfd_mbcsTo16(aMbcsString: [*c]const u8) [*c]wchar_t;
pub extern fn tinyfd_mbcsTo8(aMbcsString: [*c]const u8) [*c]u8;
pub extern fn tinyfd_utf8to16(aUtf8string: [*c]const u8) [*c]wchar_t;
pub extern fn tinyfd_utf16to8(aUtf16string: [*c]const wchar_t) [*c]u8;

pub extern fn tinyfd_notifyPopupW(aTitle: [*c]const wchar_t, aMessage: [*c]const wchar_t, aIconType: [*c]const wchar_t) c_int;
pub extern fn tinyfd_messageBoxW(aTitle: [*c]const wchar_t, aMessage: [*c]const wchar_t, aDialogType: [*c]const wchar_t, aIconType: [*c]const wchar_t, aDefaultButton: c_int) c_int;
pub extern fn tinyfd_inputBoxW(aTitle: [*c]const wchar_t, aMessage: [*c]const wchar_t, aDefaultInput: [*c]const wchar_t) [*c]wchar_t;
pub extern fn tinyfd_saveFileDialogW(aTitle: [*c]const wchar_t, aDefaultPathAndFile: [*c]const wchar_t, aNumOfFilterPatterns: c_int, aFilterPatterns: [*c]const [*c]const wchar_t, aSingleFilterDescription: [*c]const wchar_t) [*c]wchar_t;
pub extern fn tinyfd_openFileDialogW(aTitle: [*c]const wchar_t, aDefaultPathAndFile: [*c]const wchar_t, aNumOfFilterPatterns: c_int, aFilterPatterns: [*c]const [*c]const wchar_t, aSingleFilterDescription: [*c]const wchar_t, aAllowMultipleSelects: c_int) [*c]wchar_t;
pub extern fn tinyfd_selectFolderDialogW(aTitle: [*c]const wchar_t, aDefaultPath: [*c]const wchar_t) [*c]wchar_t;
pub extern fn tinyfd_colorChooserW(aTitle: [*c]const wchar_t, aDefaultHexRGB: [*c]const wchar_t, aDefaultRGB: [*c]const u8, aoResultRGB: [*c]u8) [*c]wchar_t;
