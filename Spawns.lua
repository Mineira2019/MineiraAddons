--This file is part of Game Master Genie.
--Copyright 2011-2014 Chocochaos

--Game Master Genie is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.
--Game Master Genie is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
--You should have received a copy of the GNU General Public License along with Game Master Genie. If not, see <http://www.gnu.org/licenses/>.

GMGenie.RespuestaRapidaOne = {};

GMGenie.DELAY = 5;  -- Menos aumenta la velocidad de carga inicial pero reduce la velocidad al mirar las misiones.
GMGenie.DELAYINT = 1;
GMGenie.ModeExplorer = 0;
GMGenie.Tp_Slot = 1;  
GMGenie.ColorBas = "|CFF00F6B9";   
GMGenie.Quest_Slot = 1;  
GMGenie.CategoriaChatReader = 0;
GMGenie.CategoriaQuestGlobal = 1;
GMGenie.CategoriaQuestValores = 1;
GMGenie.KeyQuestValores = 1; 
GMGenie.KeySubCaTValore = 1; 
GMGenie.CatQuestGlobalTable = {};
GMGenie.CatQuestGlobalString = {};
GMGenie.FiltroClave = "";
GMGenie.CatGuiaPerplus = 0;
GMGenie.UltmCache = 0;
GMGenie.UltmCache1 = 0;
GMGenie.MaxBot = 0;

GMGenie.CateOkPlus = 0;
GMGenie.QLastCache = 0;
GMGenie.QLastCache1 = 0;

GMGenie.ClickSpeed1 = 10;
GMGenie.ClickSpeed2 = 20;
 
function SubCatProfFilterDropDown_OnLoad(self)
	UIDropDownMenu_Initialize(self, SubCatProfFilterDropDown_Initialize, "MENU");
end

function UpdateClickGenieSpeedB1(self, button) 
-- self:Disable();
-- self:SetAlpha(0.2);
	if ( button == "LeftButton" ) then
		SendChatMessage(".mod speed "..GMGenie.ClickSpeed1); 
	else
		if(GMGenie.ClickSpeed1 >= 50)then GMGenie.ClickSpeed1 = 10; else GMGenie.ClickSpeed1 = GMGenie.ClickSpeed1 +10; end
		self.tooltip = "Velocidad Aumentada x"..GMGenie.ClickSpeed1;
		GMGenie_Hud_XXX:SetText("x"..GMGenie.ClickSpeed1);
	end 
		GameTooltip:Hide();
end
function UpdateClickGenieSpeedB2(self, button) 
	if ( button == "LeftButton" ) then
		SendChatMessage(".mod speed "..GMGenie.ClickSpeed2); 
	else
		if(GMGenie.ClickSpeed2 >= 50)then GMGenie.ClickSpeed2 = 20; else GMGenie.ClickSpeed2 = GMGenie.ClickSpeed2 +10; end
		self.tooltip = "Velocidad Aumentada x"..GMGenie.ClickSpeed2;
		GMGenie_Hud_XXY:SetText("x"..GMGenie.ClickSpeed2);
	end 
		GameTooltip:Hide();
end
function ReAcomodadorFrames()
	if(GMGenie.ModeExplorer == 0)then 
		GMGenie_Hud_XXX:Hide();
		GMGenie_Hud_XX:Hide();
		GMGenie_Hud_XXY:Hide();
		GMGenie_Hud_ZX:Hide(); 
		GMGenie_Hud_Main:SetSize(100, 126);
		GMGenie_Hud:SetSize(100, 126);
	else
		GMGenie_Hud_XXX:Show();
		GMGenie_Hud_XX:Show();
		GMGenie_Hud_XXY:Show();
		GMGenie_Hud_ZX:Show(); 
		GMGenie_Hud_Main:SetSize(100, 213);
		GMGenie_Hud:SetSize(100, 213);
	
	end
end

function SubCatProfFilterDropDown_Initialize(self, level)  
	local GoNameNpc, GoNameNpc2, item; 
	local GoNpc, GoNpc2;  
	local Maximoes = 0;
	local info = UIDropDownMenu_CreateInfo(); 
	
		for key, value in pairs(GMGenie.CategoriaTabla) do  
			if(level == 1)then  
				if(GMGenie.KeySubCaTValore == value[8] and GMGenie.CategoriaQuestValores == value[9])then    
					if(value[2] == true)then   
						info.checked = nil;
						info.isNotRadio = nil;
						info.func =  nil;
						info.hasArrow = true;
						info.notCheckable = true; 
						info.text = value[1];  
						info.value = value[4];  
						UIDropDownMenu_AddButton(info, level); 
					else
						info.checked = nil;
						info.isNotRadio = nil;
						info.hasArrow = false;
						info.notCheckable = true;  
						info.text = value[1]; 
						info.func = function()  
									UIDropDownMenu_Refresh(SubCatProfFilterDropDown, 1, 2);
									GMGenie.KeySubCaTValore = value[3]; GMGenie.CategoriaQuestGlobal = value[3];  
									GMGenie.CategoriaQuestValores = value[4]; 
									Frameron:Show();
									GMGenie.loadWindow(Frameron, "Cadena de "..value[1], false, nil);
									GMGenie.CategoriaChatReader = 1;
									Quest_Slot_Search(value[4], 2);
									local show = 0;
									for k, v in pairs(GMGenie.MisionesTabla) do  
										if(v[4] == GMGenie.CategoriaQuestValores and v[6] == GMGenie.CategoriaQuestGlobal)then   
											if(_G["Quest_Boton"..k])then 
									--QuestCreateBotons(k,v[1],v[2],v[3],v[4],v[5],v[6],v[7],v[8],v[9],v[10],v[11],v[12]);
									
												_G["Quest_Boton"..k]:Show();
												show = show+1; 
											else
												--QuestCreateBotons(k,v[1],v[2],v[3],v[4],v[5],v[6],v[7],v[8],v[9],v[10],v[11],v[12]);
												_G["Quest_Boton"..k]:Show();
												show = show+1; 
											end 
										else
											if(_G["Quest_Boton"..k])then 
												_G["Quest_Boton"..k]:Hide();
											end
										end 
										OrdenQuestBoton(k);
									end  
									if(show < 17)then 
										GuildSilerB:SetMinMaxValues(1, 1)
									else
										GuildSilerB:SetMinMaxValues(1, show*11+40)
									end 	
										GMGenie.CatGuiaPerplus = 0;
										GMGenie.UltmCache = 0;
										GMGenie.UltmCache1 = 0;
										GuildSilerB:SetValue(1);
									--	HideDropDownMenu(0);    
									end
						UIDropDownMenu_AddButton(info, level); 
					end 
						GMGenie.MaxBot = value[4]; 
				
				 end
			else 
				 if(GMGenie.KeySubCaTValore == value[10] and GMGenie.CategoriaQuestValores == value[11])then    
					if(UIDROPDOWNMENU_MENU_VALUE == value[9])then 
						
									info.hasArrow = false;
									info.isNotRadio = true;
									info.notCheckable = true;	
										
									info.text = value[1];
									info.func = function()
									GMGenie.KeySubCaTValore = value[3]; GMGenie.CategoriaQuestGlobal = value[3];  
									GMGenie.CategoriaQuestValores = value[4]; 
									Frameron:Show();
									GMGenie.loadWindow(Frameron, "Misiones de "..value[1], false, nil);
									GMGenie.CategoriaChatReader = 1;
									Quest_Slot_Search(value[4], 2);
									local show = 0;
									for k, v in pairs(GMGenie.MisionesTabla) do  
										if(v[4] == GMGenie.CategoriaQuestValores and v[6] == GMGenie.CategoriaQuestGlobal)then  

											if(_G["Quest_Boton"..k])then 
									--QuestCreateBotons(k,v[1],v[2],v[3],v[4],v[5],v[6],v[7],v[8],v[9],v[10],v[11],v[12]);
									
												_G["Quest_Boton"..k]:Show();
												show = show+1; 
											else
												--QuestCreateBotons(k,v[1],v[2],v[3],v[4],v[5],v[6],v[7],v[8],v[9],v[10],v[11],v[12]);
												_G["Quest_Boton"..k]:Show();
												show = show+1; 
											end 
										else
											if(_G["Quest_Boton"..k])then 
												_G["Quest_Boton"..k]:Hide();
											end
										end 
										OrdenQuestBoton(k);
									end  
									if(show < 17)then 
										GuildSilerB:SetMinMaxValues(1, 1)
									else
										GuildSilerB:SetMinMaxValues(1, show*11+40)
									end 	
										GMGenie.CatGuiaPerplus = 0;
										GMGenie.UltmCache = 0;
										GMGenie.UltmCache1 = 0;
										GuildSilerB:SetValue(1);
												end 
									UIDropDownMenu_AddButton(info, level); 
					end 
				end
		end
				
	end	
end

function QuestGoFilterDropDown_OnLoad(self)
	UIDropDownMenu_Initialize(self, QuestGoFilterDropDown_Initialize, "MENU");
end

function QuestGoFilterDropDown_Initialize(self, level)  
	local gt = GMGenie.KeyQuestValores;
	local button = _G["Quest_Boton"..gt];
	if(button)then 
	local nota = button:GetID(); 
	local GoNameNpc, GoNameNpc2, item; 
	local GoNpc, GoNpc2; 
	local GuidRefInt, GuidRefFin; 
	local NameInt = "";
	local NameFin = "";
	local name = ""
	local GoInt = ""
	local GoEnd = ""
	local Quality;
	local info = UIDropDownMenu_CreateInfo();
 	info.keepShownOnClick = true; 
	 
		for key, value in pairs(GMGenie.QuestOpciones) do  
				for k, v in pairs(GMGenie.MisionesTabla) do 
					if(k == nota)then 
						GuidRefInt, NameInt = GetNpcTempDbc(v[8]);
						GuidRefFin, NameFin = GetNpcTempDbc(v[9]);
						
						item = v[7]; GoNameNpc = v[8]; GoNameNpc2 = v[9]; GoNpc = v[10]; GoNpc2 = v[11];
						
						GoInt = GoCreatureCoordInfo(v[8])
						GoEnd = GoCreatureCoordInfo(v[9])
					--	GuidRefInt = GoCreatureCoordInfo(v[8])
					--	GuidRefFin = GoCreatureCoordInfo(v[9])
						
						break;
					end 
				end 
				if(item)then
					name, _, _, _, Quality, _, _, _, _, _ = GetItemInfoDbc2(item)
				--	name = "["..name.."]";
					name = SetTextColorCalidad(name, Quality);
				end
				info.checked = nil;
				info.isNotRadio = nil;
				info.func = function()   
								if(key == 1)then 
								
									if(NameInt == "No existe")then 
										if(GoNpc ~= nil)then 
											GoNpc = string.gsub(GoNpc, ":", " ");
											SendChatMessage(".go xyz "..GoNpc);
										end
									else
											SendChatMessage(GoInt)  
									end
								 
								elseif(key == 2)then 
									
									if(NameFin == "No existe")then 
										if(GoNpc2 ~= nil)then
											GoNpc2 = string.gsub(GoNpc2, ":", " ");
											SendChatMessage(".go xyz "..GoNpc2);
										end
									else
											SendChatMessage(GoEnd)  
									end 
									
								elseif(key == 3)then
									if(item)then
										local count = GetItemCount(item);
										if(count == 0)then 
											SendChatMessage(".additem "..item) 
										else  
											print("Ya existe el objeto "..name.." en el inventario")
										end
									end 
								end
							end
				info.hasArrow = false;
				info.notCheckable = true; 
				if(key == 1)then 
					if(NameInt == "No existe")then 
						if(GoNameNpc ~= "nil" and GoNameNpc ~= nil)then
							info.text = value[1]..GoNameNpc; 
							if(GoNpc ~= nil)then 
								UIDropDownMenu_AddButton(info, level); 
							end
						end
					else 
						info.text = value[1]..NameInt; 
							UIDropDownMenu_AddButton(info, level); 
					end  
				elseif(key == 2)then
					if(NameFin == "No existe")then 
						if(GoNameNpc2 ~= "nil" and GoNameNpc2 ~= nil)then
							info.text = value[1]..GoNameNpc2; 
							if(GoNpc2 ~= nil)then 
								UIDropDownMenu_AddButton(info, level); 
							end  
						end
					else 
						if(GoNameNpc2 ~= nil)then 
							info.text = value[1]..NameFin; 
							UIDropDownMenu_AddButton(info, level); 
						end
					end  
				elseif(key == 3)then
					if(item)then  
						if(item ~= "-1")then  
							info.text = "Crear "..name;
							UIDropDownMenu_AddButton(info, level);  
						end
					end
				end
				
	end	

	end
