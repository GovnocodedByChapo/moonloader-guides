local FontFlag = require('lib.moonloader').font_flag;
local Font = renderCreateFont('Arial', 30, FontFlag.BOLD + FontFlag.BORDER);

function main()
    while not isSampAvailable() do wait(0) end
    while true do
        wait(0)
        renderFontDrawText(Font, 'Hello {ff004d}World!', 500, 500, 0xFFffffff, false);
    end
end
