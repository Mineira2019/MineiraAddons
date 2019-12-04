-- CADENA DE REPUTACIÓN PARA HIJOS DE HODIR.
-- LaunchURL(AUTH_NO_TIME_URL);
--  GlueDialog_Show("RESET_SERVER_SETTINGS");
 
GMGenie.QuestOpciones = {
 {"|TInterface/GossipFrame/AvailableQuestIcon:10:10|t Appear donde ",1,1},
 {"|TInterface/GossipFrame/ActiveQuestIcon:10:10|t Appear donde ",1,1},
 {"|TInterface/GossipFrame/BattleMasterGossipIcon:10:10|tCrear Objeto Necesario",1,1},
};

GMGenie.QuestMisionNotas = {
[1] = {"Tienes que matar a un crocolisto cercano y tendrás que encontrar a un Oráculo Hablalluvia herido, estará en la orilla del río justo al norte de la colina."},
[2] = {"Necesitas utilizar el Objeto: Cuerno de caza de Zepik, e invocar a Zepik."},
[3] = {"Necesitas utilizar el Objeto: Bolsa de bichos de Lafoo, e invocar a Lafoo."},
[4] = {"Necesitas utilizar el Objeto: Bola antiestrés de Moodle, e invocar a Moodle."},
[5] = {"La Filacteria de Artruis Aparece una vez completada la misión. Al tomar la misión la carga de un héroe la cueva que se encuentra a la derecha del Pilar Sangrevida y al fondo encontraremos a Artruis, en este caso mataremos a Artruis el Sin Corazón; pero cuando tenga poca vida descongelará a  Zepik el Cazador de górlocs y a Jaloot; a quien matemos nos quedará la reputación en Odiado, Entregaremos la misión en la filacteria de Artruis."},
[6] = {"La cadena se inicia con la facción de Corazón frenetico."},
[7] = {"Ya Puedes Comprar Las Monturas de Esa Facción."},
};
GMGenie.QuestCategorias = {
 {"Reputación",				1}, 
 {"Clase",					2}, 
 {"Profesión",				3}, 
 {"Monturas y otros...",	4}, 
};