end

function QuestCategoriasDropDown_OnLoad(self)
	UIDropDownMenu_Initialize(self, QuestCategoriasDropDown_Initialize, "MENU");
end

function QuestCategoriasDropDown_Initialize(self, level) 
	local info = UIDropDownMenu_CreateInfo();
 	info.keepShownOnClick = false;   
	
		for key, value in pairs(GMGenie.QuestCategorias) do 
			info.checked = nil;
			info.isNotRadio = true;
			info.notCheckable = true;	 
			info.text = value[1];   
			info.func = function() 
							GMGenie.CategoriaQuestGlobal = value[2]; 
							GMGenie_Spy_Misiones_Main.Frames.CatText:Show();
							GMGenie_Spy_Misiones_Main.Frames.CatText:SetText("Misiones de "..value[1]); 
							local show = 0; 
							for k, v in pairs(GMGenie.CategoriaTabla) do  
								if(v[3] == GMGenie.CategoriaQuestGlobal)then 
									_G["Cat_Boton"..k]:Show(); 
									show = show+1;
									else
									_G["Cat_Boton"..k]:Hide();
								end 
						 		OrdenCatBoton(k);
							end    
							GuildSilerA:SetMinMaxValues(1, show*30+20) 
							GMGenie.CateOkPlus = 0;
							GMGenie.QLastCache = 0;
							GMGenie.QLastCache1 = 0;
							GuildSilerA:SetValue(1);
						end  
			info.hasArrow = false;
			UIDropDownMenu_AddButton(info, level); 
		end 
end

GMGenie.Misiones = {};

function QuestSlotFilterDropDown_OnLoad(self)
	UIDropDownMenu_Initialize(self, QuestSlotFilterDropDown_Initialize, "MENU");
end

