require('lib.moonloader')
local list = {
    [VK_L] = '/lock',
    [VK_K] = '/key',
    [VK_G] = '/engine'
}

function main()
    while not isSampAvailable() do wait(0) end
    sampAddChatMessage('Скрипт загружен!', 0xFFff0000)
    while true do
        wait(0)
        for key, text in pairs(list) do
            if wasKeyPressed(key) and not sampIsCursorActive() then
                sampSendChat(text)
            end
        end
    end
end