GMGenie.CategoriaTabla = { 
 {"Caballeros de la Espada de Ébano","MageFrost",									1,1,false,nil,nil,nil,nil,nil,nil,"achievement_reputation_knightsoftheebonblade"},
 {"Los hijos de Hodir","MageFrost",													1,2,false,nil,nil,nil,nil,nil,nil,"spell_frost_wizardmark"},
 {"Los Oráculos Y Corazón Frenético","ShamanRestoration",							1,3,false,nil,nil,nil,nil,nil,nil,"ability_mount_drake_proto"},
 {"El Torneo Argenta","WarriorArms",												1,4,false,nil,nil,nil,nil,nil,nil,"ability_paladin_artofwar"},
 {"Los Kalu'ak","WarlockCurses",													1,5,false,nil,nil,nil,nil,nil,nil,"achievement_reputation_tuskarr"},
 {"Ala Abisal","DeathKnightUnholy",													1,6,false,nil,nil,nil,nil,nil,nil,"ability_mount_netherdrakepurple"}, 
 {"Campeón De Los Naaru","DruidBalance",											1,7,false,nil,nil,nil,nil,nil,nil,"inv_mace_51"},
 {"Lord Cuervo","WarlockCurses",													1,8,false,nil,nil,nil,nil,nil,nil,"inv-mount_raven_54"},
 {"La Vanguardia Argenta","WarriorArms",											1,9,false,nil,nil,nil,nil,nil,nil,"ability_hunter_aimedshot"},
 {"Tra-la-la-la-Ogri'la","WarlockCurses",											1,10,false,nil,nil,nil,nil,nil,nil,"achievement_worldevent_xmasogre"},
 
 {"Guerrero","WarriorFury",															2,1,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Warrior"},
 {"Paladin","PALADINHOLY",															2,2,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Paladin"},
 {"Cazador","HunterMarksmanship",													2,3,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Hunter"},
 {"Pícaro","RogueSubtlety",															2,4,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Rogue"},
 {"Sacerdote","PriestDiscipline",													2,5,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Priest"},
 {"Caballero de la Muerte","DeathKnightBlood",										2,6,false,nil,nil,nil,nil,nil,nil,"ClassIcon_DeathKnight"},
 {"Chamán","ShamanEnhancement",														2,7,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Shaman"},
 {"Mago","MageArcane",																2,8,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Mage"},
 {"Brujo","WarlockSummoning",														2,9,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Warlock"},
 {"Druida","DruidRestoration",														2,10,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Druid"},
 
 {"Alquimia",nil,																	3,1,true,nil,nil,nil,nil,nil,nil,"trade_alchemy"},
 {"Encantamiento",nil,																3,2,false,nil,nil,nil,nil,nil,nil,"trade_engraving"},
 {"Herrería",nil,																	3,3,false,nil,nil,nil,nil,nil,nil,"INV_Ingot_05"}, 
 {"Ingenieria",nil,																	3,4,true,nil,nil,nil,nil,nil,nil,"inv_misc_wrench_01"},
 {"Inscripción",true,																3,5,false,nil,nil,nil,nil,nil,nil,"INV_Scroll_08"},
 {"Joyería",nil,																	3,6,false,nil,nil,nil,nil,nil,nil,"inv_misc_gem_01"},
 {"Peletería",nil,																	3,7,false,nil,nil,nil,nil,nil,nil,"INV_Misc_LeatherScrap_02"},
 {"Sastrería",nil,																	3,8,true,nil,nil,nil,nil,nil,nil,"INV_Fabric_Felcloth_Ebon"},
 {"Cocina",nil,																		3,9,false,nil,nil,nil,nil,nil,nil,"inv_misc_food_15"},
 {"Primeros Auxilios",nil,															3,10,false,nil,nil,nil,nil,nil,nil,"spell_holy_sealofsacrifice"},
 {"Pesca",nil,																		3,11,false,nil,nil,nil,nil,nil,nil,"trade_fishing"},
 
 {"Sastrería \"Tela lunar\"",false,													116,1,false,nil,nil,3,8,nil,nil,"inv_fabric_moonrag_01"}, 
 {"Sastrería \"Fuego de hechizo\"",false,											116,2,false,nil,nil,3,8,nil,nil,"spell_fire_fire"}, 
 {"Sastrería \"Tejido de sombra\"",false,											116,3,false,nil,nil,3,8,nil,nil,"Tejido de sombra"}, 

 {"Alquimia \"Transmutación\"",false,												115,1,false,nil,nil,3,1,nil,nil,"spell_nature_acid_01"}, 
 {"Alquimia \"Pociones\"",false,													115,2,false,nil,nil,3,1,nil,nil,"inv_potion_24"}, 
 {"Alquimia \"Elixir\"",false,														115,3,false,nil,nil,3,1,nil,nil,"inv_potion_30"}, 
 
 {"Ingeniero Goblin",false,															100,1,false,nil,nil,3,4,nil,nil,"spell_shadow_summonvoidwalker"}, 
 {"Ingeniero Gnomo",false,															100,2,false,nil,nil,3,4,nil,nil,"spell_shadow_summonvoidwalker"}, 
  
 {"Domar Pet para Enano",false,														114,1,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_bear"}, 
 {"Domar Pet para Elfo de la noche",false,											114,2,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_cat"}, 
 {"Domar Pet para Draenei",false,													114,3,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_wasp"}, 
 {"Domar Pet para Orco",false,														114,4,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_boar"}, 
 {"Domar Pet para Troll",false,														114,5,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_raptor"}, 
 {"Domar Pet para Tauren",false,													114,6,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_tallstrider"}, 
 {"Domar Pet para Elfo de sangre",false,											114,7,false,nil,nil,2,3,nil,nil,"ability_hunter_pet_dragonhawk"}, 

 {"Act. Rabiosa/Interceptar",true,													111,1,false,nil,nil,2,1,nil,nil,"ability_racial_avatar"},
 {"Act. Defensiva/Hender Armadura/Provocar",true,									111,2,false,nil,nil,2,1,nil,nil,"ability_warrior_defensivestance"},
 
 {"Actitudes dps para Humano","WarriorFury",										112,1,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para Enano","WarriorFury",											112,2,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para para Gnomo","WarriorFury",									112,3,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para Elfo de la noche","WarriorFury",								112,4,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para Draenei","WarriorFury",										112,5,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para No Muerto","WarriorFury",										112,6,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para Orco","WarriorFury",											112,7,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para Tauren","WarriorFury",										112,8,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 {"Actitudes dps para Troll","WarriorFury",											112,9,false,nil,nil,111,1,2,1,"ability_racial_avatar"},
 
 {"Actitudes tanque para Humano",nil,												113,1,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Enano",nil,												113,2,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Gnomo",nil,												113,3,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Elfo de la noche",nil,										113,4,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Draenei",nil,												113,5,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para No Muerto",nil,											113,6,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Orco",nil,													113,7,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Tauren",nil,												113,8,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 {"Actitudes tanque para Troll",nil,												113,9,false,nil,nil,111,2,2,1,"ability_warrior_defensivestance"},
 
 {"Paladín para Humano",false,														110,1,false,nil,nil,2,2,nil,nil,"ClassIcon_Paladin"}, 
 {"Paladín para Enano",false,														110,2,false,nil,nil,2,2,nil,nil,"ClassIcon_Paladin"}, 
 {"Paladín para Draenei",false,														110,3,false,nil,nil,2,2,nil,nil,"ClassIcon_Paladin"}, 
 {"Paladín para Elfo de Sangre",false,												110,4,false,nil,nil,2,2,nil,nil,"ClassIcon_Paladin"}, 
  
 {"Totem de Tierra",true,															105,1,false,nil,nil,2,7,nil,nil,"inv_relics_totemofrebirth"},
 {"Totem de Aire",true,																105,2,false,nil,nil,2,7,nil,nil,"inv_relics_totemofrebirth"},
 {"Totem de Agua",true,																105,3,false,nil,nil,2,7,nil,nil,"inv_relics_totemofrebirth"},
 {"Totem de Fuego",true,															105,4,false,nil,nil,2,7,nil,nil,"inv_relics_totemofrebirth"},
 
 {"Totem de Tierra para Draenei",nil,												106,1,false,nil,nil,105,1,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Tierra para Orco",nil,													106,2,false,nil,nil,105,1,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Tierra para Troll",nil,													106,3,false,nil,nil,105,1,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Tierra para Tauren",nil,												106,4,false,nil,nil,105,1,2,7,"inv_relics_totemofrebirth"},
 
 {"Totem de Aire para Draenei",nil,													107,1,false,nil,nil,105,2,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Aire para Orco",nil,													107,2,false,nil,nil,105,2,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Aire para Troll",nil,													107,3,false,nil,nil,105,2,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Aire para Tauren",nil,													107,4,false,nil,nil,105,2,2,7,"inv_relics_totemofrebirth"},
 
 {"Totem de Agua para Draenei",nil,													108,1,false,nil,nil,105,3,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Agua para Orco",nil,													108,2,false,nil,nil,105,3,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Agua para Troll",nil,													108,3,false,nil,nil,105,3,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Agua para Tauren",nil,													108,4,false,nil,nil,105,3,2,7,"inv_relics_totemofrebirth"},
 
 {"Totem de Fuego para Draenei",nil,												109,1,false,nil,nil,105,4,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Fuego para Orco",nil,													109,2,false,nil,nil,105,4,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Fuego para Troll",nil,													109,3,false,nil,nil,105,4,2,7,"inv_relics_totemofrebirth"},
 {"Totem de Fuego para Tauren",nil,													109,4,false,nil,nil,105,4,2,7,"inv_relics_totemofrebirth"},
 
 {"Abisario",true,																	101,1,false,nil,nil,2,9,nil,nil,"spell_shadow_summonvoidwalker"},
 {"Manáfago",true,																	101,2,false,nil,nil,2,9,nil,nil,"spell_shadow_summonfelhunter"},
 {"Súcubo",true,																	101,3,false,nil,nil,2,9,nil,nil,"spell_shadow_summonsuccubus"},
 
 {"Abisario para Humanos",nil,														102,1,false,nil,nil,101,1,2,9,"INV_Ingot_05"},
 {"Abisario para Gnomos",nil,														102,2,false,nil,nil,101,1,2,9,"INV_Ingot_05"},
 {"Abisario para Orco",nil,															102,3,false,nil,nil,101,1,2,9,"INV_Ingot_05"},
 {"Abisario para No-Muerto",nil,													102,4,false,nil,nil,101,1,2,9,"INV_Ingot_05"},
 {"Abisario para Elfo de sangre",nil,												102,5,false,nil,nil,101,1,2,9,"INV_Ingot_05"},
 
 {"Manáfago para Humanos",nil,														103,1,false,nil,nil,101,2,2,9,"INV_Ingot_05"},
 {"Manáfago para Gnomos",nil,														103,2,false,nil,nil,101,2,2,9,"INV_Ingot_05"},
 {"Manáfago para Orco",nil,															103,3,false,nil,nil,101,2,2,9,"INV_Ingot_05"},
 {"Manáfago para No-Muerto",nil,													103,4,false,nil,nil,101,2,2,9,"INV_Ingot_05"},
 {"Manáfago para Elfo de sangre",nil,												103,5,false,nil,nil,101,2,2,9,"INV_Ingot_05"},
 
 {"Súcubo para Humano",nil,															104,1,false,nil,nil,101,3,2,9,"INV_Ingot_05"},
 {"Súcubo para Gnomo",nil,															104,2,false,nil,nil,101,3,2,9,"INV_Ingot_05"},
 {"Súcubo para Orco",nil,															104,3,false,nil,nil,101,3,2,9,"INV_Ingot_05"},
 {"Súcubo para No-Muerto",nil,														104,4,false,nil,nil,101,3,2,9,"INV_Ingot_05"},
 {"Súcubo para Elfo de sangre",nil,													104,5,false,nil,nil,101,3,2,9,"INV_Ingot_05"},
 
 {"Quel'Delar",nil,																	4,1,false,nil,nil,nil,nil,nil,nil,"inv_sword_155"},
 {"Draco Ala Abisal","DeathKnightUnholy",											4,2,false,1,6,nil,nil,nil,nil,"ability_mount_netherdrakepurple"},
 {"Oso polar blanco","DeathKnightUnholy",											4,3,false,nil,nil,nil,nil,nil,nil,"ability_mount_polarbear_white"},
};


GMGenie.MisionesTabla = {    
-- Oso polar blanco
-- ===========================================================================================================================================================================
 {"¡Se llevaron a nuestros hombres!",				12843,"Neutro",								3,1,4,nil,29473,29473,nil,nil,nil},
 {"Ningún goblin se queda atrás",					12846,"Neutro",								3,2,4,nil,29473,29481,nil,nil,nil},
 {"El trato de la vieja bruja",						12841,"Neutro",								3,3,4,nil,29975,29975,nil,nil,nil},
 {"Mildred la Cruel",								12905,"Neutro",								3,4,4,nil,29975,29885,nil,nil,nil},
 {"Disciplina",										12906,"Neutro",								3,5,4,nil,29885,29885,nil,nil,nil},
 {"Castigos ejemplares",							12907,"Neutro",								3,6,4,nil,29885,29885,nil,nil,nil},
 {"Un prisionero concreto",							12908,"Neutro",								3,7,4,nil,29885,29975,nil,nil,nil},
 {"Un cambio de escenario",							12921,"Neutro",								3,8,4,nil,29975,29975,nil,nil,nil},
 {"¿Es ese tu goblin?",								12969,"Neutro",								3,9,4,nil,29975,29975,nil,nil,nil},
 {"El Encuentro hyldnir",							12970,"Neutro",								3,10,4,nil,29975,29975,nil,nil,nil},
 {"Enfrentarse a todos los retos",					12971,"Neutro",								3,11,4,nil,29975,29975,nil,nil,nil},
 {"Necesitarás un oso",								12972,"Neutro",								3,12,4,nil,29975,29592,nil,nil,nil},
 {"A lomos de la osa",								12851,"Neutro",								3,13,4,nil,29592,29592,nil,nil,nil},
 {"Corazón helado",									12856,"Neutro",								3,14,4,nil,29592,29592,nil,nil,nil},
 {"Demostrar el valor",								13063,"Neutro",								3,15,4,nil,29592,29839,nil,nil,nil},
 {"Hacer un arnés",									12900,"Neutro",								3,16,4,nil,29839,29839,nil,nil,nil},
 {"La última de su raza",							12983,"Neutro",								3,17,4,nil,29839,29839,nil,nil,nil},
 {"El calentamiento",								12996,"Neutro",								3,18,4,nil,29839,29839,nil,nil,nil},
 {"Al foso",										12997,"Neutro",								3,19,4,nil,29839,29839,nil,nil,nil},
 {"Prepárate para la gloria",						13061,"Neutro",								3,20,4,nil,29839,29975,nil,nil,nil},
 {"El regalo de despedida de Lok'lira",				13062,"Neutro",								3,21,4,nil,29975,29796,nil,nil,nil},
 {nil,												12886,"Neutro",								3,22,4,nil,29796,29445,nil,nil,nil},
 {nil,												13422,"Neutro",								3,23,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},
 {nil,												13425,"Neutro",								3,24,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},
 {nil,												13423,"Neutro",								3,25,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},
 {nil,												13424,"Neutro",								3,26,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},

-- CADENA DE MISIONES PARA ESPECIALIDADES EN PROFESIONES

-- ===========================================================================================================================================================================

-- ESPECIALIDAD DE SASTRERÍA

-- Sastrería con tela lunar

{"Convertirse en un sastre de tela lunar",			10831,"Neutro",								1,1,116,nil,22208,22208,nil,nil,"El npc esta en Shattrath"},

-- Sastrería con fuego de hechizo

{"Convertirse en un sastre de fuego de hechizo",	10832,"Neutro",								2,1,116,nil,22213,22213,nil,nil,"El npc esta en Shattrath"},

-- Sastrería con tejido de sombra

{"Convertirse en un sastre de tejido de sombra",	10833,"Neutro",								3,1,116,nil,22212,22212,nil,nil,"El npc esta en Shattrath"},

-- ===========================================================================================================================================================================

-- ESPECIALIDAD DE ALQUIMIA

-- TRANSMUTACIÓN

{"Maestro de transmutación",						10907,"Alianza",							1,1,115,nil,18802,22427,nil,nil,"El alquimista Gribble esta en Bastión del honor en Península de fuego"},
{"Maestro de transmutación",						10907,"Horda",								1,2,115,nil,16588,22427,nil,nil,"El boticario Antonivich esta en Trallmar Península de Fuego"},
{"Maestro de transmutación",						10899,"Neutro",								1,3,115,nil,22427,22427,nil,nil,"Zarevhi esta en tormenta abisal"},

-- POCIONES

{"Maestro en pociones",								10905,"Alianza",							2,1,115,nil,18802,17909,nil,nil,"El alquimista Gribble esta en Bastión del honor en Península de fuego"},
{"Maestro en pociones",								10905,"Horda",								2,2,115,nil,16588,17909,nil,nil,"El boticario Antonivich esta en Trallmar Península de Fuego"},
{"Maestro en pociones",								10897,"Neutro",								2,3,115,nil,17909,17909,nil,nil,"Lauranna esta en marisma de zangar"}, 

-- ELIXIRES

{"Maestro en elixires",								10906,"Alianza",							3,1,115,nil,18802,19052,nil,nil,"El alquimista Gribble esta en Bastión del honor en Península de fuego"},
{"Maestro en elixires",								10906,"Horda",								3,2,115,nil,16588,19052,nil,nil,"El boticario Antonivich esta en Trallmar Península de Fuego"},
{"Maestro en elixires",								10902,"Neutro",								3,3,115,nil,19052,19052,nil,nil,"El npc esta en Shattrath"},

-- =======================================================================================================================================================================

-- ESPECIALIDAD DE INGENIERÍA

-- INGENIERÍA GOBLIN

{"Ingeniería goblin",								3633,"Neutro",								1,1,100,nil,3494,8126,nil,nil,"Manitas de oro se encuentra en el Trinquete"},
{"Muestra tu trabajo",								3639,"Neutro",								1,2,100,nil,8126,8126,nil,nil,nil}, 
 
-- INGENIERÍA GNÓMICA

{"Ingeniería gnómica",								3632,"Alianza",								2,1,100,nil,3494,7944,nil,nil,"Manitas de oro se encuentra en el Trinquete"},
{"Muestra tu trabajo",								3641,"Alianza",								2,2,100,nil,7944,7944,nil,nil,"El esquema de mira de precisión se puede obtener en el npc Mazk Tirocertero 2685 que esta en bahia de botín"}, 
{"Ingeniería gnómica",								3637,"Horda",								2,3,100,nil,4586,7406,nil,nil,"El npc que inicia la misión esta en Entrañas"},
{"Muestra tu trabajo",								3643,"Horda",								2,4,100,nil,7406,7406,nil,nil,"El esquema de mira de precisión se puede obtener en el npc Mazk Tirocertero 2685 que esta en bahia de botín"}, 
 
-- ======================================================================================================================================================

-- CADENA PARA CAZADOR

-- CADENA PARA DOMESTICAR BESTIA / ALIMENTAR MASCOTA / REVIVIR MASCOTA / RETIRAR MASCOTA

-- CADENA PARA ENANOS

{"El camino del cazador",							6074,"Alianza",								1,1,114,nil,5117,1231,nil,nil,"Disponible a nivel 10"}, 
{"Domesticar la bestia",							6064,"Alianza",								1,2,114,nil,1231,1231,nil,nil,nil},
{"Domesticar la bestia",							6084,"Alianza",								1,3,114,nil,1231,1231,nil,nil,nil},
{"Domesticar la bestia",							6085,"Alianza",								1,4,114,nil,1231,1231,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Domesticar la bestia",							6086,"Alianza",								1,5,114,nil,1231,10090,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- CADENA PARA ELFO DE LA NOCHE

{"El camino del cazador",							6071,"Alianza",								2,1,114,nil,3596,3601,nil,nil,"Disponible a nivel 10"},
{"Domesticar la bestia",							6063,"Alianza",								2,2,114,nil,3601,3601,nil,nil,nil},
{"Domesticar la bestia",							6101,"Alianza",								2,3,114,nil,3601,3601,nil,nil,nil},
{"Domesticar la bestia",							6102,"Alianza",								2,4,114,nil,3601,3601,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Domesticar la bestia",							6103,"Alianza",								2,5,114,nil,3601,4146,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- CADENA PARA DRAENEI

{"La cazadora quella Arconocturno",					9757,"Alianza",								3,1,114,nil,17110,17614,nil,nil,"Disponible a nivel 10"},
{"Domesticar la bestia",							9591,"Alianza",								3,2,114,nil,17614,17614,nil,nil,nil},
{"Domesticar la bestia",							9592,"Alianza",								3,3,114,nil,17614,17614,nil,nil,nil},
{"Domesticar la bestia",							9593,"Alianza",								3,4,114,nil,17614,17614,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Doma de bestias",									9675,"Alianza",								3,5,114,nil,17614,16712,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- CADENA PARA ORCO

{"El camino del cazador",							6070,"Horda",								4,1,114,nil,3407,3171,nil,nil,"Disponible a nivel 10"},
{"Domesticar la bestia",							6062,"Horda",								4,2,114,nil,3171,3171,nil,nil,nil},
{"Domesticar la bestia",							6083,"Horda",								4,3,114,nil,3171,3171,nil,nil,nil},
{"Domesticar la bestia",							6082,"Horda",								4,4,114,nil,3171,3171,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Domesticar la bestia",							6081,"Horda",								4,5,114,nil,3171,3352,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- CADENA PARA TROL

{"El camino del cazador",							6069,"Horda",								5,1,114,nil,3171,3171,nil,nil,"Disponible a nivel 10"},
{"Domesticar la bestia",							6062,"Horda",								5,2,114,nil,3171,3171,nil,nil,nil},
{"Domesticar la bestia",							6083,"Horda",								5,3,114,nil,3171,3171,nil,nil,nil},
{"Domesticar la bestia",							6082,"Horda",								5,4,114,nil,3171,3171,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Domesticar la bestia",							6081,"Horda",								5,5,114,nil,3171,3352,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- CADENA PARA TAUREN

{"El camino del cazador",							6066,"Horda",								6,1,114,nil,3038,3065,nil,nil,"Disponible a nivel 10"},
{"Domesticar la bestia",							6061,"Horda",								6,2,114,nil,3065,3065,nil,nil,nil},
{"Domesticar la bestia",							6087,"Horda",								6,3,114,nil,3065,3065,nil,nil,nil},
{"Domesticar la bestia",							6088,"Horda",								6,4,114,nil,3065,3065,nil,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Domesticar la bestia",							6089,"Horda",								6,5,114,nil,3065,3039,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- CADENA PARA ELFOS DE SANGRE

{"Busca a los errantes",							9617,"Horda",								7,1,114,nil,16271,15399,nil,nil,"Disponible a nivel 10"},
{"Domesticar la bestia",							9484,"Horda",								7,2,114,nil,15399,15399,nil,nil,nil},
{"Domesticar la bestia",							9486,"Horda",								7,3,114,nil,15399,15399,nil,nil,nil},
{"Domesticar la bestia",							9485,"Horda",								7,4,114,nil,15399,15399,nil,nil,"Aprenderas a llamar, domesticar y retirar tu mascota"},
{"Doma de bestias",									9673,"Horda",								7,5,114,nil,15399,16675,nil,nil,"Aprenderas a alimentar y revivir a tu mascota"},

-- ============================================================================================================================================================================
 
-- CADENA DE MISIONES PARA GUERRERO

-- ACTITUD RABIOSA / INTERCEPTAR

-- CADENA PARA HUMANOS 

{"El isleño",										1718,"Alianza",								1,1,112,nil,5479,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Alianza",								1,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA ENANOS

{"El isleño",										1718,"Alianza",								2,1,112,nil,5113,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Alianza",								2,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA GNOMOS

{"El isleño",										1718,"Alianza",								3,1,112,nil,5113,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Alianza",								3,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA ELFOS DE LA NOCHE

{"El isleño",										1718,"Alianza",								4,1,112,nil,7315,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Alianza",								4,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA DRAENEI

{"El isleño",										1718,"Alianza",								5,1,112,nil,5479,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Alianza",								5,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA NO MUERTOS

{"El isleño",										1718,"Horda",								6,1,112,nil,4595,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Horda",								6,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA ORCOS

{"El isleño",										1718,"Horda",								7,1,112,nil,3354,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Horda",								7,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA TAUREN

{"El isleño",										1718,"Horda",								8,1,112,nil,3041,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Horda",								8,2,112,nil,6236,6236,nil,nil,nil},

-- CADENA PARA TROL

{"El isleño",										1718,"Horda",								9,1,112,nil,3354,6236,nil,nil,"Disponible a nivel 30"},
{"La Reyerta",										1719,"Horda",								9,2,112,nil,6236,6236,nil,nil,nil},

-- =============================================================================

-- CADENA DE MISIONES PARA GUERRERO

-- ACTITUD DEFENSIVA / HENDER ARMADURA / PROVOCAR

-- CADENA PARA HUMANOS

{"Instrucción de Guerrero",							1638,"Alianza",								1,1,113,nil,913,5480,nil,nil,"Disponible a nivel 10"},
{"Bartleby, el Borracho",							1639,"Alianza",								1,2,113,nil,6089,6090,nil,nil,nil},
{"Vence a Bartleby",								1640,"Alianza",								1,3,113,nil,6090,6090,nil,nil,nil},
{"La Jarra de Bartleby",							1665,"Alianza",								1,4,113,nil,6090,6089,nil,nil,nil},

-- CADENA PARA ENANOS

{"Muren Pico Tormenta",								1679,"Alianza",								2,1,113,nil,1229,6114,nil,nil,"Disponible a nivel 10"},
{"Vejrek",											1678,"Alianza",								2,2,113,nil,6114,6114,nil,nil,nil},

-- CADENA DE GNOMOS

{"Muren Pico Tormenta",								1679,"Alianza",								3,1,113,nil,1229,6114,nil,nil,"Disponible a nivel 10"},
{"Vejrek",											1678,"Alianza",								3,2,113,nil,6114,6114,nil,nil,nil},

-- CADENA PARA DRAENEI

{"La fuerza de uno solo",							9582,"Alianza",								4,1,113,nil,17480,17480,nil,nil,"Disponible a nivel 10"},

-- CADENA PARA ELFOS DE LA NOCHE

{"Elanaria",										1684,"Alianza",								5,1,113,nil,3598,2151,nil,nil,"Disponible a nivel 10"},
{"Vorlus Pezuñavil",								1683,"Alianza",								5,2,113,nil,4088,4088,nil,nil,nil},

-- CADENA PARA NO MUERTO

{"Habla con Dillinger",								1818,"Horda",								6,1,113,nil,2131,1496,nil,nil,"Disponible a nivel 10"},
{"Ulag el cuchilla",								1819,"Horda",								6,2,113,nil,1496,1496,nil,nil,nil},

-- CADENA PARA ORCOS

{"Uzzek, el veterano",								1505,"Horda",								7,1,113,nil,3169,3063,nil,nil,"Disponible a nivel 10"},
{"Camino de defensa",								1498,"Horda",								7,2,113,nil,5810,5810,nil,nil,nil},

-- CADENA PARA TROL

{"Uzzek, el veterano",								1505,"Horda",								8,1,113,nil,3169,3063,nil,nil,"Disponible a nivel 10"},
{"Camino de defensa",								1498,"Horda",								8,2,113,nil,5810,5810,nil,nil,nil},

-- CADENA PARA TAUREN

{"Uzzek, el veterano",  							1505,"Horda",9,								1,113,nil,3169,3063,nil,nil,"Disponible a nivel 10"},
{"Camino de defensa",   							1498,"Horda",9,								2,113,nil,5810,5810,nil,nil,nil},

-- ===========================================================================================================================================================================================================================================================

-- CADENA DE MISIONES PARA PALADIN

-- REDENCIÓN HUMANOS
  

};
