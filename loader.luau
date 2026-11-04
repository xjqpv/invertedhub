local MESSAGE = "Defective has released, Inverted Hub is discontinued."
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local plr = Players.LocalPlayer
local kicked = pcall(function()
    plr:Kick(MESSAGE)
end)
if not kicked then
    pcall(function()
        TeleportService:Teleport(1818, plr)
    end)
    task.wait(0.3)
    pcall(function()
        TeleportService:Teleport(game.PlaceId, plr)
    end)
    task.wait(2)
end
return