function QuestLoadTotalBotonsa()   
  if(GMGenie.DELAYINT >= #GMGenie.MisionesTabla) then  
	GMGenie_Spy_Misiones_Main_Title_Text:SetText("Cadena de Misiones");
	return 
  end 
	GMGenie_Spy_Misiones_Main_Title_Text:SetText("Cargando Misiones "..GMGenie.DELAYINT.."/"..#GMGenie.MisionesTabla);
	QuestLoadTotalBotonsb() 
end

function QuestLoadTotalBotonsb()  
	if(GMGenie.DELAYINT >= #GMGenie.MisionesTabla) then return end
	
		if ( not GMGenie_Spy_Misiones_Main:IsShown() ) then return end
--print(GMGenie.DELAYINT);
	
	for key = GMGenie.DELAYINT, GMGenie.DELAYINT+2 do  
		
	local valo1,valo2,valo3,valo4,valo5,valo6,valo7,valo8,valo9,valo10,valo11,valo12 = unpack (GMGenie.MisionesTabla[key]);
	if(_G["Quest_Boton"..key])then 
--		GMGenie.DELAYINT = key;
--	else 
	local buteon = _G["Quest_Boton"..key] or CreateFrame("CheckButton", "Quest_Boton"..key, FrameDeMisiones, "GMGenie_Quest_Statusbutton") 
		buteon:SetSize(233, 15);     
	--	buteon:SetText(QuestSubLocation(valo5,valo4,nil,valo6));  
		buteon:SetText(QuestSubLocationB(valo5,valo4,nil,valo6,num,valo1,valo2,valo3,valo4,valo5,valo6,valo7,valo8,valo9,valo10,valo11,valo12));  
		
		buteon:SetID(key);   	
		
		buteon:SetScript("OnEnter", function(self)   
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			local LogTitle = "";
			local NameInt = "";
			local NameFin = "";
			local Diaria;
			local QuestInfoID;
			local Item1;
			local ItemC1;
			local Item2;
			local ItemC2;
			local Item3;
			local ItemC3;
			local Item4;
			local ItemC4;
			LogTitle,_,QuestInfoID,_,_,_,_,Item1,ItemC1,Item2,ItemC2,Item3,ItemC3,Item4,ItemC4,_,_,_,_,_,_,_,_,_,_,_,_,faction,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,Diaria = GetQuestInfoDbc2(valo2);
			_, NameInt = GetNpcTempDbc(valo8);
			_, NameFin = GetNpcTempDbc(valo9);
			if(NameInt == "No existe")then NameInt = valo8; end
			if(NameFin == "No existe" )then NameFin = valo9; end
			local Empieza = "";
			local Termina = "";
			local objeto = "";
			local Lado = "";
			local Nota = "";
			local NormODiar = "";
			local NormODiar2 = "";
			local Recomp = "Objeto Necesario";
			local OBJ_J = valo7;
			
			if(Diaria == 0)then 
				NormODiar = "|TInterface/GossipFrame/AvailableQuestIcon:14:14|t";
				NormODiar2 = "|TInterface/GossipFrame/ActiveQuestIcon:14:14|t";
			else 
				NormODiar = "|TInterface/GossipFrame/DailyQuestIcon:14:14|t";
				NormODiar2 = "|TInterface/GossipFrame/DailyActiveQuestIcon:14:14|t"; 
			end
			if(valo12 ~= nil)then  
				Nota = MineraUpdateText(valo12) 
			end
			if(valo8 ~= nil and valo8 ~= "nil")then  
				Empieza = "  |n"..NormODiar.." |cFFFFFFFFEmpieza:|r |cFFFFC900"..NameInt.."|r";
			end
			if(valo9 ~= nil and valo9 ~= "nil")then 
				Termina = "  |n"..NormODiar2.." |cFFFFFFFFTermina:|r |cFFFFC900"..NameFin.."|r";
			end
			if(valo7 ~= nil)then 
				if(OBJ_J == "-1")then 
					OBJ_J = Item1;
					Recomp = "Recompensa";
				end	
			local name, class, subclass, displayid, Quality, InventoryType, AllowableClass, Icon, Clase, Subclase;
			name, class, subclass, displayid, Quality, InventoryType, AllowableClass, Icon, Clase, Subclase = GetItemInfoDbc2(OBJ_J)
			name = "["..name.."]";
			name = SetTextColorCalidad(name, Quality);

				objeto = "|n|n"..Recomp..":|n|n|TInterface/Icons/"..Icon..":12:12|t "..name.."|n|n  |cFFFFFFFF#Objeto: "..OBJ_J.."|r";
				
			end
			if(faction == "Alianza")then 
				Lado = "|n|cFFFFFFFFLado: |r|TInterface/FriendsFrame/PlusManz-Alliance:14:14|t"..faction; 
			elseif(faction == "Horda")then
				Lado = "|n|cFFFFFFFFLado: |r|TInterface/FriendsFrame/PlusManz-Horde:14:14|t"..faction; 
			elseif(faction == "Neutro")then
				Lado = "|n|cFFFFFFFFLado: Ambos|r";
			else
				Lado = " "..faction; 
			end
			GameTooltip:SetText(LogTitle.."|n"..Lado.."|n"..Empieza..""..Termina..""..objeto..""..Nota.."|n|n|cFFFF0000 #Misión: "..valo2.."|r");
			GameTooltip:Show();
			buteon.Hilig:Show();   
		end);
		buteon:SetScript("OnLeave", function(self)   
			GameTooltip:Hide();  
			buteon.Hilig:Hide();  
		end);
		buteon:SetScript("OnClick", function(self)    
			GMGenie.KeyQuestValores = self:GetID(); 
			ToggleDropDownMenu(1, nil, QuestGoFilterDropDown, self, 0, 0);
		end);
		GMGenie.DELAYINT = key;
		--_G["Quest_Boton"..key]:Hide();
		end
	end
	
	
end
function GMGenie.Misiones.toggle()
    local frame = GMGenie_Spy_Misiones_Main;
    if frame:IsVisible() then
        frame:Hide();
    else
        frame:Show();
    end
end

GMGenie.Teleport = {};
GMGenie.TeleportA = {
 {0,"Castillo De Colmillo Oscuro",nil,".te ShadowFangKeep",					1,0,1,2,1,3},
 {0,"Cavernas de Brazanegra",nil,".te BlackfathomDeeps",			 	 	2,0,1,2,1,3},
 {0,"Cuevas de los Lamentos",nil,".te WailingCaverns",					 	3,0,1,2,1,3},
 {0,"Cumbre de roca negra inferior",nil,".te BlackrockSpire",			 	4,0,1,2,1,3},
 {0,"Camaras escarlata",nil,".te ScarletHalls",					 		 	5,0,1,2,1,3},
 {0,"El Templo de Atal'Hakkar",nil,".te SunkenTemple",					 	6,0,1,2,1,3},
 {0,"Gnomeregan",nil,".te Gnomeregan",									 	7,0,1,2,1,3},
 {0,"Horado Rajacieno",nil,".te RazorfenDowns",					 			8,0,1,2,1,3},
 {0,"La Masacre",nil,".te DireMaul",								 	 	9,0,1,2,1,3},
 {0,"Las Mazmorras",nil,".te TheStockade",									10,0,1,2,1,3},
 {0,"Maraudon",nil,".te Maraudon",											11,0,1,2,1,3},
 {0,"Minas de la muerte",nil,".te Deadmines",								12,0,1,2,1,3},
 {0,"Monasterio Escarlata",nil,".te ScarletMonastery",						13,0,1,2,1,3},
 {0,"Profundidades de roca negra",nil,".te BlackrockDepths",				14,0,1,2,1,3},
 {0,"Scholomance",nil,".te Scholomance",									15,0,1,2,1,3},
 {0,"Sima Ígnea",nil,".te RagefireChasm",									16,0,1,2,1,3},
 {0,"Stratholme",nil,".te Stratholme",										17,0,1,2,1,3},
 {0,"Uldaman",nil,".te Uldaman",											18,0,1,2,1,3},
 {0,"Zahúrda Rajacieno",nil,".te RazorfenKraul",							19,0,1,2,1,3},
 {0,"Zul'Farrak",nil,".te ZulFarrak",										20,0,1,2,1,3},
 {0,"Antiguas Laderas de Trabalomas",nil,".te OldHillsbradFoothills",		1,0,2,2,1,3},
 {0,"Bancal del Magister",nil,".te MagistersTerrace",				 		2,0,2,2,1,3},
 {0,"Criptas Auchenai",nil,".te AuchenaiCrypts",							3,0,2,2,1,3},
 {0,"El Arcatraz",nil,".te TheArcatraz",									4,0,2,2,1,3},
 {0,"El Horno de Sangre",nil,".te TheBloodFurnace",							5,0,2,2,1,3},
 {0,"El Invernáculo",nil,".te TheBotanica",							 	 	6,0,2,2,1,3},
 {0,"El Mechanar",nil,".te TheMechanar",								 	7,0,2,2,1,3},
 {0,"La Ciénaga Negra",nil,".te TheBlackMorass",							8,0,2,2,1,3},
 {0,"La Cámara de Vapor",nil,".te TheSteamvault",							9,0,2,2,1,3},
 {0,"La Sotiénaga",nil,".te TheUnderbog",									10,0,2,2,1,3},
 {0,"Laberinto de Las Sombras",nil,".te ShadowLabyrinth",					11,0,2,2,1,3},
 {0,"Las Salas Arrasadas",nil,".te TheShatteredHalls",						12,0,2,2,1,3},
 {0,"Murallas del Fuego Infernal",nil,".te HellfireCitadel",				13,0,2,2,1,3},
 {0,"Recinto de los Esclavos",nil,".te TheSlavePens",						14,0,2,2,1,3},
 {0,"Salas Sethekk",nil,".te SethekkHalls",									15,0,2,2,1,3},
 {0,"Tumbas de Maná",nil,".te ManaTombs",									16,0,2,2,1,3},
 {0,"Ann'Kahet: El Antiguo Reino",nil,".te AzjolNerub",						1,0,3,2,1,3},
 {0,"Azjol-Nerub",nil,".te AzjolNerub",										2,0,3,2,1,3},
 {0,"Cámaras de Piedra",nil,".te HallsofStone",								3,0,3,2,1,3},
 {0,"Cámaras de Reflexión",nil,".te HallsofReflection",						4,0,3,2,1,3},
 {0,"Cámaras de Relámpagos",nil,".te HallsofLightning",						5,0,3,2,1,3},
 {0,"El Bastión Violeta",nil,".te VioletHold",								6,0,3,2,1,3},
 {0,"El Nexo",nil,".te TheNexus",											7,0,3,2,1,3},
 {0,"El Oculus",nil,".te TheOculus",										8,0,3,2,1,3},
 {0,"Fortaleza de Drak'Tharon",nil,".te DrakTharonKeep",					9,0,3,2,1,3},
 {0,"Fortaleza de Utgarde",nil,".te UtgardeKeep",							10,0,3,2,1,3},
 {0,"Foso de Saron",nil,".te PitofSaron",									11,0,3,2,1,3},
 {0,"Gundrak",nil,".te Gundrak",											12,0,3,2,1,3},
 {0,"La Forja de Almas",nil,".te TheForgeofSouls",							13,0,3,2,1,3},
 {0,"La Matanza de Stratholme",nil,".te TheCullingOfStratholme",			14,0,3,2,1,3},
 {0,"Pináculo de Utgarde",nil,".te UtgardePinnacle",						15,0,3,2,1,3},
 {0,"Prueba del Campeón",nil,".te TrialOfTheChampion",						16,0,3,2,1,3},
 {0,"Núcleo de Magma",nil,".te MoltenCore",									1,1,1,3,1,4},
 {0,"Guarida de Alanegra",nil,".te BlackwingLair",							2,1,1,3,1,4},
 {0,"Ruinas de Ahn'Qiraj",nil,".te AQ20",									3,1,1,3,1,4},
 {0,"Templo de Ahn'Qiraj",nil,".te AQ40",									4,1,1,3,1,4},
 {0,"Zul'Gurub",nil,".te ZulGurub",											5,1,1,3,1,4},
 {0,"Karazhan",nil,".te Karazhan",											1,1,2,3,1,4},
 {0,"Guarida de Gruul",nil,".te GruulsLair",								2,1,2,3,1,4},
 {0,"Guarida de Magtheridon",nil,".te MagtheridonsLair",					3,1,2,3,1,4},
 {0,"Caverna Santuario Serpiente",nil,".te SerpentshrineCavern",			4,1,2,3,1,4},
 {0,"El Ojo",nil,".te TheEye",												5,1,2,3,1,4},
 {0,"La Batalla del Monte Hyjal",nil,".te HyjalSummit",						6,1,2,3,1,4},
 {0,"Templo Oscuro",nil,".te BlackTemple",									7,1,2,3,1,4},
 {0,"Meseta de la Fuente del Sol",nil,".te SunwellPlateau",					8,1,2,3,1,4},
 {0,"La Cámara de Archavon",nil,".te VaultOfArchavon",						1,1,3,3,1,4},
 {0,"Naxxramas",nil,".te Naxxramas",										2,1,3,3,1,4},
 {0,"El Sagrario Obsidiana",nil,".go xyz 3548.303711 281.420837 -115.965057 571",								3,1,3,3,1,4},
 {0,"El Ojo de la Eternidad",nil,".te TheNexus",								4,1,3,3,1,4},
 {0,"Ulduar",nil,".te Ulduar",												5,1,3,3,1,4},
 {0,"Prueba del Cruzado",nil,".te TrialOfTheChampion",						6,1,3,3,1,4},
 {0,"Guarida de Onyxia",nil,".te OnyxiasLair",							 	7,1,3,3,1,4},
 {0,"Ciudadela de la Corona de Hielo",nil,".te icecrowncitadel",			8,1,3,3,1,4},
 {0,"El Sagrario Rubí",nil,".go xyz 3548.303711 281.420837 -115.965057 571",							 		9,1,3,3,1,4}, 
};
GMGenie.TeleportB = { 
{"Dalaran",".te 1398",													1,1,0,0},
{"Shattrath",".te 859",													1,2,0,0},
{"Ventormenta",".te 954",												1,3,0,0},
{"Darnassus",".te 252",													1,4,0,0},
{"Forjaz",".te 507",													1,5,0,0},
{"El Exodar",".te 1055",												1,6,0,0},
{"Orgrimmar",".te 703",													1,7,0,0},
{"Cima del Trueno",".te 1212",											1,8,0,0},
{"Entrañas",".te 1263",													1,9,0,0},
{"Lunargenta",".te 869",												1,10,0,0},
{"Isla GM",".te 424",													2,1,0,0}, 
{"Zona de Pruebas",".te 817",											2,2,0,0},
{"Sala de interrogación",".go xyz 16227 16403 -63 1",					2,3,0,0}, 
{"El Crater de Ashzara",".te 67",										2,4,0,0}, 
{"Clásicas",nil,														3,1,0,0}, 
{"The Burning Crusade",nil,												3,2,0,0},
{"Wrath of The Link King",nil,											3,3,0,0}, 
{"Clásicas",nil,														4,1,0,0}, 
{"The Burning Crusade",nil,												4,2,0,0},
{"Wrath of The Link King",nil,											4,3,0,0},  
};

function QuestCreateBotons(num,valo1,valo2,valo3,valo4,valo5,valo6,valo7,valo8,valo9,valo10,valo11,valo12) 
	local key = num;  

	local buteon = _G["Quest_Boton"..key] or CreateFrame("CheckButton", "Quest_Boton"..key, FrameDeMisiones, "GMGenie_Quest_Statusbutton") 
		buteon:SetSize(233, 15);     
		buteon:SetText(QuestSubLocationB(valo5,valo4,nil,valo6,num,valo1,valo2,valo3,valo4,valo5,valo6,valo7,valo8,valo9,valo10,valo11,valo12));  
		buteon:SetID(key);   	
		
		buteon:SetScript("OnEnter", function(self)   
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			local LogTitle = ""; local NameInt = "";
			local NameFin = "";
			local Diaria; local QuestInfoID;
			local Item1; local ItemC1;
			local Item2;
			local ItemC2;
			local Item3;
			local ItemC3;
			local Item4;
			local ItemC4;
			LogTitle,_,QuestInfoID,_,_,_,_,Item1,ItemC1,Item2,ItemC2,Item3,ItemC3,Item4,ItemC4,_,_,_,_,_,_,_,_,_,_,_,_,faction,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,Diaria = GetQuestInfoDbc2(valo2);
			_, NameInt = GetNpcTempDbc(valo8);
			_, NameFin = GetNpcTempDbc(valo9);
			if(NameInt == "No existe")then NameInt = valo8; end
			if(NameFin == "No existe" )then NameFin = valo9; end
			local Empieza = "";
			local Termina = "";
			local objeto = "";
			local Lado = "";
			local Nota = "";
			local NormODiar = "";
			local NormODiar2 = "";
			local Recomp = "Objeto Necesario";
			local OBJ_J = valo7;
			
			if(Diaria == 0)then 
				NormODiar = "|TInterface/GossipFrame/AvailableQuestIcon:14:14|t";
				NormODiar2 = "|TInterface/GossipFrame/ActiveQuestIcon:14:14|t";
			else 
				NormODiar = "|TInterface/GossipFrame/DailyQuestIcon:14:14|t";
				NormODiar2 = "|TInterface/GossipFrame/DailyActiveQuestIcon:14:14|t"; 
			end
			if(valo12 ~= nil)then  
				Nota = MineraUpdateText(valo12) 
			end
			if(valo8 ~= nil and valo8 ~= "nil")then  
				Empieza = "  |n"..NormODiar.." |cFFFFFFFFEmpieza:|r |cFFFFC900"..NameInt.."|r";
			end
			if(valo9 ~= nil and valo9 ~= "nil")then 
				Termina = "  |n"..NormODiar2.." |cFFFFFFFFTermina:|r |cFFFFC900"..NameFin.."|r";
			end
			if(valo7 ~= nil)then 
				if(OBJ_J == "-1")then 
					OBJ_J = Item1;
					Recomp = "Recompensa";
				end	
			local name, class, subclass, displayid, Quality, InventoryType, AllowableClass, Icon, Clase, Subclase;
			name, class, subclass, displayid, Quality, InventoryType, AllowableClass, Icon, Clase, Subclase = GetItemInfoDbc2(OBJ_J)
			name = "["..name.."]";
			name = SetTextColorCalidad(name, Quality);

				objeto = "|n|n"..Recomp..":|n|n|TInterface/Icons/"..Icon..":12:12|t "..name.."|n|n  |cFFFFFFFF#Objeto: "..OBJ_J.."|r";
				
			end
			if(faction == "Alianza")then 
				Lado = "|n|cFFFFFFFFLado: |r|TInterface/FriendsFrame/PlusManz-Alliance:14:14|t"..faction; 
			elseif(faction == "Horda")then
				Lado = "|n|cFFFFFFFFLado: |r|TInterface/FriendsFrame/PlusManz-Horde:14:14|t"..faction; 
			elseif(faction == "Neutro")then
				Lado = "|n|cFFFFFFFFLado: Ambos|r";
			else
				Lado = " "..faction; 
			end
			GameTooltip:SetText(LogTitle.."|n"..Lado.."|n"..Empieza..""..Termina..""..objeto..""..Nota.."|n|n|cFFFF0000 #Misión: "..valo2.."|r");
			GameTooltip:Show();
			buteon.Hilig:Show();   
		end);
		buteon:SetScript("OnLeave", function(self)   
			GameTooltip:Hide();  
			buteon.Hilig:Hide();  
		end);
		buteon:SetScript("OnClick", function(self)    
			GMGenie.KeyQuestValores = self:GetID(); 
			ToggleDropDownMenu(1, nil, QuestGoFilterDropDown, self, 0, 0);
		end); 
 
end
 
function QuestLoadTotalBotons()  
ReAcomodadorFrames();
local frame = GMGenie_Spy_Misiones_Main.Frames;
local bgtext = Frameron:CreateTexture(nil, "BACKGROUND") 
bgtext:SetPoint("TOPLEFT", Frameron, 1, -1) 
bgtext:SetSize(293, 264);   
bgtext:SetTexture("Interface\\TALENTFRAME\\DeathKnightFrost-TopLeft.blp");
bgtext:SetAlpha(0.6);

local scrollframe = Frameron.FrameScroll 
frame.scrollframe = scrollframe; 
local scrollbar = CreateFrame("Slider", "GuildSilerB", scrollframe, "UIPanelScrollBarTemplate") 
scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 10, -15) 
scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 10, 12)   
scrollbar:SetMinMaxValues(1, 150); 
scrollbar:SetValueStep(1); 
scrollbar.scrollStep = 1; 
scrollbar:SetValue(0); 
scrollbar:SetWidth(16);  
scrollbar:SetScript("OnValueChanged", 
function (self, value) 
self:GetParent():SetVerticalScroll(value)     
end) 

local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND") 
scrollbg:SetAllPoints(scrollbar); 
scrollbg:SetTexture(0, 0, 0, 0.7); 
frame.scrollbar = scrollbar;  
local content = FrameDeMisiones -- CreateFrame("Frame", "FrameDeMisiones", scrollframe) 
local total = 1;
local faction;
		content:SetPoint("TOPLEFT",0,0); 
		content:SetSize(128, 50);  
		scrollframe:SetScrollChild(content); 
	 
	frame.content = content;  
	scrollbar:SetMinMaxValues(1, total)  
end

function ScrollFrameTemplate_Categ(self, value, scrollBar, minRar) 
	local minRa = minRar or 88;  
	if ( value >= 0 ) then
		scrollBar:SetValue(scrollBar:GetValue() + minRa);
	else
		scrollBar:SetValue(scrollBar:GetValue() - minRa);
	end
end

function QuestLoadTotalCateg()  
local frame = GMGenie_Spy_Misiones_Main.Frames;   
GMGenie_Spy_Misiones_Main.Mine:SetBackdrop( { 
  bgFile = "", 
  edgeFile = "Interface/Tooltips/UI-Tooltip-Border", tile = true, tileSize = 1, edgeSize = 12, 
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
});

local bgtext = frame:CreateTexture(nil, "BACKGROUND") 
bgtext:SetPoint("TOPLEFT", frame, 1, -1) 
bgtext:SetSize(208, 246);   
bgtext:SetTexture("Interface\\TALENTFRAME\\DeathKnightUnholy-TopLeft.blp");
bgtext:SetAlpha(0.5);
bgtext:SetDesaturated(true);

local scrollframe = GMGenie_Spy_Misiones_Main.Frames.FrameScrollCatego;
 
local editBox = CreateFrame("EditBox", "GmGenieSearchCat", scrollframe, "SearchBoxMineTemplate");
editBox:SetSize(125, 20); editBox:SetFontObject(GameFontHighlightSmall)  
editBox:SetPoint("TOPRIGHT",16,46); editBox:SetAutoFocus(false); 

editBox:SetScript("OnTextChanged", function(self)
	local text = self:GetText();  
 	GMGenie.FiltroClave = text; 
	if(text ~= "")then
		GMGenie_Spy_Misiones_Main.Frames.CatText:SetText("Buscar \""..text.."\""); 
	end
		GenieMineSearchGo(text);
		GuildSilerA:SetValue(1); 
end); 

frame.scrollframe = scrollframe; 
local scrollbar = CreateFrame("Slider","GuildSilerA", scrollframe, "UIPanelScrollBarTemplate");
 
scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 0, -5) 
scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 0, 16)   
scrollbar:SetMinMaxValues(1, 150); 
scrollbar:SetValueStep(1); 
scrollbar.scrollStep = 1; 
scrollbar:SetValue(0); 
scrollbar:SetWidth(16);  
scrollbar:SetScript("OnValueChanged", 
function (self, value) 
self:GetParent():SetVerticalScroll(value)     
end) 

