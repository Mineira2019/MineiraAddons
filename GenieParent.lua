
function GenieSearchMineClearButton_OnClick(self)
	PlaySound("igMainMenuOptionCheckBoxOn");
	local editBox = self:GetParent();
	editBox:SetText("");
	GenieSearchMine_OnEditFocusLost(editBox)
	editBox:ClearFocus(); 
end
function GenieSearchMine_OnLoad(self)
	self.searchIcon:SetVertexColor(0.6, 0.6, 0.6);
	self:SetTextInsets(16, 20, 0, 0);
	self.Instructions:SetText(SEARCH);
	self.Instructions:ClearAllPoints();
	self.Instructions:SetPoint("TOPLEFT", self, "TOPLEFT", 16, 0);
	self.Instructions:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", -20, 0);
end
function GenieSearchMine_OnEditFocusLost(self)
	if ( self:GetText() == "" ) then
		self.searchIcon:SetVertexColor(0.6, 0.6, 0.6);
		self.Instructions:SetText(SEARCH);
		self.clearButton:Hide();
	else  
		self.Instructions:SetText("");
	end
end
function GenieSearchMine_OnEditFocusGained(self)
	self.searchIcon:SetVertexColor(1.0, 1.0, 1.0);
	self.clearButton:Show();
	self.Instructions:SetText("");
end
function GenieSearchMine_OnTextChanged(self)
	if ( not self:HasFocus() and self:GetText() == "" ) then
		self.searchIcon:SetVertexColor(0.6, 0.6, 0.6);
		self.clearButton:Hide();
	else
		self.searchIcon:SetVertexColor(1.0, 1.0, 1.0);
		self.clearButton:Show();
	end
	InputBoxInstructions_OnTextChanged(self);
end

function GenieInstructions_OnTextChanged(self)
--	self.Instructions:SetShown(self:GetText() == "")
end
function GenieInstructions_UpdateColorForEnabledState(self, color)
	if color then
		self:SetTextColor(color:GetRGBA());
	end
end
function GenieInstructions_OnDisable(self)
	GenieInstructions_UpdateColorForEnabledState(self, self.disabledColor);
end
function GenieInstructions_OnEnable(self)
	GenieInstructions_UpdateColorForEnabledState(self, self.enabledColor);
end 

function MineraUpdateTextNoFun(self)
local TestTable = {}; 
local TestTable2 = {}; 
local num;

	for i=1,self:len() do 
		table.insert(TestTable, #TestTable+1, self.sub(self, #TestTable+1, #TestTable+1));
	end 
	
	for k, v in pairs(TestTable) do
		if(v == " " or v == ".")then 
			table.insert(TestTable2, #TestTable2+1, k);
		end
	end
	for ki, vi in pairs(TestTable2) do
		num = vi;
	end
	
	return num;
end

function MineraUpdateText(self)
for i=1,99 do  
	if(self == i)then 
		self = unpack (GMGenie.QuestMisionNotas[tonumber(self)]);
	end
end
 
local nota = "";
local PuntoFinal = self.sub(self, -1);
if(PuntoFinal ~= ".")then -- En caso de que no tengo Punto Final la Oración
	self = self..".";
end

local Maximo = self:len();
	if(Maximo >= 52)then 
		local PNota1 = "";
		local PNota2 = "";
		local PNota3 = "";
		local PNota4 = "";
		local PNota5 = "";
		local PNota6 = "";
		local Char1 = MineraUpdateTextNoFun(self.sub(self, 1, 52));

		if(Char1 == nil)then 
		Char1 = MineraUpdateTextNoFun(self.sub(self, 1, Maximo));
		end  
		local Char2 = MineraUpdateTextNoFun(self.sub(self, Char1+1, Char1+1+52));
		if(Char2 == nil)then 
		Char2 = MineraUpdateTextNoFun(self.sub(self, Char1+1, self:len()));
		end 
		local Char3 = MineraUpdateTextNoFun(self.sub(self, Char2+1, Char2+1+52));
		if(Char3 == nil)then 
		Char3 = MineraUpdateTextNoFun(self.sub(self, Char2+1, self:len()));
		end 
		local Char4 = MineraUpdateTextNoFun(self.sub(self, Char3+1, Char3+1+52));
		if(Char4 == nil)then 
		Char4 = MineraUpdateTextNoFun(self.sub(self, Char3+1, self:len()));
		end 
		local Char5 = MineraUpdateTextNoFun(self.sub(self, Char4+1, Char4+1+52));
		if(Char5 == nil)then 
		Char5 = MineraUpdateTextNoFun(self.sub(self, Char4+1, self:len()));
		end 
		local Char6 = MineraUpdateTextNoFun(self.sub(self, Char5+1, Char5+1+52));
		if(Char6 == nil)then 
		Char6 = MineraUpdateTextNoFun(self.sub(self, Char5+1, self:len()));
		end 
			PNota1 = self.sub(self, 1, Char1);
			PNota2 = self.sub(self, Char1+1, Char1+Char2);  
			PNota3 = self.sub(self, Char1+Char2+1, Char1+Char2+Char3); 
			PNota4 = self.sub(self, Char1+Char2+Char3+1, Char1+Char2+Char3+Char4); 
			PNota5 = self.sub(self, Char1+Char2+Char3+Char4+1, Char1+Char2+Char3+Char4+Char5);   
			PNota6 = self.sub(self, Char1+Char2+Char3+Char4+Char5+1, Char1+Char2+Char3+Char4+Char5+Char6);   
			if(PNota1 ~= "")then PNota1 = "|n"..PNota1; end
			if(PNota2 ~= "")then PNota2 = "|n"..PNota2; end
			if(PNota3 ~= "")then PNota3 = "|n"..PNota3; end
			if(PNota4 ~= "")then PNota4 = "|n"..PNota4; end
			if(PNota5 ~= "")then PNota5 = "|n"..PNota5; end
			if(PNota6 ~= "")then PNota6 = "|n"..PNota6; end
			
			nota = "|n|n|cFFFFC900Nota Importante:|n|cFFFFFFFF"..PNota1..PNota2..PNota3..PNota4..PNota5..PNota6.."|n|r";
	else 
			nota = "|n|n|cFFFFC900Nota Importante:|n|n|cFFFFFFFF"..self.."|n|r";
	end 
	return nota;				 
end 

function GenieDetecTorRazaClase(Texto, nBit)
  local num = tonumber(Texto)
  local bBit =2 ^ (nBit - 1)
  return num % (bBit + bBit) >= bBit    
end
