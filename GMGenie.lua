--This file is part of Game Master Genie.
--Copyright 2011-2014 Chocochaos
 
--Game Master Genie is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.
--Game Master Genie is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
--You should have received a copy of the GNU General Public License along with Game Master Genie. If not, see <http://www.gnu.org/licenses/>.

GMGenie = {};
GMGenie_SavedVars = {};

GMGenie.CateVal6 = 0;
GMGenie.CateVal7 = nil;

function GMGenie.showGMMessage(msg)
 --   DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000[GMGenie]|cffffffff: " .. msg);
end

function GMGenie.pairsByKeys(t, f)
    local a = {}
    local b = {}
    for n in pairs(t) do
        table.insert(a, n);
    end
    table.sort(a, f);
    for _, value in pairs(a) do
        table.insert(b, t[value]);
    end
    return b;
end

function GMGenie.pairsByKeys2(t, f)
    local a = {}
    local b = {}
    for n in pairs(t) do
        table.insert(a, n);
    end
    table.sort(a, f);
    for _, value in pairs(a) do
        table.insert(b, value);
    end
    return b;
end

function GMGenie.onLoad()

 --	GMGenie.ModeExplorer = 0; 
 
    GMGenie.loadSettings();

    GMGenie.Hud.onLoad();

    GMGenie.Macros.onLoad();
    GMGenie.Spawns.onLoad();

    UIDropDownMenu_Initialize(GMGenie_Spy_InfoWindow_DropdownbuttonsTwo, GMGenie.Spy.loadDropdown, "MENU");

    GMGenie.optionsOnLoad();
    GMGenie.Tickets.optionsOnLoad();
    GMGenie.Macros.Whispers.optionsOnLoad();
    GMGenie.Macros.Mail.optionsOnLoad();
    GMGenie.Macros.Tele.optionsOnLoad();
    GMGenie.Macros.Discipline.optionsOnLoad()
    GMGenie.Spawns.optionsOnLoad();

    GMGenie.minimap.reposition();
    GMGenie.Tickets.onLoad();

end

local frame = CreateFrame("FRAME");
frame:RegisterEvent("ADDON_LOADED");

function frame:OnEvent(event, arg1)
    if event == "ADDON_LOADED" and arg1 == "GMGenie" then
        GMGenie.onLoad();
    end
end

frame:SetScript("OnEvent", frame.OnEvent);

GMGenie.minimap = {};

-- add this to your SavedVariables or as a separate SavedVariable to store its position


-- Call this in a mod's initialization to move the minimap button to its saved position (also used in its movement)
-- ** do not call from the mod's OnLoad, VARIABLES_LOADED or later is fine. **
function GMGenie.minimap.reposition()
    GMGenie_Minimap:SetPoint("TOPLEFT", "Minimap", "TOPLEFT", 52 - (80 * cos(GMGenie_SavedVars.minimapPos)), (80 * sin(GMGenie_SavedVars.minimapPos)) - 52)
end

-- Only while the button is dragged this is called every frame
function GMGenie.minimap.draggingFrame_OnUpdate()
    local xpos, ypos = GetCursorPosition()
    local xmin, ymin = Minimap:GetLeft(), Minimap:GetBottom()

    xpos = xmin - xpos / UIParent:GetScale() + 70 -- get coordinates as differences from the center of the minimap
    ypos = ypos / UIParent:GetScale() - ymin - 70

    GMGenie_SavedVars.minimapPos = math.deg(math.atan2(ypos, xpos)) -- save the degrees we are relative to the minimap center
    GMGenie.minimap.reposition() -- move the button
end

function GMGenie.loadWindow(window, title, refresh, refreshScript)
    local name = window:GetName();
    window:RegisterForClicks("LeftButtonUp", "RightButtonUp");
    getglobal(name .. "_Title_Text"):SetText(title);
    if refresh then
        getglobal(name .. '_Refresh'):Show();
        getglobal(name .. '_Title'):SetWidth(window:GetWidth() - 32);
        if refreshScript then
            getglobal(name .. '_Refresh'):SetScript("OnClick", refreshScript);
        end
    else
        getglobal(name .. '_Refresh'):Hide();
        getglobal(name .. '_Title'):SetWidth(window:GetWidth() - 16);
    end

    getglobal(name .. '_Main'):SetWidth(window:GetWidth());
    getglobal(name .. '_Main'):SetHeight(window:GetHeight() - 14);
end

function GMGenie.loadEditBox(window)
    local name = window:GetName();

    getglobal(name .. '_Frame_Text'):SetTextInsets(5, 5, 5, 5);
    getglobal(name .. '_Frame'):SetWidth(window:GetWidth());
    getglobal(name .. '_Frame'):SetHeight(window:GetHeight());
    getglobal(name .. '_Frame_Text'):SetWidth(getglobal(name .. '_Frame'):GetWidth());
    getglobal(name .. '_Frame_Text'):SetHeight(getglobal(name .. '_Frame'):GetHeight());
end

function GMGenie.CreateFrame(self)
local Mision = self or 10907;

