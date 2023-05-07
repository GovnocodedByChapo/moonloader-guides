local active = false

function main()
    while not isSampAvailable() do wait(0) end
    sampAddChatMessage('Скрипт загружен!', 0xFFff0000)
    sampRegisterChatCommand('to', function()
        active = not active
        sampAddChatMessage(active and 'Включен' or 'Выключен', -1)
    end)
    while true do
        wait(0)
        if active then
            printStyledString('Script active!', 20, 7)
        end
    end
end