local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND") 
scrollbg:SetAllPoints(scrollbar); 
scrollbg:SetTexture(0, 0, 0, 0.7);
frame.scrollbar = scrollbar;   
local content = CreateFrame("Frame", nil, scrollframe);
local total = 0;
		content:SetPoint("TOPLEFT",0,0); 
		content:SetSize(128, 50);     
		scrollframe:SetScrollChild(content); 
		
	for key, value in pairs(GMGenie.CategoriaTabla) do 
	local buteon = _G["Cat_Boton"..key] or CreateFrame("CheckButton", "Cat_Boton"..key, content, "GMGenie_Hud_Statusbutton") 
		buteon:SetSize(228, 20); 
		local icon;
		local maxo = value[4];
		local licon = value[12];
		if(licon ~= nil)then 
		 icon = " |TInterface/Icons/"..licon..":20:20|t "
		end
		total = total +maxo;
		
		buteon:SetScript("OnClick", function(self)  
		
				if(value[2] ~= nil and value[2] ~= true)then 
					bgtext:SetTexture("Interface\\TALENTFRAME\\"..value[2].."-TopLeft.blp"); 
					bgtext:SetDesaturated(true);
					if(value[2] == "MageFrost")then 
					bgtext:SetAlpha(0.4);
					elseif(value[2] == "ShamanRestoration")then 
					bgtext:SetAlpha(0.4);
					elseif(value[2] == "WarlockCurses")then 
					bgtext:SetAlpha(0.4);
					elseif(value[2] == "DruidBalance")then 
					bgtext:SetAlpha(0.4);
					else
					bgtext:SetAlpha(0.5);
					end
				else
					bgtext:SetTexture("Interface\\TALENTFRAME\\DeathKnightUnholy-TopLeft.blp"); 
					bgtext:SetDesaturated(true);
					bgtext:SetAlpha(0.5);
				end
		
				GMGenie.KeySubCaTValore = value[3];  
				GMGenie.CategoriaQuestValores = value[4]; 
				
				if(GMGenie.FiltroClave ~= "")then     
					GMGenie.CategoriaQuestGlobal = value[3]; 
				end
				if(value[5] ~= true)then 
					Frameron:Show();
					GMGenie.loadWindow(Frameron, "Misiones de "..value[1], false, nil);
					GMGenie.CategoriaChatReader = 1;
					if(value[6] == nil and value[7] == nil)then  
						Quest_Slot_Search(value[4], 2);
					else 
						Quest_Slot_Search(value[7], 2, value[6]);
					end
					local show = 0; 
					 
					GMGenie.CateVal6 = 1;
					for k, v in pairs(GMGenie.MisionesTabla) do 
						if(value[6] == nil and value[7] == nil)then   
							if(v[4] == GMGenie.CategoriaQuestValores and v[6] == GMGenie.CategoriaQuestGlobal)then   
								
								if(_G["Quest_Boton"..k])then 
									_G["Quest_Boton"..k]:Show();
									show = show+1; 
								end
							else
								if(_G["Quest_Boton"..k])then 
									_G["Quest_Boton"..k]:Hide();
								end
							end 
						else
							if(v[4] == value[7] and v[6] == value[6])then   
								if(_G["Quest_Boton"..k])then 
									_G["Quest_Boton"..k]:Show();
									show = show+1; 
								end
							else
								if(_G["Quest_Boton"..k])then 
									_G["Quest_Boton"..k]:Hide();
								end
							end 
						end 
						OrdenQuestBoton(k);
					end  
					
					GMGenie.CateVal6 = 0;
					if(show < 17)then 
						GuildSilerB:SetMinMaxValues(1, 1)
						else
						GuildSilerB:SetMinMaxValues(1, show*11+20)
					end 
					GMGenie.CatGuiaPerplus = 0;
					GMGenie.UltmCache = 0;
					GMGenie.UltmCache1 = 0;
					GuildSilerB:SetValue(1);
				else 
					ToggleDropDownMenu(1, nil, SubCatProfFilterDropDown, self, 0, 0);
				end 
		end);   
		     
		if(key == 1)then 
			buteon:SetPoint("TOPLEFT",0,-1); 
		else  
			buteon:SetPoint("TOPLEFT",_G["Cat_Boton"..key-1],0,-20); 
		end   
		if(icon ~= nil)then 
		local testo = value[1];  
		local color = GMGenie.ColorBas;
			testo = string.gsub(testo, "Caballeros", "Cab."); 
			testo = string.gsub(testo, "Primeros", "Prim.");  
			testo = string.gsub(testo, "Los Oráculos Y", "Oráculos y");  
			testo = string.gsub(testo, "Actitudes dps para", "Warr Dps Para");  
			testo = string.gsub(testo, "Actitudes tanque para", "Warr Tank Para");  
			testo = string.gsub(testo, "Totem de Fuego para", "Totem fuego,");  
			testo = string.gsub(testo, "Totem de Agua para", "Totem Agua,");  
			testo = string.gsub(testo, "Totem de Aire para", "Totem Aire,");  
			testo = string.gsub(testo, "Totem de Tierra para", "Totem Tierra,");  
			buteon:SetText(icon..color..testo.."|r");  
		else
		buteon:SetText(value[1]);
		end
		buteon:SetID(value[3]);  
		buteon:Hide();
	end
