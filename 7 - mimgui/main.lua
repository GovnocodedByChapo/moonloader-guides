local ffi = require('ffi');
local imgui = require('mimgui');
local encoding = require('encoding');
encoding.default = 'CP1251';
local u8 = encoding.UTF8;

local window = imgui.new.bool(false);
local active = imgui.new.bool(false);
local text = imgui.new.char[64]('Hello world!');

imgui.OnInitialize(function()
    imgui.GetIO().IniFilename = nil;
end)

imgui.OnFrame(
    function() return window[0] end,
    function(this)
        local size, res = imgui.ImVec2(450, 250), imgui.ImVec2(getScreenResolution());
        imgui.SetNextWindowPos(imgui.ImVec2(res.x / 2, res.y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5));
        imgui.SetNextWindowSize(size, imgui.Cond.FirstUseEver);
        if imgui.Begin('test window', window, imgui.WindowFlags.NoCollapse) then
            if (imgui.Checkbox(u8'Статус работы', active)) then
                sampAddChatMessage('Чекбокс ' .. (active[0] and 'включен' or 'выключен'), -1);
            end
            imgui.InputText(u8'Текст', text, ffi.sizeof(text));
            if (imgui.Button(u8'Добавить сообщение в чат')) then
                sampAddChatMessage(u8:decode(ffi.string(text)), -1);
            end
            imgui.End();
        end
    end
)

function main()
    while not isSampAvailable() do wait(0) end
    sampRegisterChatCommand('mimgui_toggle', function()
        window[0] = not window[0];
    end)
    while true do
        wait(500)
        if (active[0]) then
            sampAddChatMessage(u8:decode(ffi.string(text)), -1);
        end
    end
end
