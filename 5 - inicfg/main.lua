local inicfg = require('inicfg');
local iniFileName = 'filename.ini';
local ini = inicfg.load({
    main = {
        enabled = false,
        text = 'Hello world',
        delay = 100
    },
}, iniFileName);
inicfg.save(ini, iniFileName);


function main()
    while not isSampAvailable() do wait(0) end
    sampRegisterChatCommand('ini.text', function(arg)
        ini.main.text = arg;
        inicfg.save(ini, iniFileName);
        sampAddChatMessage('Текст изменен на "' .. arg .. '"', -1);
    end)
    sampRegisterChatCommand('ini.toggle', function()
        ini.main.enabled = not ini.main.enabled;
        inicfg.save(ini, iniFileName);
        sampAddChatMessage('Скрипт ' .. (ini.main.enabled and 'включен' or 'выключен'), -1);
    end)
    
    while true do
        wait(ini.main.delay);
        if (ini.main.enabled) then
            sampAddChatMessage(ini.main.text, -1);
        end
    end
end