frame.content = content;  
scrollbar:SetMinMaxValues(1, total)  
end 
function Quest_Slot_Search(self, num, lobal, tct)
local name,keyGo,BotonGlobal,pos,Global;
	 
	if(lobal == nil)then 
	  Global = GMGenie.CategoriaQuestGlobal;
	else 
	  Global = lobal;
	end
	for key, value in pairs(GMGenie.CategoriaTabla) do 
		name,keyGo,BotonGlobal,pos = value[1],value[2],value[3],value[4]; 
		if(self == pos and Global == BotonGlobal)then 
			break; 
		end
	end  
	if(num == 1)then 
		return name;
	elseif(num == 2)then
		for k, v in pairs(GMGenie.MisionesTabla) do  
		local LogTitle,LogTitleEnglish  = GetQuestInfoDbc2(v[2]);
			if(pos == v[4] and Global == v[6])then  
				if(GMGenie_Spy_Misiones_Main.Frames:IsShown())then 
					SendChatMessage(".look quest "..LogTitle);
					SendChatMessage(".look quest "..LogTitleEnglish);
				end
					
			end
		end
	elseif(num == 3)then
		return name;
	end
end
 
function OrdenCatBoton(num)  
local QuestBoton = _G["Cat_Boton"..num];  
	if(GMGenie.CateOkPlus == 0)then 
		if (QuestBoton:IsShown())then 
			QuestBoton:SetPoint("TOPLEFT",0,-1);    
			GMGenie.CateOkPlus = 1;
			GMGenie.QLastCache = num;    
		 end  
	else  
		if (QuestBoton:IsShown())then  
			QuestBoton:SetPoint("TOPLEFT",_G["Cat_Boton"..GMGenie.QLastCache],0,-20);    
			GMGenie.CateOkPlus = GMGenie.CateOkPlus +1;
			GMGenie.QLastCache = num;  	 
		 end  
	end  
end

function OrdenQuestBoton(num)  
local QuestBoton = _G["Quest_Boton"..num];  
	if(GMGenie.CatGuiaPerplus == 0)then 
		if(QuestBoton)then 
			if (QuestBoton:IsShown())then 
				QuestBoton:SetPoint("TOPLEFT",0,-1);    
				GMGenie.CatGuiaPerplus = 1;
				GMGenie.UltmCache = num;
				GMGenie.UltmCache1 = num;    
			end 
		end 
	else  
		if(QuestBoton)then 
			if (QuestBoton:IsShown())then  
				QuestBoton:SetPoint("TOPLEFT",_G["Quest_Boton"..GMGenie.UltmCache],0,-15);    
				GMGenie.CatGuiaPerplus = GMGenie.CatGuiaPerplus +1;
				GMGenie.UltmCache = num;
				GMGenie.UltmCache1 = num;   	 
			end  
		end 
	end   
end

function QuestSlotMax(self) 
local name,keyGo,BotonGlobal,pos;	  
		for key, value in pairs(GMGenie.CategoriaTabla) do 
			name,keyGo,BotonGlobal,pos = value[1],value[2],value[3],value[4];
			if(BotonGlobal == GMGenie.Quest_Slot)then
				maximo = pos;
			end
		end   
	return maximo;
end

function TpSubNumMax(self, nnum) 
local maximo = 1;
local name;
local king;
local Cat; 
	for key, value in pairs(GMGenie.TeleportA) do   
			local expansion = value[7];
			Cat = value[10];
		 if(self == expansion and GMGenie.Tp_Slot == Cat)then 
			maximo = value[5]; 
		 end
	end    
	return maximo;
end

function TpSlotFilterDropDown_OnLoad(self)
	UIDropDownMenu_Initialize(self, TpSlotFilterDropDown_Initialize, "MENU");
end

function TpNumMax() 
local maximo;
		for key, value in pairs(GMGenie.TeleportB) do 
			local name,keyGo,BotonGlobal,pos = value[1],value[2],value[3],value[4];
			if(BotonGlobal == GMGenie.Tp_Slot)then
				maximo = pos;
			end
		end  
	return maximo;
end

function QuestSlotSubMax(self, num) 
local maximo = 1;
local name;
		for key, value in pairs(GMGenie.MisionesTabla) do   
			local Categoria = value[4]; 
			 if(self == Categoria)then 
				maximo = value[5]; 
			 end
		end    
	return maximo;
end

function TpGoLocation(self)   
	for key, value in pairs(GMGenie.TeleportB) do 
		name,keyGo,BotonGlobal,pos = value[1],value[2],value[3],value[4];
		if(self == pos and GMGenie.Tp_Slot == BotonGlobal)then
			SendChatMessage(keyGo);
			break;
		end
	end  
end
function TpGoSubLocation(self, num)    
local name,keyGo,pos,expansion,Cat; 
		for key, value in pairs(GMGenie.TeleportA) do 
			name = value[2]; keyGo = value[4]; pos = value[5]; expansion = value[7]; Cat = value[10];
			if(self == pos and num == expansion and GMGenie.Tp_Slot == Cat)then
					HideDropDownMenu(1);  
					SendChatMessage(keyGo);
				break;
			end
		end     
end
function TpNameLocation(self)
local name,keyGo,BotonGlobal,pos;	  
		for key, value in pairs(GMGenie.TeleportB) do 
			name,keyGo,BotonGlobal,pos = value[1],value[2],value[3],value[4];
			if(self == pos and GMGenie.Tp_Slot == BotonGlobal)then
				break;
			end
		end  
	return name;
end

function TpNameSubLocation(self, num)
local npc,objeto,tipo,icono,posicionG,banda_mazmorra,expansion,guiaoption,posicionBoss,desc,dificultad,Cat; 
local name = "Nadita"
		for key, value in pairs(GMGenie.TeleportA) do 
			name = value[2];
			pos = value[5];
			expansion = value[7];
			Cat = value[10];
			 if(self == pos and num == expansion and GMGenie.Tp_Slot == Cat)then
				break;
			end
		end  
	return name;
end

function QuestSubLocationB(self, num, num3, tct, numb,valo1,valo2,valo3,valo4,valo5,valo6,valo7,valo8,valo9,valo10,valo11,valo12)

local id,cat,pos,item,Nota,Gcat;
local ENota = "";
local Aname = "";
local Bname = "|cFFFFC900";
local name = ""; 
local LogTitle,LogTitleEnglish,QuestInfoID,RequiredFactionId1,RequiredFactionId2,RequiredFactionValue1,RequiredFactionValue2,RewardItem1,RewardAmount1,RewardItem2,RewardAmount2,RewardItem3,RewardAmount3,RewardItem4,RewardAmount4,RewardChoiceItemID1,RewardChoiceItemQuantity1,RewardChoiceItemID2,RewardChoiceItemQuantity2,RewardChoiceItemID3,RewardChoiceItemQuantity3,RewardChoiceItemID4,RewardChoiceItemQuantity4,RewardChoiceItemID5,RewardChoiceItemQuantity5,RewardChoiceItemID6,RewardChoiceItemQuantity6,faction,RequiredNpcOrGo1,QuestSortID,RequiredNpcOrGo2,RequiredNpcOrGo3,RequiredNpcOrGo4,RequiredNpcOrGoCount1,RequiredNpcOrGoCount2,RequiredNpcOrGoCount3,RequiredNpcOrGoCount4,RequiredItemId1,RequiredItemId2,RequiredItemId3,RequiredItemId4,RequiredItemId5,RequiredItemId6,RequiredItemCount1,RequiredItemCount2,RequiredItemCount3,RequiredItemCount4,RequiredItemCount5,RequiredItemCount6; 

	--	for key, value in pairs(GMGenie.MisionesTabla) do 
			id = valo2; 
			LogTitle,LogTitleEnglish,QuestInfoID,RequiredFactionId1,RequiredFactionId2,RequiredFactionValue1,RequiredFactionValue2,RewardItem1,RewardAmount1,RewardItem2,RewardAmount2,RewardItem3,RewardAmount3,RewardItem4,RewardAmount4,RewardChoiceItemID1,RewardChoiceItemQuantity1,RewardChoiceItemID2,RewardChoiceItemQuantity2,RewardChoiceItemID3,RewardChoiceItemQuantity3,RewardChoiceItemID4,RewardChoiceItemQuantity4,RewardChoiceItemID5,RewardChoiceItemQuantity5,RewardChoiceItemID6,RewardChoiceItemQuantity6,faction,RequiredNpcOrGo1,QuestSortID,RequiredNpcOrGo2,RequiredNpcOrGo3,RequiredNpcOrGo4,RequiredNpcOrGoCount1,RequiredNpcOrGoCount2,RequiredNpcOrGoCount3,RequiredNpcOrGoCount4,RequiredItemId1,RequiredItemId2,RequiredItemId3,RequiredItemId4,RequiredItemId5,RequiredItemId6,RequiredItemCount1,RequiredItemCount2,RequiredItemCount3,RequiredItemCount4,RequiredItemCount5,RequiredItemCount6 = GetQuestInfoDbc2(valo2, 1);
 
			cat = valo4; pos = valo5; Gcat = valo6; item = valo7; Nota = valo12;
		--	if(self ~= pos and cat ~= num and Gcat ~= tct)then
		--		return
		--	end
	--	end  
	 	if(item ~= nil)then 
			Aname = "|TInterface/GossipFrame/VendorGossipIcon:14:14|t";
	 	end 
		if(faction == "Alianza")then  Bname = "|TInterface/FriendsFrame/PlusManz-Alliance:14:14|t|cFFFFC900";  
		elseif (faction == "Horda")then Bname = "|TInterface/FriendsFrame/PlusManz-Horde:14:14|t|cFFFFC900"; 
		elseif (faction == "Neutro")then
			Bname = "|TInterface/GossipFrame/GossipGossipIcon:12:14|t|cFFFFC900";
		else 
			Bname = faction.."|cFFFFC900";
		end
	 	if(Nota ~= nil and faction == "Neutro")then 
			Bname = "|TInterface/GossipFrame/PetitionGossipIcon:14:14|t|cFFFFC900";
		elseif(Nota ~= nil and faction ~= "Neutro")then
		 	ENota = "|TInterface/GossipFrame/PetitionGossipIcon:14:14|t";
	 	end
		if(num3 == nil)then 
			return Bname..ENota..Aname..LogTitle.."|r";
		elseif(num3 == 1)then
			return id;
		end
		
end

