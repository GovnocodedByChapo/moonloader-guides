local ffi = require('ffi');
local imgui = require('mimgui');
local encoding = require('encoding');
encoding.default = 'CP1251';
local u8 = encoding.UTF8;

local window = imgui.new.bool(true);
local active = imgui.new.bool(false);
local text = imgui.new.char[64]('Hello world!');

local radioInt = imgui.new.int(1);
local color = imgui.new.float[4](1, 1, 1, 1);

imgui.OnInitialize(function()
    imgui.GetIO().IniFilename = nil;
end)

imgui.OnFrame(
    function() return window[0] end,
    function(this)
        imgui.ShowDemoWindow();
        local size, res = imgui.ImVec2(450, 250), imgui.ImVec2(getScreenResolution());
        imgui.SetNextWindowPos(imgui.ImVec2(res.x / 2, res.y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5));
        imgui.SetNextWindowSize(size, imgui.Cond.FirstUseEver);
        if imgui.Begin('test window', window, imgui.WindowFlags.NoCollapse) then
            imgui.Text('Text1');
            imgui.SameLine();
            imgui.Text('Text2');
            imgui.NewLine();
            imgui.Text('Text3');
            imgui.Spacing();
            imgui.Text('Text4');
            imgui.Separator();

            imgui.RadioButtonIntPtr('One', radioInt, 1);
            imgui.RadioButtonIntPtr('Two', radioInt, 2);
            imgui.RadioButtonIntPtr('Three', radioInt, 3);
            imgui.InputInt('Number##input', radioInt, -1);
            imgui.SliderInt('Number##slider', radioInt, 0, 10, 'Number is %d');
            imgui.ColorEdit4('##Color', color, imgui.ColorEditFlags.NoInputs + imgui.ColorEditFlags.AlphaBar);
            imgui.SameLine();
            imgui.Text('Color');

            imgui.Checkbox(u8'Статус работы', active);
            imgui.InputText(u8'Текст', text, ffi.sizeof(text));
            imgui.End();
        end
    end
)

function main()
    while not isSampAvailable() do wait(0) end
    sampRegisterChatCommand('mimgui_toggle', function()
        window[0] = not window[0];
    end);
    while true do
        wait(500)
        if (active[0]) then
            sampAddChatMessage(u8:decode(ffi.string(text)), -1);
        end
    end
end
