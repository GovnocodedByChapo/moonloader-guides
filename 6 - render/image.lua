local Image = renderLoadTextureFromFile(getWorkingDirectory() .. '\\myImage.png');

function main()
    while not isSampAvailable() do wait(0) end
    while true do
        wait(0)
        renderDrawTexture(Image, 500, 500, 250, 250, 0, -1);
    end
end