function QuestSubLocation(self, num, num3, tct)
local id,cat,pos,item,Nota,Gcat;
local ENota = "";
local Aname = "";
local Bname = "|cFFFFC900";
local name = ""; 
local LogTitle,LogTitleEnglish,QuestInfoID,RequiredFactionId1,RequiredFactionId2,RequiredFactionValue1,RequiredFactionValue2,RewardItem1,RewardAmount1,RewardItem2,RewardAmount2,RewardItem3,RewardAmount3,RewardItem4,RewardAmount4,RewardChoiceItemID1,RewardChoiceItemQuantity1,RewardChoiceItemID2,RewardChoiceItemQuantity2,RewardChoiceItemID3,RewardChoiceItemQuantity3,RewardChoiceItemID4,RewardChoiceItemQuantity4,RewardChoiceItemID5,RewardChoiceItemQuantity5,RewardChoiceItemID6,RewardChoiceItemQuantity6,faction,RequiredNpcOrGo1,QuestSortID,RequiredNpcOrGo2,RequiredNpcOrGo3,RequiredNpcOrGo4,RequiredNpcOrGoCount1,RequiredNpcOrGoCount2,RequiredNpcOrGoCount3,RequiredNpcOrGoCount4,RequiredItemId1,RequiredItemId2,RequiredItemId3,RequiredItemId4,RequiredItemId5,RequiredItemId6,RequiredItemCount1,RequiredItemCount2,RequiredItemCount3,RequiredItemCount4,RequiredItemCount5,RequiredItemCount6; 

		for key, value in pairs(GMGenie.MisionesTabla) do 
			id = value[2]; 
			LogTitle,LogTitleEnglish,QuestInfoID,RequiredFactionId1,RequiredFactionId2,RequiredFactionValue1,RequiredFactionValue2,RewardItem1,RewardAmount1,RewardItem2,RewardAmount2,RewardItem3,RewardAmount3,RewardItem4,RewardAmount4,RewardChoiceItemID1,RewardChoiceItemQuantity1,RewardChoiceItemID2,RewardChoiceItemQuantity2,RewardChoiceItemID3,RewardChoiceItemQuantity3,RewardChoiceItemID4,RewardChoiceItemQuantity4,RewardChoiceItemID5,RewardChoiceItemQuantity5,RewardChoiceItemID6,RewardChoiceItemQuantity6,faction,RequiredNpcOrGo1,QuestSortID,RequiredNpcOrGo2,RequiredNpcOrGo3,RequiredNpcOrGo4,RequiredNpcOrGoCount1,RequiredNpcOrGoCount2,RequiredNpcOrGoCount3,RequiredNpcOrGoCount4,RequiredItemId1,RequiredItemId2,RequiredItemId3,RequiredItemId4,RequiredItemId5,RequiredItemId6,RequiredItemCount1,RequiredItemCount2,RequiredItemCount3,RequiredItemCount4,RequiredItemCount5,RequiredItemCount6 = GetQuestInfoDbc2(value[2], 1);
 
			cat = value[4]; pos = value[5]; Gcat = value[6]; item = value[7]; Nota = value[12];
			if(self == pos and cat == num and Gcat == tct)then
				break;
			end
		end  
	 	if(item ~= nil)then 
			Aname = "|TInterface/GossipFrame/VendorGossipIcon:14:14|t";
	 	end 
		if(faction == "Alianza")then  Bname = "|TInterface/FriendsFrame/PlusManz-Alliance:14:14|t|cFFFFC900";  
		elseif (faction == "Horda")then Bname = "|TInterface/FriendsFrame/PlusManz-Horde:14:14|t|cFFFFC900"; 
		elseif (faction == "Neutro")then
			Bname = "|TInterface/GossipFrame/GossipGossipIcon:12:14|t|cFFFFC900";
		else 
			Bname = faction.."|cFFFFC900";
		end
	 	if(Nota ~= nil and faction == "Neutro")then 
			Bname = "|TInterface/GossipFrame/PetitionGossipIcon:14:14|t|cFFFFC900";
		elseif(Nota ~= nil and faction ~= "Neutro")then
		 	ENota = "|TInterface/GossipFrame/PetitionGossipIcon:14:14|t";
	 	end
		if(num3 == nil)then 
			return Bname..ENota..Aname..LogTitle.."|r";
		elseif(num3 == 1)then
			return id;
		end
end
 
function QuestSubQuest_Funcion(self,num1, num)
 
local name = "Nadita"
local id,cat,pos,faction;
		for key, value in pairs(GMGenie.MisionesTabla) do 
			name = value[1]; id = value[2];
			faction = value[3]; cat = value[4];
			pos = value[5];
			if(num1 == pos and cat == num )then 
					GameTooltip:SetOwner(self, "ANCHOR_CURSOR_RIGHT");
					GameTooltip:SetText("Id Mision: "..id.."|nLado: "..faction); 
					GameTooltip:Show(); 
				break;
			end
		end  	
end

