--This file is part of Game Master Genie.
--Copyright 2011-2014 Chocochaos

--Game Master Genie is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.
--Game Master Genie is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
--You should have received a copy of the GNU General Public License along with Game Master Genie. If not, see <http://www.gnu.org/licenses/>.

GMGenie.Hud = {};

function GMGenie.Hud.onLoad()
    GMGenie_Hud:RegisterEvent("PLAYER_ENTERING_WORLD");
    GMGenie_Hud:RegisterEvent("UI_ERROR_MESSAGE");
    GMGenie_Hud:SetScript("OnEvent", GMGenie.Hud.readNotice);

    GMGenie_Hud_GM:SetAttribute("macrotext1", "/run GMGenie.Hud.toggleGm();");
    GMGenie_Hud_Chat:SetAttribute("macrotext1", "/run GMGenie.Hud.toggleChat();");
    GMGenie_Hud_Visibility:SetAttribute("macrotext1", "/run GMGenie.Hud.toggleVisibility();");
    GMGenie_Hud_Whisper:SetAttribute("macrotext1", "/run GMGenie.Hud.toggleWhisper();");
    GMGenie_Hud_Fly:SetAttribute("macrotext1", "/target " .. UnitName("player") .. " \n/run GMGenie.Hud.toggleFly();");

    if GMGenie_SavedVars.hudClosed then
        GMGenie.Hud.toggle();
    end

    Chronos.schedule(1, GMGenie.Hud.checkStatus);
    GMGenie.Hud.flyStatus(false);
end

function GMGenie.Hud.toggle()
    if GMGenie_Hud:IsVisible() then
        GMGenie_Hud:Hide();
        GMGenie_SavedVars.hudClosed = true;
    else
        GMGenie_Hud:Show();
        GMGenie_SavedVars.hudClosed = false;
    end
end

--------------------------------------------------
------------ HUD status functionality ------------
--------------------------------------------------
function GMGenie.Hud.checkStatus()
    SendChatMessage(".gm", "GUILD");
    SendChatMessage(".gm chat", "GUILD");
    SendChatMessage(".gm visible", "GUILD");
    SendChatMessage(".whispers", "GUILD");
end

function GMGenie.Hud.gmStatus(status)
    GMGenie.Hud.gm = status;
    if status then
        GMGenie_Hud_GM:SetText("|cffffffffModo Gm:|r");
        GMGenie_Hud_GM.Active:SetText("|cff45DC03ON |r");
        GMGenie_Hud_GM.Active:Show();
    else
        GMGenie_Hud_GM:SetText("|cffbfbfffModo Gm:|r");
        GMGenie_Hud_GM.Active:SetText("|cffF82103OFF|r");
        GMGenie_Hud_GM.Active:Show();
    end
end

function GMGenie.Hud.chatStatus(status)
    GMGenie.Hud.chat = status;
    if status then
        GMGenie_Hud_Chat:SetText("|cffffffffLogo Gm:|r");
        GMGenie_Hud_Chat.Active:SetText("|cff45DC03ON |r");
        GMGenie_Hud_Chat.Active:Show();
    else
        GMGenie_Hud_Chat:SetText("|cffbfbfffLogo Gm:|r");
        GMGenie_Hud_Chat.Active:SetText("|cffF82103OFF|r");
        GMGenie_Hud_Chat.Active:Show();
    end
end

function GMGenie.Hud.visibilityStatus(status)
    GMGenie.Hud.visibility = status;
    if status then
        GMGenie_Hud_Visibility:SetText("|cffffffffVisible:|r");
        GMGenie_Hud_Visibility.Active:SetText("|cff45DC03ON |r"); 
    else
        GMGenie_Hud_Visibility:SetText("|cffbfbfffVisible:|r");
        GMGenie_Hud_Visibility.Active:SetText("|cffF82103OFF|r"); 
    end
end

function GMGenie.Hud.whisperStatus(status)
    GMGenie.Hud.whisper = status;
    if status then
        GMGenie_Hud_Whisper:SetText("|cffffffffSusurro:|r");
        GMGenie_Hud_Whisper.Active:SetText("|cff45DC03ON |r"); 
    else
        GMGenie_Hud_Whisper:SetText("|cffbfbfffSusurro:|r");
        GMGenie_Hud_Whisper.Active:SetText("|cffF82103OFF|r"); 
    end
end

function GMGenie.Hud.flyStatus(status)
    GMGenie.Hud.fly = status;
    if status then
        GMGenie_Hud_Fly:SetText("|cffffffffModo vuelo:|r");
        GMGenie_Hud_Fly.Active:SetText("|cff45DC03ON |r"); 
    else
        GMGenie_Hud_Fly:SetText("|cffbfbfffModo vuelo:|r");
        GMGenie_Hud_Fly.Active:SetText("|cffF82103OFF|r"); 
    end
end

function GMGenie.Hud.readNotice(_, event, notice)
    if event == "UI_ERROR_MESSAGE" then
        if notice == "GM mode is ON" then
            GMGenie.Hud.gmStatus(true);
        elseif notice == "GM mode is OFF" then
            GMGenie.Hud.gmStatus(false);
        elseif notice == "GM Chat Badge is ON" then
            GMGenie.Hud.chatStatus(true);
        elseif notice == "GM Chat Badge is OFF" then
            GMGenie.Hud.chatStatus(false);
        elseif notice == "You are now visible." then
            GMGenie.Hud.visibilityStatus(true);
        elseif notice == "You are now invisible." then
            GMGenie.Hud.visibilityStatus(false);
            GMGenie.Hud.toggleWhisper(GMGenie.Hud.whisper);
        end
    elseif event == "PLAYER_ENTERING_WORLD" and GMGenie.Hud.fly == true then
        GMGenie.Hud.toggleFly(GMGenie.Hud.fly);
    end
end

function GMGenie.Hud.toggleGm(status)
    if (not GMGenie.Hud.gm and status == nil) or status == true then
        SendChatMessage(".gm on", "GUILD");
    else
        SendChatMessage(".gm off", "GUILD");
    end
end

function GMGenie.Hud.toggleChat(status)
    if (not GMGenie.Hud.chat and status == nil) or status == true then
        SendChatMessage(".gm chat on", "GUILD");
    else
        SendChatMessage(".gm chat off", "GUILD");
    end
end

function GMGenie.Hud.toggleVisibility(status)
    if (not GMGenie.Hud.visibility and status == nil) or status == true then
        SendChatMessage(".gm visible on", "GUILD");
    else
        SendChatMessage(".gm visible off", "GUILD");
    end
end

function GMGenie.Hud.toggleWhisper(status)
    if (not GMGenie.Hud.whisper and status == nil) or status == true then
        SendChatMessage(".whispers on", "GUILD");
    else
        SendChatMessage(".whispers off", "GUILD");
    end
end

function GMGenie.Hud.toggleFly(status)
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        if (not GMGenie.Hud.fly and status == nil) or status == true then
            SendChatMessage(".gm fly on", "GUILD");
        else
            SendChatMessage(".gm fly off", "GUILD");
        end
    else
        GMGenie.showGMMessage("No es posible realizar auto-target para cambiar el modo de vuelo.");
    end
end

function GMGenie.Hud.setSpeed()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        local speed = GMGenie_Hud_Speed:GetText();
        GMGenie_Hud_Speed:ClearFocus();
        SendChatMessage(".mod speed all " .. speed, "GUILD");
    else
        GMGenie.showGMMessage("Asegurese de tenerse en target usted mismo (autotarget) al momento de cambiar velocidad.");
    end
end