local LogTitle,LogTitleEnglish,QuestInfoID,RequiredFactionId1,RequiredFactionId2,RequiredFactionValue1,RequiredFactionValue2,RewardItem1,RewardAmount1,RewardItem2,RewardAmount2,RewardItem3,RewardAmount3,RewardItem4,RewardAmount4,RewardChoiceItemID1,RewardChoiceItemQuantity1,RewardChoiceItemID2,RewardChoiceItemQuantity2,RewardChoiceItemID3,RewardChoiceItemQuantity3,RewardChoiceItemID4,RewardChoiceItemQuantity4,RewardChoiceItemID5,RewardChoiceItemQuantity5,RewardChoiceItemID6,RewardChoiceItemQuantity6,faction,RequiredNpcOrGo1,QuestSortID,RequiredNpcOrGo2,RequiredNpcOrGo3,RequiredNpcOrGo4,RequiredNpcOrGoCount1,RequiredNpcOrGoCount2,RequiredNpcOrGoCount3,RequiredNpcOrGoCount4,RequiredItemId1,RequiredItemId2,RequiredItemId3,RequiredItemId4,RequiredItemId5,RequiredItemId6,RequiredItemCount1,RequiredItemCount2,RequiredItemCount3,RequiredItemCount4,RequiredItemCount5,RequiredItemCount6 = GetQuestInfoDbc2(Mision, 1);
 	local Desc = "Poseo un gran conocimiento sobre alquimia. Sin embargo, mi conocimiento es general, sobre la naturaleza. Si quieres especializarte, tendrás que encontrar a otros que tengan un campo de estudio más especializado.|n|nSi quieres especializarte en transmutación, te recomiendo que busques la ayuda del etéreo llamado Zarevhi. Reside en La Flecha de la Tormenta, en la Tormenta Abisal.|n|nSu conocimiento sobre la transmutación es... en fin, ¡impresionante! Quizás puedas aprender mucho de él, pero ten cuidado, no se puede confiar en los etéreos."
	QuestFrame:Show();
 	QuestFrameProgressPanel:Show();
	QuestFramePortrait:SetTexture("Interface\\QuestFrame\\UI-QuestLog-BookIcon");
	QuestFrameNpcNameText:SetText("Dealles de la misión");
	QuestProgressTitleText:SetText(LogTitle); 
	QuestProgressText:SetText(Desc..Desc);
	QuestFrameGoodbyeButton:Disable();
--	 if(RequiredItemId1 ~= 0 and RequiredItemId2 ~= 0 and RequiredItemId3 ~= 0 and RequiredItemId4 ~= 0 and RequiredItemId5 ~= 0 and RequiredItemId6 ~= 0)then 
		local Max = 0;
		if(RequiredItemId1 ~= 0)then Max = Max +1; end
		if(RequiredItemId2 ~= 0)then Max = Max +1; end
		if(RequiredItemId3 ~= 0)then Max = Max +1; end
		if(RequiredItemId4 ~= 0)then Max = Max +1; end
		if(RequiredItemId5 ~= 0)then Max = Max +1; end
		if(RequiredItemId6 ~= 0)then Max = Max +1; end
		
		
		GMGenie.QuestFrameProgressItems_Update(Max, RequiredItemId1, RequiredItemId2, RequiredItemId3, RequiredItemId4, RequiredItemId5, RequiredItemId6, RequiredItemCount1, RequiredItemCount2, RequiredItemCount3, RequiredItemCount4, RequiredItemCount5, RequiredItemCount6)
--	 end
	
end


function GMGenie.QuestFrameProgressItems_Update(self, num1, num2, num3, num4, num5, num6, c1,c2,c3,c4,c5,c6) 
	local nem1 = num1; local nem2 = num2;
	local nem3 = num3; local nem4 = num4;
	local nem5 = num5; local nem6 = num6;
	local numRequiredItems = self;
	local questItemName = "QuestProgressItem";
	if ( numRequiredItems > 0 or GetQuestMoneyToGet() > 0 ) then
		QuestProgressRequiredItemsText:Show();
		 
			QuestProgressRequiredMoneyText:Hide();
			QuestProgressRequiredMoneyFrame:Hide();

			_G[questItemName..1]:SetPoint("TOPLEFT", "QuestProgressRequiredItemsText", "BOTTOMLEFT", -3, -5);
  
		for i=1, numRequiredItems, 1 do	
			local requiredItem = _G[questItemName..i]; 
			local name, texture, count;
			requiredItem.type = "required";
			if(i == 1 )then 
				name, _, _, _, _, _, _, texture = GetItemInfoDbc2(num1);
				count = c1;
			elseif(i == 2)then 
				name, _, _, _, _, _, _, texture = GetItemInfoDbc2(nem2);
				count = c2;
			elseif(i == 3)then 
				name, _, _, _, _, _, _, texture = GetItemInfoDbc2(nem3);
				count = c3;
			elseif(i == 4)then 
				name, _, _, _, _, _, _, texture = GetItemInfoDbc2(nem4);
				count = c4;
			elseif(i == 5)then 
				name, _, _, _, _, _, _, texture = GetItemInfoDbc2(nem5);
				count = c5;
			elseif(i == 6)then 
				name, _, _, _, _, _, _, texture = GetItemInfoDbc2(nem6);
				count = c6;
			end
			texture = "Interface/Icons/"..texture;
			-- icon = "Interface\\Icons\\"..texture;
-- return name, class, subclass, displayid, Quality, InventoryType, AllowableClass, Icon, Clase, Subclase;
			SetItemButtonCount(requiredItem, count);
		 	SetItemButtonTexture(requiredItem, texture);
			requiredItem:Show();
			_G[questItemName..i.."Name"]:SetText(name);
			
		end
	else
		QuestProgressRequiredMoneyText:Hide();
		QuestProgressRequiredMoneyFrame:Hide();
		QuestProgressRequiredItemsText:Hide();
	end
	for i=numRequiredItems + 1, MAX_REQUIRED_ITEMS, 1 do
		_G[questItemName..i]:Hide();
	end
	QuestProgressScrollFrameScrollBar:SetValue(0);
end