function QuestSlotFilterDropDown_Initialize(self, level) 
	local info = UIDropDownMenu_CreateInfo();
 	info.keepShownOnClick = true; 
	local numMax = QuestSlotMax();  
	
		GMGenie.CategoriaQuestGlobal = 0;
		GMGenie.CatQuestGlobalTable = {};
	if level == 1 then 
		for i=1,numMax do   
			info.checked = nil;
			info.isNotRadio = nil;
			info.func =  nil;
			info.hasArrow = true;
			info.notCheckable = true; 
			info.text = Quest_Slot_Search(i,1);  
			info.value = i;  
			GMGenie.CategoriaQuestValores = i;
			UIDropDownMenu_AddButton(info, level); 
		end
	else   
		
		for yy=1,GMGenie.CategoriaQuestValores do  
			if (UIDROPDOWNMENU_MENU_VALUE == yy) then
				local numSubMax = QuestSlotSubMax(yy);
				GMGenie.CategoriaQuestGlobal = yy;
				Quest_Slot_Search(yy, 2); 
				for i=1, numSubMax do 	
				local id = QuestSubLocation(i,yy, 1);
				local tox = QuestSubLocation(i,yy);
				table.insert(GMGenie.CatQuestGlobalTable, #GMGenie.CatQuestGlobalTable+1, id.." - ");
				local tixix = "[Inactivo] "; 
				if(_G["GMGenie.QuestActString"..i])then 
					  tixix = _G["GMGenie.QuestActString"..i];
				end
					info.hasArrow = false;
					info.isNotRadio = true;
					info.notCheckable = true;	   
					info.text = tixix..tox;
					info.func =	function() 
									info.text = tixix..tox;
									QuestSubQuest_Funcion(self,i,yy);
									Quest_Slot_Search(yy, 2);								 	
								end 
					UIDropDownMenu_AddButton(info, level); 
				end
			end
		end
		
	end
end
function TpSlotFilterDropDown_Initialize(self, level)
	local info = UIDropDownMenu_CreateInfo();
	local numMax = TpNumMax(); 
	info.keepShownOnClick = true;
	if level == 1 then 
		for i=1,numMax do
			if(GMGenie.Tp_Slot == 3 or GMGenie.Tp_Slot == 4)then 
				info.checked = nil;
				info.isNotRadio = nil;
				info.func =  nil;
				info.hasArrow = true;
				info.notCheckable = true;
				
				info.text = TpNameLocation(i);
				info.value = i; 
				UIDropDownMenu_AddButton(info, level);
			else
				info.checked = nil;
				info.isNotRadio = true;
				info.notCheckable = true;	 
				info.text = TpNameLocation(i);   
				info.func = function() 
								TpGoLocation(i); 
							end  
				info.hasArrow = false;
				UIDropDownMenu_AddButton(info, level);  
			end	 
		end 
	else    
		for yy=1,3 do 
			if (UIDROPDOWNMENU_MENU_VALUE == yy) then
				local numSubMax = TpSubNumMax(yy);
				for i=1, numSubMax do 
					info.hasArrow = false;
					info.isNotRadio = true;
					info.notCheckable = true;	
						
					info.text = TpNameSubLocation(i,yy);
					info.func = function()
								 	TpGoSubLocation(i,yy);
								end 
					UIDropDownMenu_AddButton(info, level); 
				end
			end
		end 
	end
end

function GMGenie.Teleport.toggle()
    local frame = GMGenie_Teleport_Main;
    if frame:IsVisible() then
        frame:Hide();
		GMGenie_SavedVars.Teleport = 0;
    else
        frame:Show();
		GMGenie_SavedVars.Teleport = 1;
    end
end


function GenieMineSearchGo(text)  
local filt_minus_guia = "";
local filt_minus_guiab = text; 
local inf_name;
	for key, value in pairs(GMGenie.CategoriaTabla) do 
		local button = _G["Cat_Boton"..key]; 	
		inf_name = value[1]; 
		if ( filt_minus_guiab ~= "" and value[2] ~= true) then
			filt_minus_guia = string.lower(value[1]);  
			if (string.match(filt_minus_guia, "á")  ) then
				filt_minus_guia = string.gsub(filt_minus_guia, "á", "a");
			end 
			if (string.match(filt_minus_guia, "é")  ) then
				filt_minus_guia = string.gsub(filt_minus_guia, "é", "e");
			end
			if (string.match(filt_minus_guia, "í")  ) then
				filt_minus_guia = string.gsub(filt_minus_guia, "í", "i");
			end
			if (string.match(filt_minus_guia, "ó")  ) then
				filt_minus_guia = string.gsub(filt_minus_guia, "ó", "o");
			end
			if (string.match(filt_minus_guia, "ú")  ) then
				filt_minus_guia = string.gsub(filt_minus_guia, "ú", "u");
			end
			if (string.match(filt_minus_guia, "'")  ) then
				filt_minus_guia = string.gsub(filt_minus_guia, "'", "");
			end
			
			filt_minus_guiab = string.lower(filt_minus_guiab); 
			
			if (string.match(filt_minus_guiab, "á")  ) then
				filt_minus_guiab = string.gsub(filt_minus_guiab, "á", "a");
			end
			if (string.match(filt_minus_guiab, "é")  ) then
				filt_minus_guiab = string.gsub(filt_minus_guiab, "é", "e");
			end
			if (string.match(filt_minus_guiab, "í")  ) then
				filt_minus_guiab = string.gsub(filt_minus_guiab, "í", "i");
			end
			if (string.match(filt_minus_guiab, "ó")  ) then
				filt_minus_guiab = string.gsub(filt_minus_guiab, "ó", "o");
			end
			if (string.match(filt_minus_guiab, "ú")  ) then
				filt_minus_guiab = string.gsub(filt_minus_guiab, "ú", "u");
			end
			if (string.match(filt_minus_guiab, "'")  ) then
				filt_minus_guiab = string.gsub(filt_minus_guiab, "'", "");
			end
			  
			if not string.match(filt_minus_guia, filt_minus_guiab) then    
				if (button:IsShown())then  
					button:Hide();  
				end 
			else  
				if ( not button:IsShown())then 
					button:Show();   
				end 
			end 
		elseif ( filt_minus_guiab == "") then
			GMGenie_Spy_Misiones_Main.Frames.CatText:SetText("");  
			button:Hide(); 
		end
		OrdenCatBoton(key);
	end
	GMGenie.CateOkPlus = 0;
	GMGenie.QLastCache = 0;
	GMGenie.QLastCache1 = 0;
end



GMGenie.Spawns = {};

GMGenie.Spawns.direction = { forwardBackward = 1, leftRight = 1, upDown = 1, rotate = 1 };
GMGenie.Spawns.waitingForGps = 0;
GMGenie.Spawns.waitingForObject = false;
GMGenie.Spawns.waitingForObjectDelete = false;
GMGenie.Spawns.currentCoords = {};
GMGenie.Spawns.macroScheduleTime = 0;

function GMGenie.Spawns.onLoad()
    UIDropDownMenu_Initialize(GMGenie_Spawns_Main_ForwardBackward_Dropdownbuttons, GMGenie.Spawns.loadDropdownForwardBackward, "MENU");
    UIDropDownMenu_Initialize(GMGenie_Spawns_Main_LeftRight_Dropdownbuttons, GMGenie.Spawns.loadDropdownLeftRight, "MENU");
    UIDropDownMenu_Initialize(GMGenie_Spawns_Main_UpDown_Dropdownbuttons, GMGenie.Spawns.loadDropdownUpDown, "MENU");
    UIDropDownMenu_Initialize(GMGenie_Spawns_Main_Rotate_Dropdownbuttons, GMGenie.Spawns.loadDropdownRotate, "MENU");
    UIDropDownMenu_Initialize(GMGenie_Spawns_Main_Object_Dropdownbuttons, GMGenie.Spawns.loadObjectDropdown, "MENU");
    UIDropDownMenu_Initialize(GMGenie_Spawns_Main_Npc_Dropdownbuttons, GMGenie.Spawns.loadNpcDropdown, "MENU");
    GMGenie.Spawns.Hyperlink.onLoad();
end

function GMGenie.Spawns.loadDropdownForwardBackward(self, level)
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'forward';
    info.func = GMGenie.Spawns.setForwardBackward;
    info.value = 1;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'backward';
    info.func = GMGenie.Spawns.setForwardBackward;
    info.value = -1;
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.setForwardBackward(self)
    CloseDropDownMenus();
    GMGenie.Spawns.direction.forwardBackward = self.value;
    GMGenie.Spawns.updateView();
end

function GMGenie.Spawns.loadDropdownLeftRight(self, level)
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'left';
    info.func = GMGenie.Spawns.setLeftRight;
    info.value = 1;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'right';
    info.func = GMGenie.Spawns.setLeftRight;
    info.value = -1;
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.setLeftRight(self)
    CloseDropDownMenus();
    GMGenie.Spawns.direction.leftRight = self.value;
    GMGenie.Spawns.updateView();
end

function GMGenie.Spawns.loadDropdownUpDown(self, level)
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'up';
    info.func = GMGenie.Spawns.setUpDown;
    info.value = 1;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'down';
    info.func = GMGenie.Spawns.setUpDown;
    info.value = -1;
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.setUpDown(self)
    CloseDropDownMenus();
    GMGenie.Spawns.direction.upDown = self.value;
    GMGenie.Spawns.updateView();
end

function GMGenie.Spawns.loadDropdownRotate(self, level)
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Rotate left';
    info.func = GMGenie.Spawns.setRotate;
    info.value = 1;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Rotate right';
    info.func = GMGenie.Spawns.setRotate;
    info.value = -1;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Face north';
    info.func = GMGenie.Spawns.setRotate;
    info.value = 0;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Face east';
    info.func = GMGenie.Spawns.setRotate;
    info.value = 90;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Face south';
    info.func = GMGenie.Spawns.setRotate;
    info.value = 180;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Face west';
    info.func = GMGenie.Spawns.setRotate;
    info.value = 270;
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.setRotate(self)
    CloseDropDownMenus();
    GMGenie.Spawns.direction.rotate = self.value;
    GMGenie.Spawns.updateView();
end

function GMGenie.Spawns.updateView()
    if GMGenie.Spawns.direction.forwardBackward == 1 then
        GMGenie_Spawns_Main_ForwardBackward_Direction:SetText('forward');
    else
        GMGenie_Spawns_Main_ForwardBackward_Direction:SetText('backward');
    end

    if GMGenie.Spawns.direction.leftRight == 1 then
        GMGenie_Spawns_Main_LeftRight_Direction:SetText('left');
    else
        GMGenie_Spawns_Main_LeftRight_Direction:SetText('right');
    end

    if GMGenie.Spawns.direction.upDown == 1 then
        GMGenie_Spawns_Main_UpDown_Direction:SetText('up');
    else
        GMGenie_Spawns_Main_UpDown_Direction:SetText('down');
    end

    if GMGenie.Spawns.direction.rotate == 1 then
        GMGenie_Spawns_Main_Rotate_Direction:SetText('Rotate left');
        GMGenie_Spawns_Main_Rotate_Amount:Show();
    elseif GMGenie.Spawns.direction.rotate == -1 then
        GMGenie_Spawns_Main_Rotate_Direction:SetText('Rotate right');
        GMGenie_Spawns_Main_Rotate_Amount:Show();
    elseif GMGenie.Spawns.direction.rotate == 0 then
        GMGenie_Spawns_Main_Rotate_Direction:SetText('Face north');
        GMGenie_Spawns_Main_Rotate_Amount:Hide();
    elseif GMGenie.Spawns.direction.rotate == 90 then
        GMGenie_Spawns_Main_Rotate_Direction:SetText('Face east');
        GMGenie_Spawns_Main_Rotate_Amount:Hide();
    elseif GMGenie.Spawns.direction.rotate == 180 then
        GMGenie_Spawns_Main_Rotate_Direction:SetText('Face south');
        GMGenie_Spawns_Main_Rotate_Amount:Hide();
    elseif GMGenie.Spawns.direction.rotate == 270 then
        GMGenie_Spawns_Main_Rotate_Direction:SetText('Face west');
        GMGenie_Spawns_Main_Rotate_Amount:Hide();
    end

    if not GMGenie.Spawns.currentCoords.x then
        GMGenie_Spawns_Main_Coords_X:SetText('X:');
    else
        local x = tostring(GMGenie.Spawns.currentCoords.x);
        if string.len(x) > 10 then
            x = string.sub(x, 1, 10);
        end
        GMGenie_Spawns_Main_Coords_X:SetText('X: ' .. x);
    end

    if not GMGenie.Spawns.currentCoords.y then
        GMGenie_Spawns_Main_Coords_Y:SetText('Y:');
    else
        local y = tostring(GMGenie.Spawns.currentCoords.y);
        if string.len(y) > 10 then
            y = string.sub(y, 1, 10);
        end
        GMGenie_Spawns_Main_Coords_Y:SetText('Y: ' .. y);
    end

    if not GMGenie.Spawns.currentCoords.z then
        GMGenie_Spawns_Main_Coords_Z:SetText('Z:');
    else
        local z = tostring(GMGenie.Spawns.currentCoords.z);
        if string.len(z) > 10 then
            z = string.sub(z, 1, 10);
        end
        GMGenie_Spawns_Main_Coords_Z:SetText('Z: ' .. z);
    end

    if not GMGenie.Spawns.currentCoords.o then
        GMGenie_Spawns_Main_Coords_O:SetText('O:');
    else
        local o = tostring(GMGenie.Spawns.currentCoords.o);
        if string.len(o) > 10 then
            o = string.sub(o, 1, 10);
        end
        GMGenie_Spawns_Main_Coords_O:SetText('O: ' .. o);
    end
end

function GMGenie.Spawns.clearFocus()
    GMGenie_Spawns_Main_ForwardBackward_Amount:ClearFocus();
    GMGenie_Spawns_Main_LeftRight_Amount:ClearFocus();
    GMGenie_Spawns_Main_UpDown_Amount:ClearFocus();
    GMGenie_Spawns_Main_Rotate_Amount:ClearFocus();
    GMGenie_Spawns_Main_Npc_Id:ClearFocus();
    GMGenie_Spawns_Main_Object_Id:ClearFocus();
    GMGenie_Spawns_Macro_Macro_Frame_Text:ClearFocus();
end



function GMGenie.Spawns.initiateMove(option)
    GMGenie.Spawns.currentSpawnOption = option;
    if not (GMGenie.Spawns.currentCoords.x and GMGenie.Spawns.currentCoords.y and GMGenie.Spawns.currentCoords.z and GMGenie.Spawns.currentCoords.o and GMGenie.Spawns.currentCoords.map) then
        SendChatMessage(".gps", "GUILD");
        GMGenie.Spawns.waitingForGps = 1;
    else
        GMGenie.Spawns.move(GMGenie.Spawns.currentCoords.x, GMGenie.Spawns.currentCoords.y, GMGenie.Spawns.currentCoords.z, GMGenie.Spawns.currentCoords.o);
    end
    GMGenie.Spawns.clearFocus();
end

function GMGenie.Spawns.setMap(map)
    GMGenie.Spawns.currentCoords.map = map;
end

function GMGenie.Spawns.move(x, y, z, o)

    local forwardBackward = GMGenie_Spawns_Main_ForwardBackward_Amount:GetText();
    if not forwardBackward or forwardBackward == "" then
        forwardBackward = 0;
    end
    local leftRight = GMGenie_Spawns_Main_LeftRight_Amount:GetText();
    if not leftRight or leftRight == "" then
        leftRight = 0;
    end
    local upDown = GMGenie_Spawns_Main_UpDown_Amount:GetText();
    if not upDown or upDown == "" then
        upDown = 0;
    end
    local rotate = GMGenie_Spawns_Main_Rotate_Amount:GetText();
    if not rotate or rotate == "" then
        rotate = 0;
    end

    forwardBackward = tonumber(forwardBackward) * GMGenie.Spawns.direction.forwardBackward;
    leftRight = tonumber(leftRight) * GMGenie.Spawns.direction.leftRight;
    upDown = tonumber(upDown);
    rotate = tonumber(rotate);

    x = tonumber(x);
    y = tonumber(y);
    z = tonumber(z);
    o = deg(tonumber(o));

    if GMGenie.Spawns.currentSpawnOption == -1 then
        forwardBackward = -1 * forwardBackward;
        leftRight = -1 * leftRight;
        upDown = -1 * upDown;
        rotate = -1 * rotate;
    elseif GMGenie.Spawns.currentSpawnOption == 1 then
        Chronos.scheduleByName('spawnobject', 0.25, GMGenie.Spawns.object, GMGenie_Spawns_Main_Object_Id:GetText());
    elseif GMGenie.Spawns.currentSpawnOption == 2 then
        Chronos.scheduleByName('spawnnpc', 0.25, GMGenie.Spawns.npc, GMGenie_Spawns_Main_Npc_Id:GetText());
    end

    local tempO = o;
    if GMGenie.Spawns.currentSpawnOption == -1 then
        if GMGenie.Spawns.direction.rotate == 1 or GMGenie.Spawns.direction.rotate == -1 then
            tempO = o + (rotate * GMGenie.Spawns.direction.rotate);
        else
            tempO = GMGenie.Spawns.direction.rotate;
        end
    end

    x = x + ((cos(tempO) * forwardBackward) + (cos(270 - tempO) * leftRight));
    y = y + ((sin(tempO) * forwardBackward) - (sin(270 - tempO) * leftRight));
    z = z + (upDown * GMGenie.Spawns.direction.upDown);

    if GMGenie.Spawns.direction.rotate == 1 or GMGenie.Spawns.direction.rotate == -1 then
        o = o + (rotate * GMGenie.Spawns.direction.rotate);
    else
        o = GMGenie.Spawns.direction.rotate;
    end

    o = rad(o);

    GMGenie.Spawns.currentCoords.x = x;
    GMGenie.Spawns.currentCoords.y = y;
    GMGenie.Spawns.currentCoords.z = z;
    GMGenie.Spawns.currentCoords.o = o;

    SendChatMessage(".go xyz " .. x .. " " .. y .. " " .. z .. " " .. GMGenie.Spawns.currentCoords.map .. " " .. o, "GUILD");
    GMGenie.Spawns.updateView();
end

function GMGenie.Spawns.object(objectId)
    if not objectId or objectId == "" then
        return false;
    end
    objectId = tonumber(objectId);

    SendChatMessage(".gobject add " .. objectId, "GUILD");
end

function GMGenie.Spawns.npc(npcId)
    if not npcId or npcId == "" then
        return false;
    end
    npcId = tonumber(npcId);

    SendChatMessage(".npc add " .. npcId, "GUILD");
end

function GMGenie.Spawns.resetCoords()
    GMGenie.Spawns.currentCoords = {};
    GMGenie.Spawns.updateView();
end

function GMGenie.Spawns.targetObject()
    GMGenie.Spawns.waitingForObject = true;
    SendChatMessage(".gobject target", "GUILD");
end

function GMGenie.Spawns.deleteObject(name, guid, id)
    GMGenie.Spawns.waitingForObjectDelete = true;
    SendChatMessage(".gobject del " .. guid, "GUILD");
    GMGenie.showGMMessage("Deleting object: " .. name .. " GUID: " .. guid .. " ID: " .. id);
end

function GMGenie.Spawns.deleteNpc()
    SendChatMessage(".npc del");
end

function GMGenie.Spawns.toggleMacroWindow()
    local frame = GMGenie_Spawns_Macro;
    if frame:IsVisible() then
        frame:Hide();
    else
        frame:Show();
    end
end

function GMGenie.Spawns.scheduleGo(forwardBackward, leftRight, upDown, rotate, rotateDir, option, id)
    Chronos.schedule(GMGenie.Spawns.macroScheduleTime, GMGenie.Spawns.go, forwardBackward, leftRight, upDown, rotate, rotateDir, option, id)
    GMGenie.Spawns.macroScheduleTime = 1 + GMGenie.Spawns.macroScheduleTime;
end

function GMGenie.Spawns.go(forwardBackward, leftRight, upDown, rotate, rotateDir, option, id)
    GMGenie.Spawns.direction = { forwardBackward = 1, leftRight = 1, upDown = 1, rotate = rotateDir };
    GMGenie_Spawns_Main_ForwardBackward_Amount:SetText(forwardBackward);
    GMGenie_Spawns_Main_LeftRight_Amount:SetText(leftRight);
    GMGenie_Spawns_Main_UpDown_Amount:SetText(upDown);
    GMGenie_Spawns_Main_Rotate_Amount:SetText(rotate);

    GMGenie_Spawns_Main_Object_Id:SetText("");
    GMGenie_Spawns_Main_Npc_Id:SetText("");
    if option == 1 then
        GMGenie_Spawns_Main_Object_Id:SetText(id);
    elseif option == 2 then
        GMGenie_Spawns_Main_Npc_Id:SetText(id);
    end

    GMGenie.Spawns.updateView();
    GMGenie.Spawns.clearFocus();

    GMGenie.Spawns.initiateMove(option);

    GMGenie.Spawns.macroScheduleTime = 2 + GMGenie.Spawns.macroScheduleTime;
end

function GMGenie.Spawns.runMacro()
    GMGenie.Spawns.macroScheduleTime = 0;
    local macroText = GMGenie_Spawns_Macro_Macro_Frame_Text:GetText();
    macroText = string.gsub(macroText, "go", "GMGenie.Spawns.scheduleGo");
    GMGenie.showGMMessage("Running spawn macro, do not interfere!");
    RunScript(macroText);
end

function GMGenie.Spawns.toggle()
    local frame = GMGenie_Spawns_Main;
    if frame:IsVisible() then
        frame:Hide();
    else
        frame:Show();
    end
end

function GMGenie.Spawns.loadObjectDropdown(self, level)
    local objectsTemp = GMGenie.pairsByKeys2(GMGenie_SavedVars.objects);
    for index, name in pairs(objectsTemp) do
        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = name;
        info.func = GMGenie.Spawns.selectObject;
        info.value = GMGenie_SavedVars.objects[name];
        UIDropDownMenu_AddButton(info, level);
    end

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = "Manage Presets";
    info.func = GMGenie.Spawns.showOptions;
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.loadNpcDropdown(self, level)
    local npcsTemp = GMGenie.pairsByKeys2(GMGenie_SavedVars.npcs);
    for index, name in pairs(npcsTemp) do
        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = name;
        info.func = GMGenie.Spawns.selectNpc;
        info.value = GMGenie_SavedVars.npcs[name];
        UIDropDownMenu_AddButton(info, level);
    end

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = "Manage Presets";
    info.func = GMGenie.Spawns.showOptions;
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.selectObject(self)
    CloseDropDownMenus();
    GMGenie_Spawns_Main_Object_Id:SetText(self.value);
end

function GMGenie.Spawns.selectNpc(self)
    CloseDropDownMenus();
    GMGenie_Spawns_Main_Npc_Id:SetText(self.value);
end



GMGenie.Spawns.Hyperlink = {};
GMGenie.Spawns.Hyperlink.name = '';
GMGenie.Spawns.Hyperlink.id = '';
GMGenie.Spawns.Hyperlink.type = '';

function GMGenie.Spawns.Hyperlink.onLoad()
    UIDropDownMenu_Initialize(GMGenie_Spawns_Hyperlink_Menu, GMGenie.Spawns.Hyperlink.loadMenu, "MENU");
end

function GMGenie.Spawns.Hyperlink.loadMenu(self, level)
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.isTitle = true;
    info.text = GMGenie.Spawns.Hyperlink.name;
    info.fontObject = GenieFontNormalSmall;
    UIDropDownMenu_AddButton(info, level);

    if GMGenie.Spawns.Hyperlink.type == "gameobject_entry" or GMGenie.Spawns.Hyperlink.type == "creature_entry" then
        local name;
        if GMGenie.Spawns.Hyperlink.type == "gameobject_entry" then
            name = 'gameobject';
        else
            name = 'creature';
        end

        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = 'Spawn ' .. name .. ' here';
        info.func = GMGenie.Spawns.Hyperlink.spawnHere;
        UIDropDownMenu_AddButton(info, level);

        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = 'Add ' .. name .. ' to presets';
        info.func = GMGenie.Spawns.Hyperlink.addPreset;
        UIDropDownMenu_AddButton(info, level);

        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = 'List spawned ' .. name .. 's';
        info.func = GMGenie.Spawns.Hyperlink.list;
        UIDropDownMenu_AddButton(info, level);
    elseif GMGenie.Spawns.Hyperlink.type == "gameobject" or GMGenie.Spawns.Hyperlink.type == "creature" then
        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = 'Go to ' .. GMGenie.Spawns.Hyperlink.type;
        info.func = GMGenie.Spawns.Hyperlink.goTo;
        UIDropDownMenu_AddButton(info, level);

        local info = UIDropDownMenu_CreateInfo();
        info.hasArrow = false;
        info.notCheckable = true;
        info.text = 'Remove ' .. GMGenie.Spawns.Hyperlink.type;
        info.func = GMGenie.Spawns.Hyperlink.remove;
        UIDropDownMenu_AddButton(info, level);
    end

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Close menu';
    UIDropDownMenu_AddButton(info, level);
end

function GMGenie.Spawns.Hyperlink.spawnHere()
    if GMGenie.Spawns.Hyperlink.type == "gameobject_entry" then
        SendChatMessage(".gob add " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    elseif GMGenie.Spawns.Hyperlink.type == "creature_entry" then
        SendChatMessage(".npc add " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    else
        GMGnie.showGMMessage("Could not spawn link type " .. GMGenie.Spawns.Hyperlink.type);
    end
end

function GMGenie.Spawns.Hyperlink.addPreset()
    if GMGenie.Spawns.Hyperlink.type == "gameobject_entry" then
        GMGenie_SavedVars.objects[GMGenie.Spawns.Hyperlink.name] = GMGenie.Spawns.Hyperlink.id;
    elseif GMGenie.Spawns.Hyperlink.type == "creature_entry" then
        GMGenie_SavedVars.npcs[GMGenie.Spawns.Hyperlink.name] = GMGenie.Spawns.Hyperlink.id;
    else
        GMGnie.showGMMessage("Could not add preset for link type " .. GMGenie.Spawns.Hyperlink.type);
    end
end

function GMGenie.Spawns.Hyperlink.list()
    if GMGenie.Spawns.Hyperlink.type == "gameobject_entry" then
        SendChatMessage(".list object " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    elseif GMGenie.Spawns.Hyperlink.type == "creature_entry" then
        SendChatMessage(".list creature " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    else
        GMGnie.showGMMessage("Could not list link type " .. GMGenie.Spawns.Hyperlink.type);
    end
end

function GMGenie.Spawns.Hyperlink.goTo()
    if GMGenie.Spawns.Hyperlink.type == "gameobject" then
        SendChatMessage(".go object " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    elseif GMGenie.Spawns.Hyperlink.type == "creature" then
        SendChatMessage(".go creature " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    else
        GMGnie.showGMMessage("Could not port to link type " .. GMGenie.Spawns.Hyperlink.type);
    end
end

function GMGenie.Spawns.Hyperlink.remove()
    if GMGenie.Spawns.Hyperlink.type == "gameobject" then
        SendChatMessage(".gob delete " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    elseif GMGenie.Spawns.Hyperlink.type == "creature" then
        SendChatMessage(".npc delete " .. GMGenie.Spawns.Hyperlink.id, "GUILD");
    else
        GMGnie.showGMMessage("Could not remove link type " .. GMGenie.Spawns.Hyperlink.type);
    end
end

function GMGenie.Spawns.Hyperlink.toggle(link, text)
    if not link or link == GMGenie.Spawns.Hyperlink.link then
        GMGenie.Spawns.Hyperlink.name = '';
        GMGenie.Spawns.Hyperlink.id = '';
        GMGenie.Spawns.Hyperlink.type = '';
    else
        local type, id = strsplit(":", link);
        GMGenie.Spawns.Hyperlink.type = type;
        GMGenie.Spawns.Hyperlink.id = id;
        GMGenie.Spawns.Hyperlink.name = string.match(text, "%[(.*)%]");
    end
    ToggleDropDownMenu(1, nil, GMGenie_Spawns_Hyperlink_Menu, 'cursor', 0, 0);
end

local Saved_SetItemRef = SetItemRef;
function SetItemRef(link, text, button, chatFrame)
    if (strsub(link, 1, 16) == "gameobject_entry") or (strsub(link, 1, 14) == "creature_entry") or (strsub(link, 1, 10) == "gameobject") or (strsub(link, 1, 8) == "creature") then
        GMGenie.Spawns.Hyperlink.toggle(link, text);
        return;
    end
    Saved_SetItemRef(link, text, button, chatFrame);
end

-- add slash command to open/close builder widnow
SLASH_SPAWNS1 = "/builder";
SLASH_SPAWNS2 = "/spawns";
SlashCmdList["SPAWNS"] = GMGenie.Spawns.toggle;

