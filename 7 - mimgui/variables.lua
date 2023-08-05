local ffi = require('ffi');
local imgui = require('mimgui');

--// ImVec2
local mimVec2 = imgui.ImVec2(10, 20);
print(mimVec2.x, mimVec2.y) -- чтение
mimVec2.x, mimVec2.y = 22, 95 -- изменение 

--// ImVec4
local mimVec4 = imgui.ImVec4(10, 20, 30, 40);
print(mimVec4.x, mimVec4.y, mimVec4.z, mimVec4.w) -- чтение
mimVec4.x, mimVec4.y, mimVec4.z, mimVec4.w = 22, 95, 109, 37 -- изменение 

--// BOOL
local mimBool = imgui.new.bool(true);
print(mimBool[0]) -- чтение
mimBool[0] = false -- изменение

--// INT
local mimInt = imgui.new.int(1);
print(mimInt[0]) -- чтение
mimInt[0] = 2 -- изменение

--// FLOAT
local mimFloat = imgui.new.float(1.5);
print(mimFloat[0]) -- чтение
mimFloat[0] = 2.5 -- изменение

--// CHAT
local mimChar = imgui.new.char[64]('Text');
print(ffi.string(mimChar[0])) -- чтение
imgui.StrCopy(mimChar, 'new text') -- изменение

--// FLOAT 4
local mimFloat = imgui.new.float[4](1.5, 2.7, 2.9, 10.1);
print(mimFloat[0], mimFloat[1], mimFloat[2], mimFloat[3]) -- чтение
mimFloat[0], mimFloat[1], mimFloat[2], mimFloat[3] = 1, 2, 3, 4 -- изменение
