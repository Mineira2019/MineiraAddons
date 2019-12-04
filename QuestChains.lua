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
-- {"Pícaro","RogueSubtlety",															2,4,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Rogue"},
-- {"Sacerdote","PriestDiscipline",													2,5,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Priest"},
 {"Caballero de la Muerte","DeathKnightBlood",										2,6,false,nil,nil,nil,nil,nil,nil,"ClassIcon_DeathKnight"},
 {"Chamán","ShamanEnhancement",														2,7,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Shaman"},
-- {"Mago","MageArcane",																2,8,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Mage"},
 {"Brujo","WarlockSummoning",														2,9,true,nil,nil,nil,nil,nil,nil,"ClassIcon_Warlock"},
-- {"Druida","DruidRestoration",														2,10,false,nil,nil,nil,nil,nil,nil,"ClassIcon_Druid"},
 
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

 {nil,												12886,"Neutro",								3,1,4,nil,29796,29445,nil,nil,"Al completar esta Misión podras tener acceso a las Diarias"},
 {nil,												13422,"Neutro",								3,2,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},
 {nil,												13425,"Neutro",								3,3,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},
 {nil,												13423,"Neutro",								3,4,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},
 {nil,												13424,"Neutro",								3,5,4,"-1",29796,29796,nil,nil,"La Recompensa \"Botín Hyldnir\" tiene 3% de Lotear La montura"},

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
 
{"Escrito sobre divinidad",							2998,"Alianza",								1,1,110,nil,927,6171,nil,nil,nil},
{"Escrito sobre divinidad",							1641,"Alianza",								1,2,110,nil,6171,6171,nil,nil,nil},
{"Escrito sobre divinidad",							1642,"Alianza",								1,3,110,6775,"Escrito sobre divinidad",6171,nil,nil,"El item se consigue como recompensa de la misión anterior"},
{"Escrito sobre divinidad",							1643,"Alianza",								1,4,110,nil,6171,6174,nil,nil,nil},
{"Escrito sobre divinidad",							1644,"Alianza",								1,5,110,nil,6174,6174,nil,nil,nil},
{"Escrito sobre divinidad",							1780,"Alianza",								1,6,110,nil,6174,6171,nil,nil,nil},
{"Escrito sobre divinidad",							1781,"Alianza",								1,7,110,nil,6171,6173,nil,nil,"En esta misión te entrega el Símbolo de la vida ID 6866"},
{"Escrito sobre divinidad",							1786,"Alianza",								1,8,110,nil,6173,6172,nil,nil,"En esta misión se tiene que utiliza el Símbolo de vida en el npc"},
{"Escrito sobre divinidad",							1787,"Alianza",								1,9,110,nil,6172,6173,nil,nil,nil},
{"Escrito sobre divinidad",							1788,"Alianza",								1,10,110,nil,6173,6171,nil,nil,"Al completar la misión aprenderás Redención."},

-- REDENCIÓN ENANOS

{"Escrito sobre divinidad",							2997,"Alianza",								2,1,110,nil,1232,6179,nil,nil,nil},
{"Escrito sobre divinidad",							1645,"Alianza",								2,2,110,nil,6179,6179,nil,nil,nil},
{"Escrito sobre divinidad",							1646,"Alianza",								2,3,110,6916,"Escrito sobre divinidad",6179,nil,nil,"El item se consigue como recompensa de la misión anterior"},
{"Escrito sobre divinidad",							1647,"Alianza",								2,4,110,nil,6179,6179,nil,nil,nil},
{"Escrito sobre divinidad",							1648,"Alianza",								2,5,110,nil,6175,6175,nil,nil,nil},
{"Escrito sobre divinidad",							1778,"Alianza",								2,5,110,nil,6175,6179,nil,nil,nil},
{"Escrito sobre divinidad",							1779,"Alianza",								2,7,110,nil,6179,6178,nil,nil,"En esta misión te entrega el Símbolo de la vida ID 6866"},
{"Escrito sobre divinidad",							1783,"Alianza",								2,8,110,nil,6178,6177,nil,nil,"En esta misión se tiene que utiliza el Símbolo de vida en el npc"},
{"Escrito sobre divinidad",							1784,"Alianza",								2,9,110,nil,6177,6178,nil,nil,nil},
{"Escrito sobre divinidad",							1785,"Alianza",								2,10,110,nil,6178,6179,nil,nil,"Al completar la misión aprenderás Redención."},

-- REDENCIÓN DRAENEI

{"Jol",												10366,"Alianza",							3,1,110,nil,17483,17509,nil,nil,nil},
{"Redención",										9598,"Alianza",								3,2,110,nil,17509,17509,nil,nil,nil},
{"Redención",										9600,"Alianza",								3,3,110,nil,17509,17509,nil,nil,"Al completar la misión aprenderás Redención."},

-- REDENCIÓN ELFO DE SANGRE

{"El llamamiento del Lord caballero Sangrevalor",	9677,"Horda",								4,1,110,nil,16275,17717,nil,nil,nil},
{"La primera prueba",								9678,"Horda",								4,2,110,nil,17717,17717,nil,nil,nil},
{"Un estudio sobre el poder",						9681,"Horda",								4,3,110,nil,17717,17718,nil,nil,nil},
{"Buscando la Luz",									9684,"Horda",								4,4,110,nil,17718,17717,nil,nil,nil},
{"Redimir a los muertos",							9685,"Horda",								4,5,110,nil,17717,17717,nil,nil,nil},

-- ===========================================================================================================================================================================================================================================================

-- ===================== CADENA DE MISIONES PARA CHAMAN

-- =========== TOTEM DE TIERRA

-- DRAENEI

{"La llamada de la tierra", 						9449,"Alianza",								1,1,106,nil,17089,17087,nil,nil,nil},
{"La llamada de la tierra", 						9450,"Alianza",								1,2,106,nil,17087,17087,nil,nil,nil},
{"La llamada de la tierra", 						9451,"Alianza",								1,3,106,"-1",17087,17089,nil,nil,nil},

-- CADENA PARA LOS ORCOS

{"La llamada de la tierra",							1516,"Horda",								2,1,106,nil,5887,5887,nil,nil,nil},
{"La llamada de la tierra",							1517,"Horda",								2,2,106,nil,5887,5891,nil,nil,nil},
{"La llamada de la tierra",							1518,"Horda",								2,3,106,"-1",5891,5887,nil,nil,nil},

-- CADENA PARA LOS TROL

{"La llamada de la tierra",							1516,"Horda",								3,1,106,nil,5887,5887,nil,nil,nil},
{"La llamada de la tierra",							1517,"Horda",								3,2,106,nil,5887,5891,nil,nil,nil},
{"La llamada de la tierra",							1518,"Horda",								3,3,106,"-1",5891,5887,nil,nil,nil},

-- CADENA PARA LOS TAUREN

{"La llamada de la tierra",							1519,"Horda",								4,1,106,nil,5888,5888,nil,nil,nil},
{"La llamada de la tierra",							1520,"Horda",								4,2,106,nil,5888,5891,nil,nil,nil},
{"La llamada de la tierra",							1521,"Horda",								4,3,106,"-1",5891,5888,nil,nil,nil},
 
-- =========== TOTEM DE AIRE

-- CADENA PARA LOS DRAENEI

{"La llamada del aire",								9551,"Alianza",								1,1,107,nil,17219,17204,nil,nil,nil},
{"La llamada del aire",								9552,"Alianza",								1,2,107,nil,17204,17431,nil,nil,nil},
{"La llamada del aire",								9553,"Alianza",								1,3,107,nil,17431,17435,nil,nil,nil},
{"La llamada del aire",								9554,"Alianza",								1,4,107,"-1",17435,17204,nil,nil,nil},

-- CADENA DE MISIÓN PARA LOS ORCOS

{"La llamada del aire",								1531,"Horda",								2,1,107,"-1",5892,5905,nil,nil,nil},

-- CADENA DE MISIÓN PARA LOS TROL

{"La llamada del aire",								1531,"Horda",								3,1,107,"-1",5892,5905,nil,nil,nil},

-- CADENA DE MISIÓN PARA LOS TAUREN

{"La llamada del aire",								1532,"Horda",								4,1,107,"-1",5906,5905,nil,nil,nil},
 
-- =========== TOTEM DE AGUA

-- CADENA PARA LOS DRAENEI

{"La llamada del agua",								9500,"Alianza",								1,1,108,nil,17219,17204,nil,nil,nil},
{"La llamada del agua",								9501,"Alianza",								1,2,108,nil,17204,17275,nil,nil,nil},
{"La llamada del agua",								9503,"Alianza",								1,3,108,nil,17275,17275,nil,nil,nil},
{"La llamada del Agua",								9504,"Alianza",								1,4,108,nil,17275,17275,nil,nil,nil},
{"La llamada del agua",								9508,"Alianza",								1,5,108,nil,17275,17275,nil,nil,nil},
{"La llamada del agua",								9509,"Alianza",								1,6,108,"-1",17275,17204,nil,nil,nil},

-- CADENA PARA LOS ORCOS

{"La llamada del agua",								2985,"Horda",								2,1,108,nil,3173,5901,nil,nil,nil},
{"La llamada del agua",								1530,"Horda",								2,2,108,nil,5901,5899,nil,nil,nil},
{"La llamada del agua",								1535,"Horda",								2,3,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								1536,"Horda",								2,4,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								1534,"Horda",								2,5,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								220,"Horda",								2,6,108,nil,5899,5901,nil,nil,nil},
{"La llamada del agua",								63,"Horda",									2,7,108,nil,5901,"Blandón de Siemprefuente",nil,nil,nil}, -- 113791
{"La llamada del agua",								100,"Horda",								2,8,108,nil,"Blandón de Siemprefuente",5895,nil,nil,nil},--113791
{"La llamada del agua",								96,"Horda",									2,9,108,nil,5895,5901,nil,nil,nil},

-- CADENA PARA LOS TROL

{"La llamada del agua",								2985,"Horda",								3,1,108,nil,3173,5901,nil,nil,nil},
{"La llamada del agua",								1530,"Horda",								3,2,108,nil,5901,5899,nil,nil,nil},
{"La llamada del agua",								1535,"Horda",								3,3,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								1536,"Horda",								3,4,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								1534,"Horda",								3,5,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								220,"Horda",								3,6,108,nil,5899,5901,nil,nil,nil},
{"La llamada del agua",								63,"Horda",									3,7,108,nil,5901,"Blandón de Siemprefuente",nil,113791,nil},
{"La llamada del agua",								100,"Horda",								3,8,108,nil,"Blandón de Siemprefuente",5895,113791,5895,nil},
{"La llamada del agua",								96,"Horda",									3,9,108,nil,5895,5901,nil,nil,nil},

-- CADENA PARA LOS TAUREN 

{"La llamada del agua",								2986,"Horda",								4,1,108,nil,3066,5901,nil,nil,nil},
{"La llamada del agua",								1530,"Horda",								4,2,108,nil,5901,5899,nil,nil,nil},
{"La llamada del agua",								1535,"Horda",								4,3,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								1536,"Horda",								4,4,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								1534,"Horda",								4,5,108,nil,5899,5899,nil,nil,nil},
{"La llamada del agua",								220,"Horda",								4,6,108,nil,5899,5901,nil,nil,nil},
{"La llamada del agua",								63,"Horda",									4,7,108,nil,5901,"Blandón de Siemprefuente",nil,nil,nil},
{"La llamada del agua",								100,"Horda",								4,8,108,nil,nil,5895,"Manifestación de agua menor",nil,nil},
{"La llamada del agua",								96,"Horda",									4,9,108,nil,5895,5901,nil,nil,nil},

-- =========== TOTEM DE FUEGO

-- CADENA PARA LOS DRAENEI

{"La llamada del fuego",							9462,"Alianza",								1,1,109,nil,17219,17212,nil,nil,nil},
{"La llamada del fuego",							9464,"Alianza",								1,2,109,nil,17212,17205,nil,nil,nil},
{"La llamada del fuego",							9465,"Alianza",								1,3,109,nil,17205,17205,nil,nil,nil},
{"La llamada del fuego",							9467,"Alianza",								1,4,109,nil,17205,17205,nil,nil,nil},
{"La llamada del fuego",							9468,"Alianza",								1,5,109,nil,17205,17212,nil,nil,nil},
{"La llamada del fuego",							9461,"Alianza",								1,6,109,nil,17212,17468,nil,nil,nil},
{"La llamada del fuego",							9555,"Alianza",								1,7,109,nil,17468,17204,nil,nil,nil},

-- CADENA PARA LOS ORCOS

{"La llamada del fuego",							1522,"Horda",								2,1,109,nil,3173,5907,nil,nil,nil},
{"La llamada del fuego",							1524,"Horda",								2,2,109,nil,5907,5900,nil,nil,nil},
{"La llamada del fuego",							1525,"Horda",								2,3,109,nil,5900,5900,nil,nil,nil},
{"La llamada del fuego",							1526,"Horda",								2,4,109,nil,5900,"Blandón de la Llama Latente",nil,nil,nil},
{"La llamada del fuego",							1527,"Horda",								2,5,109,nil,"Blandón de la Llama Latente",nil,nil,nil,nil},

-- CADENA PARA LOS TROL

{"La llamada del fuego",							1522,"Horda",								3,1,109,nil,3173,5907,nil,nil,nil},
{"La llamada del fuego",							1524,"Horda",								3,2,109,nil,5907,5900,nil,nil,nil},
{"La llamada del fuego",							1525,"Horda",								3,3,109,nil,5900,5900,nil,nil,nil},
{"La llamada del fuego",							1526,"Horda",								3,4,109,nil,5900,"Blandón de la Llama Latente",nil,nil,nil},
{"La llamada del fuego",							1527,"Horda",								3,5,109,nil,"Blandón de la Llama Latente",5907,nil,nil,nil},


-- CADENA PARA LOS TAUREN

{"La llamada del fuego",							1523,"Horda",								4,1,109,nil,3066,5907,nil,nil,nil},
{"La llamada del fuego",							1524,"Horda",								4,2,109,nil,5907,5900,nil,nil,nil},
{"La llamada del fuego",							1525,"Horda",								4,3,109,nil,5900,5900,nil,nil,nil},
{"La llamada del fuego",							1526,"Horda",								4,4,109,nil,5900,"Blandón de la Llama Latente",nil,nil,nil},
{"La llamada del fuego",							1527,"Horda",								4,5,109,nil,"Blandón de la Llama Latente",5907,nil,nil,nil},

-- ==================================================================================================================================================

-- CADENA DE MISIONES PARA SACAR EL SÚCUBO

-- CADENA PARA LOS HUMANOS
 
{"La invocación de Gakin",							1717,"Alianza",								1,1,104,nil,6120,6122,nil,nil,nil},
{"Devoradora de almas",								1716,"Alianza",								1,2,104,nil,6122,6244,nil,nil,nil},
{"Duramen",											1738,"Alianza",								1,3,104,nil,6244,6122,nil,nil,nil},
{"El vínculo",										1739,"Alianza",								1,4,104,nil,6122,6122,nil,nil,nil},

-- CADENA PARA LOS GNOMOS

{"La invocación de Gakin",							1717,"Alianza",								2,1,104,nil,6120,6122,nil,nil,nil},
{"Devoradora de almas",								1716,"Alianza",								2,2,104,nil,6122,6244,nil,nil,nil},
{"Duramen",											1738,"Alianza",								2,3,104,nil,6244,6122,nil,nil,nil},
{"El vínculo",										1739,"Alianza",								2,4,104,nil,6122,6122,nil,nil,nil},
-- CADENA PARA LOS ORCOS


{"Devoradora de Almas",								1507,"Horda",								3,1,104,nil,5875,5909,nil,nil,nil},
{"Cazul, el ciego",									1508,"Horda",								3,2,104,nil,5909,5910,nil,nil,nil},
{"Noticias de Dogran",								1509,"Horda",								3,3,104,nil,5910,3464,nil,nil,nil},
{"Noticias de Dogran",								1510,"Horda",								3,4,104,nil,3464,4197,nil,nil,nil},
{"Jarabe de quen\'zigla",							1511,"Horda",								3,5,104,6624,4197,5911,nil,nil,nil},
{"El cautiverio de Dogran",							1515,"Horda",								3,6,104,6624,5911,5908,nil,nil,nil},
{"Un regalo de amor",								1512,"Horda",								3,7,104,6625,5908,5875,nil,nil,nil},
{"El vínculo",										1513,"Horda",								3,8,104,nil,5875,5875,nil,nil,nil},

-- CADENA PARA LOS NO - MUERTOS

{"Cita con Carendin",								10605,"Horda",								4,1,104,nil,16646,5675,nil,nil,nil},
{"Devoradora de Almas",								1472,"Horda",								4,2,104,nil,5675,5693,nil,nil,nil},
{"Corazones puros",									1476,"Horda",								4,3,104,nil,5693,5675,nil,nil,nil},
{"El vínculo",										1474,"Horda",								4,4,104,nil,5675,5675,nil,nil,nil},

-- CADENA PARA ELFOS DE SANGRE

{"Cita con Carendin", 								10605,"Horda",								5,1,104,nil,16646,5675,nil,nil,nil},
{"Devoradora de Almas", 							1472,"Horda",								5,2,104,nil,5675,5693,nil,nil,nil},
{"Corazones puros",									1476,"Horda",								5,3,104,nil,5693,5675,nil,nil,nil},
{"El vínculo",										1474,"Horda",								5,4,104,nil,5675,5675,nil,nil,nil},

-- ========================================================================================================================================

-- CADENA DE MISIONES PARA SACAR EL MANÁFAGO

-- CADENA PARA LOS HUMANOS

{"Buscando a Strahad",								1798,"Alianza",								1,1,103,nil,6122,6251,nil,nil,nil},
{"Libro del conciliábulo",							1758,"Alianza",								1,2,103,nil,6251,6294,nil,nil,nil},
{"Libro del conciliábulo",							1802,"Alianza",								1,3,103,nil,6294,6294,nil,nil,nil},
{"Libro del conciliábulo",							1804,"Alianza",								1,4,103,nil,6294,6251,nil,nil,nil},
{"El vínculo",										1795,"Alianza",								1,5,103,nil,6251,6251,nil,nil,nil},
	
-- CADENA PARA GNOMO

{"Buscando a Strahad",								1798,"Alianza",								2,1,103,nil,6122,6251,nil,nil,nil},
{"Libro del conciliábulo",							1758,"Alianza",								2,2,103,nil,6251,6294,nil,nil,nil},
{"Libro del conciliábulo",							1802,"Alianza",								2,3,103,nil,6294,6294,nil,nil,nil},
{"Libro del conciliábulo",							1804,"Alianza",								2,4,103,nil,6294,6251,nil,nil,nil},
{"El vínculo",										1795,"Alianza",								2,5,103,nil,6251,6251,nil,nil,nil},

-- CADENA PARA LOS ORCOS

{"Buscando a Strahad",								2996,"Horda",								3,1,103,nil,5875,6251,nil,nil,nil},
{"Libro del conciliábulo",							1801,"Horda",								3,2,103,nil,6251,6293,nil,nil,nil},
{"Libro del conciliábulo",							1803,"Horda",								3,3,103,nil,6293,6293,nil,nil,nil},
{"Libro del conciliábulo",							1805,"Horda",								3,4,103,nil,6293,6251,nil,nil,nil},
{"El vínculo",										1795,"Horda",								3,5,103,nil,6251,6251,nil,nil,nil},

-- CADENA PARA LOS NO - MUERTOS

{"Buscando a Strahad",								3001,"Horda",								4,1,103,nil,5675,6251,nil,nil,nil},
{"Libro del conciliábulo",							1801,"Horda",								4,2,103,nil,6251,6293,nil,nil,nil},
{"Libro del conciliábulo",							1803,"Horda",								4,3,103,nil,6293,6293,nil,nil,nil},
{"Libro del conciliábulo",							1805,"Horda",								4,4,103,nil,6293,6251,nil,nil,nil},
{"El vínculo",										1795,"Horda",								4,5,103,nil,6251,6251,nil,nil,nil},

-- CADENA PARA LOS ELFOS DE SANGRE

{"Buscando a Strahad",								2996,"Horda",								5,1,103,nil,5875,6251,nil,nil,nil},
{"Libro del conciliábulo",							1801,"Horda",								5,2,103,nil,6251,6293,nil,nil,nil},
{"Libro del conciliábulo",							1803,"Horda",								5,3,103,nil,6293,6293,nil,nil,nil},
{"Libro del conciliábulo",							1805,"Horda",								5,4,103,nil,6293,6251,nil,nil,nil},
{"El vínculo",										1795,"Horda",								5,5,103,nil,6251,6251,nil,nil,nil},

-- ===========================================================================================================================================

-- CADENA DE MISIONES PARA LOS CABALLEROS DE LA MUERTE - DK
 {nil,												12593,"Neutro",								6,1,2,nil,25462,28357,nil,nil,nil}, 
 {nil,												12619,"Neutro",								6,2,2,nil,28357,28357,nil,nil,"Al completar esta misión el Caballero de la Muerte recibe el Hechizo \"Forja de Runas\" Que le permite al jugador forjar sus armas para siempre"}, 
 {nil,												12842,"Neutro",								6,3,2,nil,28357,28357,nil,nil,nil}, 
 {nil,												12848,"Neutro",								6,4,2,nil,28357,28357,nil,nil,nil}, 
 {nil,												12636,"Neutro",								6,5,2,nil,28357,25462,nil,nil,nil}, 
 {nil,												12641,"Neutro",								6,6,2,nil,25462,25462,nil,nil,nil}, 
 {nil,												12657,"Neutro",								6,7,2,nil,25462,28444,nil,nil,nil}, 
 {nil,												12850,"Neutro",								6,8,2,nil,28444,28510,nil,nil,nil}, 
 {nil,												12670,"Neutro",								6,9,2,nil,28510,28377,nil,nil,nil}, 
 {nil,												12678,"Neutro",								6,10,2,nil,28377,28377,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12680,"Neutro",								6,11,2,nil,28653,28653,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12687,"Neutro",								6,12,2,nil,28653,28653,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento y aprenderas la montura de clase \"Destrero de la Muerte\""}, 
 {nil,												12733,"Neutro",								6,13,2,nil,29047,29047,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12711,"Neutro",								6,14,2,nil,nil,nil,nil,nil,"La Misión se Reclama directamente, Solo debes encontrar el Buzón Cerca de los Cruzados ( Aparece en todas las Fases )"}, 
 {nil,												12679,"Neutro",								6,15,2,nil,28647,28647,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12697,"Neutro",								6,16,2,nil,28377,28658,nil,nil,nil}, 
 {nil,												12700,"Neutro",								6,17,2,nil,28658,28377,nil,nil,nil}, 
 {nil,												12701,"Neutro",								6,18,2,nil,28377,28377,nil,nil,nil}, 
 {nil,												12706,"Neutro",								6,19,2,nil,28377,28444,nil,nil,"Al Completar esta misión recibirás como recompensa 3 punto de talento"}, 
 {nil,												12714,"Neutro",								6,20,2,nil,28444,28907,nil,nil,nil}, 
 {nil,												12849,"Neutro",								6,21,2,nil,28472,28472,nil,nil,nil}, 
 {nil,												12715,"Neutro",								6,22,2,nil,28907,28911,nil,nil,nil}, 
 {nil,												12716,"Neutro",								6,23,2,nil,28919,28919,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12717,"Neutro",								6,24,2,nil,28919,28919,nil,nil,nil}, 
 {nil,												12718,"Neutro",								6,25,2,nil,nil,nil,nil,nil,"Esta misión repetible la puedes tomar en en el caldero"}, 
 {nil,												12719,"Neutro",								6,26,2,nil,28911,28911,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12722,"Neutro",								6,27,2,nil,28910,28910,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12720,"Neutro",								6,28,2,nil,28911,28911,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12723,"Neutro",								6,29,2,nil,28911,28914,nil,nil,nil}, 
 {nil,												12724,"Neutro",								6,30,2,nil,28914,28914,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12725,"Neutro",								6,31,2,nil,28913,28912,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12727,"Neutro",								6,32,2,nil,28912,28913,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12738,"Neutro",								6,33,2,nil,28913,29053,nil,nil,nil}, 
 {nil,												12742,"Neutro",								6,34,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12743,"Neutro",								6,35,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12744,"Neutro",								6,36,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12745,"Neutro",								6,37,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12746,"Neutro",								6,38,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12747,"Neutro",								6,39,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12748,"Neutro",								6,40,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12749,"Neutro",								6,41,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12750,"Neutro",								6,42,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12739,"Neutro",								6,43,2,nil,29053,29053,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12751,"Neutro",								6,44,2,nil,29053,28913,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12754,"Neutro",								6,45,2,nil,28914,28914,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12755,"Neutro",								6,46,2,nil,28914,29077,nil,nil,"Al Completar esta misión recibirás como recompensa 2 punto de talento"}, 
 {nil,												12756,"Neutro",								6,47,2,nil,29077,28914,nil,nil,"Al Completar esta misión recibirás como recompensa 1 punto de talento"}, 
 {nil,												12757,"Neutro",								6,48,2,nil,28914,28444,nil,nil,"Al Completar esta misión recibirás como recompensa 3 punto de talento"}, 
 {nil,												12778,"Neutro",								6,49,2,nil,28444,29110,nil,nil,nil}, 
 {nil,												12779,"Neutro",								6,50,2,nil,29110,29110,nil,nil,"Al Completar esta misión recibirás como recompensa 6 punto de talento"}, 
 {nil,												12800,"Neutro",								6,51,2,nil,29110,31082,nil,nil,nil}, 
 {nil,												12801,"Neutro",								6,52,2,nil,31082,29173,nil,nil,"Esta misión puede presentar problema por el eventual, tiene la opción de autocompletable, se tiene que abandonar la misión |n-ReTomarla |n-Hablar con el NPC Alto señor Darion Mograine y seleccionar la opción |n-No deseo iniciar el eventual para que la autocomplete"}, 
 {nil,												13165,"Neutro",								6,53,2,nil,29173,31084,nil,nil,nil}, 
 {nil,												13166,"Neutro",								6,54,2,nil,31084,31084,nil,nil,nil}, 
 {nil,												13188,"Neutro",								6,55,2,nil,31084,29611,nil,nil,nil}, 
 {nil,												13189,"Neutro",								6,56,2,nil,31084,4949,nil,nil,nil}, 


-- CADENA DE MISIONES PARA ESPADA DE ÉBANO 

-- Necesito un texto por aca - "Los NPC que inician esta misión estan duplicados en zonas de corona de hielo, es necesario que se los envie al foro de Aura, ya que esta cadena contiene videos de cada una para realizarla."
 
 {"Pura Diversión",									12892,"Horda",								1,1,1,nil,29795,29804,nil,nil,nil}, 
 {"Pura Diversión",									12887,"Alianza",							1,2,1,nil,29799,29804,nil,nil,nil}, 
 {"Tengo una idea",									12891,"Neutro",								1,3,1,nil,29804,29804,nil,nil,nil}, 
 {"Libera tu mente",								12893,"Neutro",								1,4,1,nil,29804,29804,nil,nil,nil},
 {"Si no puede ser transformado",					12896,"Alianza",							1,5,1,nil,29804,29804,nil,nil,nil}, 
 {"Si no puede ser transformado",					12897,"Horda",								1,6,1,nil,29804,29804,nil,nil,nil}, 
 {"La cámara de las sombras",						12898,"Alianza",							1,7,1,nil,29799,29804,nil,nil,nil}, 
 {"La cámara de las sombras",						12899,"Horda",								1,8,1,nil,29795,29804,nil,nil,nil}, 
 {"El Duque",										12938,"Neutro",								1,9,1,nil,29343,30002,nil,nil,nil}, 
 {"Desafío de honor",								12939,"Neutro",								1,10,1,nil,30002,30002,nil,nil,nil}, 
 {"Decreto de La Cámara de las Sombras",			12943,"Neutro",								1,11,1,nil,30002,30002,nil,nil,nil},
 
-- CADENA DE MISIONES PARA ESPADA DE ÉBANO 

 {"¡Se llevaron a nuestros hombres!",				12843,"Neutro",								2,1,1,nil,29473,29473,nil,nil,nil},
 {"Ningún goblin se queda atrás",					12846,"Neutro",								2,2,1,nil,29473,29975,nil,nil,nil},
 {"El trato de la vieja bruja",						12841,"Neutro",								2,3,1,nil,29975,29975,nil,nil,nil},
 {nil,												12905,"Neutro",								2,4,1,nil,29975,29885,nil,nil,nil},
 {"Disciplina",										12906,"Neutro",								2,5,1,nil,29885,29885,nil,nil,nil},
 {"Castigos ejemplares",							12907,"Neutro",								2,6,1,nil,29885,29885,nil,nil,nil},
 {"Un prisionero concreto",							12908,"Neutro",								2,7,1,nil,29885,29975,nil,nil,nil},
 {"Un cambio de escenario",							12921,"Neutro",								2,8,1,nil,29975,29975,nil,nil,nil},
 {"¿Es ese tu goblin?",								12969,"Neutro",								2,9,1,nil,29975,29975,nil,nil,nil},
 {"El Encuentro hyldnir",							12970,"Neutro",								2,10,1,nil,29975,29975,nil,nil,nil},
 {"Enfrentarse a todos los retos",					12971,"Neutro",								2,11,1,nil,29975,29975,nil,nil,nil},
 {"Necesitarás un oso",								12972,"Neutro",								2,12,1,nil,29975,29592,nil,nil,nil},
 {"A lomos de la osa",								12851,"Neutro",								2,13,1,nil,29592,29592,nil,nil,nil},
 {"Corazón helado",									12856,"Neutro",								2,14,1,nil,29592,29592,nil,nil,nil},
 {"Demostrar el valor",								13063,"Neutro",								2,15,1,nil,29592,29839,nil,nil,nil},
 {"Hacer un arnés",									12900,"Neutro",								2,16,1,nil,29839,29839,nil,nil,nil},
 {"La última de su raza",							12983,"Neutro",								2,17,1,nil,29839,29839,nil,nil,nil},
 {"El calentamiento",								12996,"Neutro",								2,18,1,nil,29839,29839,nil,nil,nil},
 {"Al foso",										12997,"Neutro",								2,19,1,nil,29839,29839,nil,nil,nil},
 {"Prepárate para la gloria",						13061,"Neutro",								2,20,1,nil,29839,29975,nil,nil,nil},
 {"El regalo de despedida de Lok'lira",				13062,"Neutro",								2,21,1,nil,29975,29796,nil,nil,nil},
 {"El drakkensryd",									12886,"Neutro",								2,22,1,nil,29796,"Thorim",104990,97128,nil},
 {"Rivalidad fraternal",							13064,"Neutro",								2,23,1,nil,"Thorim","Thorim",97128,97128,nil},
 {"Enmiendas",										12915,"Neutro",								2,24,1,nil,"Thorim","Thorim",97128,97128,nil},

-- Necesito un texto por aca - "A partir de esta misión, es necesario conseguir el item Metal cubierto de escoria, para continuar la cadena."  												

 {"El fuego del refinador",							12922,"Neutro",								2,25,41556,"Metal cubierto de escoria","Yunque de Fjorn",nil,nil,nil},
 {"Una chispa de esperanza",						12956,"Neutro",								2,26,1,nil,"Yunque de Fjorn","Thorim",nil,97128,nil},

-- Necesito un texto por aca - "Al tomar la misión de forjando una alianza, ya estara en la fase correcta para ver al NPC que vende los parches. Es necesario tener activa o completa la misión, si el PJ abandona la misión, se movera a otra fase y no podra ver el NPC."
			   --  "Esta misión la entrega Thorim en el templo de las tormentas."	

 {"Forjando una alianza",							12924,"Neutro",								2,27,1,nil,29445,30127,nil,nil,nil},
 {"No tiene pérdida",								12966,"Neutro",								2,28,1,nil,30105,30099,nil,nil,nil},
 {"Luchar contra los elementales",					12967,"Neutro",								2,29,1,nil,30099,30099,nil,nil,nil},

-- Necesito un texto por aca - "Al completar esta misión se puede entregar la de Forjando una alianza, es un requisito terminar las dos misiones anteriores para entregarla."

 {"Un nuevo comienzo",								13009,"Neutro",								2,30,1,nil,30127,29445,nil,nil,nil},
 {"Veranus",										13050,"Neutro",								2,31,1,nil,29445,29445,nil,nil,nil},
 {"Violación territorial",							13051,"Neutro",								2,32,1,nil,29445,29445,nil,nil,nil},

-- Necesito un texto por aca - "Para realizar la misión de Krolmir, es necesario que tengan la reputación en amistoso con Hijos de Hodir y poder terminar el eventual de dicha misión."

 {"Krolmir, el martillo de las tormentas",			13010,"Neutro",								2,33,1,nil,29445,30390,nil,nil,nil},
 {"El bancal de los creadores",						13057,"Neutro",								2,34,1,nil,30390,30295,nil,nil,nil},
 
-- ==========================================================================================================================================
  
-- CADENA DE MISIONES DE LOS ORACULOS Y CORAZÓN FRENETICO
 
-- Necesito un texto por aca - "Inicia la cadena con la facción de Corazón frenetico."

 {"El cazador a tiempo parcial",					12654,"Neutro",								3,1,1,nil,28568,28568,nil,nil,6}, 
 {"Seguir la corriente",							12528,"Neutro",								3,2,1,nil,28095,28082,nil,nil,nil}, 
 {"El esclavo del cazador de monos",				12529,"Neutro",								3,3,1,38619,28082,28082,nil,nil,nil}, 

-- Necesito un texto por aca - "A partir  de esta misión, se necesita el ítem (Grilletes de Goregek) para continuar la cadena, de no tener el item el NPC  Anciano harkek en Corazón frenético repone el item."

 {"Atormentar a los badanudillos",					12530,"Neutro",								3,4,38619,28214,28082,nil,nil,nil}, 
 {"El aprendiz de cazador de avispas",				12533,"Neutro",								3,5,1,nil,28082,28082,nil,nil,nil}, 
 {"La reina Zafiro",								12534,"Neutro",								3,6,1,nil,28138,28082,nil,nil,nil}, 
 {"¡Se dieron a la fuga!",							12532,"Neutro",								3,7,1,nil,28138,28138,nil,nil,nil}, 
 {"La amenaza subterránea",							12531,"Neutro",								3,8,1,nil,28138,28082,nil,nil,nil}, 
 {"Malicia en la creación",							12535,"Neutro",								3,9,1,nil,28082,28082,nil,nil,nil},


-- Necesito un texto por aca - "La siguiente misión se entrega al npc Zepik el Cazador de górlocs que se invoca con el silbato entregado en la anterior misión"
 
 {"Un viaje complicado",							12536,"Neutro",								3,10,1,38512,28082,"Zepik el Cazador de górlocs",nil,nil,2}, 
 {"El rayo golpea dos veces sin duda",				12537,"Neutro",								3,11,1,38512,"Zepik el Cazador de górlocs","Zepik el Cazador de górlocs",nil,nil,2}, 
 {"La bruma no está escuchando",					12538,"Neutro",								3,12,1,38512,"Zepik el Cazador de górlocs","Zepik el Cazador de górlocs",nil,nil,2},
 {"A pata",											12539,"Neutro",								3,13,1,38512,"Zepik el Cazador de górlocs",28082,nil,112691,1}, 

-- Necesito un texto por acá - "Tienes que matar a un crocolisto cercano y tendrás que encontrar a un Oráculo Hablalluvia herido, estará en la orilla del río justo al norte de la colina." 

 {"Siguiendo órdenes",								12540,"Neutro",								3,14,1,nil,28082,"Oráculo Hablalluvia herido",112691,101031,nil},

-- Necesito un texto por aca - "A partir de acá, se realiza la parte de misiones en óraculos."

 {"Malentendidos afortunados",						12570,"Neutro",								3,15,1,nil,"Oráculo Hablalluvia herido",28027,101031,107208,nil},
 {"Haz que se vaya la serpiente mala",				12571,"Neutro",								3,16,1,nil,28027,28027,107208,107208,nil}, 

-- Necesito un texto por aca - "Para la siguiente misión necesitas invocar a Lafoo que se invoca con el item que se entrega en la anterior misión (Bolsa de bichos de lafoo)"

 {"A los dioses les gustan las cosas brillantes",	12572,"Neutro",								3,17,1,38622,nil,28027,nil,nil,3},
 {"Hacer las paces",								12573,"Neutro",								3,18,1,nil,28027,28027,nil,nil,nil},
 {"¿Ya has vuelto?",								12574,"Neutro",								3,19,1,nil,28027,28114,nil,nil,nil}, 
 {"A la fuerza",									12576,"Neutro",								3,20,1,nil,28114,28114,nil,nil,nil}, 
 {"El tesoro Susurraneblina perdido",				12575,"Neutro",								3,21,1,nil,28114,28114,nil,nil,nil}, 
 {"¡Hora de volver a casa!",						12577,"Neutro",								3,22,1,nil,28114,28027,nil,nil,nil}, 
 {"El górloc enfadado",								12578,"Neutro",								3,23,1,38624,28027,"Moodle",nil,nil,4}, 
 {"El salvador de los caminamoho",					12580,"Neutro",								3,24,1,38624,"Moodle","Moodle",nil,nil,4},

-- Necesito un texto por aca - "Al tomar la misión la carga de un héroe la cueva que se encuentra a la derecha del Pilar Sangrevida y al fondo encontraremos a Artruis, en este caso mataremos a Artruis el Sin Corazón; pero cuando tenga poca vida descongelará a  Zepik el Cazador de górlocs y a Jaloot; a quien matemos nos quedará la reputación en Odiado, Entregaremos la misión en la filacteria de Artruis."
--			       "Después dependiendo de quien matemos nos quedará una reputación en odiado y la otra en honorable"

 {"La carga de un héroe",							12581,"Neutro",								3,25,1,nil,"Moodle","Filacteria de Artruis",nil,202971,5}, 

-- Necesito un texto por aca - "Estas misiones son para seleccionar alternar la facción, se pueden repetir siempre que el usuario prefiera"

 {"El retorno del pielseca amistoso",				12695,"Neutro",								3,26,nil,nil,nil,nil,nil,nil}, 
 {"El retorno del cazador de exánimes",				12692,"Neutro",								3,27,nil,nil,nil,nil,nil,nil}, 


-- ===========================================================================================================================


-- CADENA DE MISIONES PARA ALA ABISAL

-- Necesito un texto por acá - "Cadena de misiones para Ala Abisal, es necesario seguir la línea de misiones con la respectiva reputación, pueden subir la reputación con la misión de los huevos que resulta mas facil."

{"Bondad",											10804,"Neutro",								6,1,1,nil,22113,22113,nil,nil,nil},
{"Buscar a Neltharaku",								10811,"Neutro",								6,2,1,nil,22113,21657,nil,nil,nil},
{"La historia de Neltharaku",						10814,"Neutro",								6,3,1,nil,21657,21657,nil,nil,nil},
{"Infiltrarse en la Fortaleza Faucedraco",			10836,"Neutro",								6,4,1,nil,21657,21657,nil,nil,nil},
{"¡Al Arrecife del Ala Abisal!",					10837,"Neutro",								6,5,1,nil,21657,21657,nil,nil,nil},
{"La fuerza de Neltharaku",							10854,"Neutro",								6,6,1,nil,21657,21657,nil,nil,nil},
{"Karynaku",										10858,"Neutro",								6,7,1,nil,21657,22112,nil,nil,nil},
{"Zuluhed el Demente",								10866,"Neutro",								6,8,1,nil,22112,22112,nil,nil,nil},
{"Aliado del Ala Abisal",							10870,"Neutro",								6,9,1,nil,22112,22113,nil,nil,nil},

-- Necesito un texto por acá - "A partir de este lugar la reputación pasa a Neutro, para poder continuar es necesario la Equitación en 300"

{"Juramento de sangre de los Ala Abisal",			11012,"Neutro",								6,10,1,nil,22113,22113,nil,nil,nil},
{"Al servicio de los Illidari",						11013,"Neutro",								6,11,1,nil,2213,23139,nil,nil,nil},
{"Presentación ante el capataz",					11014,"Neutro",								6,12,1,nil,23139,23140,nil,nil,nil},
{"Cristales de Ala Abisal",							11015,"Neutro",								6,13,1,nil,23140,23140,nil,nil,nil},
{"Tu amigo en el interior",							11019,"Neutro",								6,14,1,nil,23141,23141,nil,nil,nil},

-- Necesito un texto por acá - " Al completar esa misión habilita las 2 siguientes que son diarias - Una muerte lenta - Los cielos no tan amistosos..."

{"Una muerte lenta",								11020,"Neutro",								6,15,1,nil,23141,23141,nil,nil,nil},
{"Los cielos no tan amistosos...",					11035,"Neutro",								6,16,1,nil,23141,23141,nil,nil,nil},
{"La gran búsqueda de huevos de Ala Abisal",		11049,"Neutro",								6,17,1,nil,23141,23141,nil,nil,nil},


-- Necesito un texto por acá - "Para tomar la siguiente misión es necesario obtener un item que sueltan los Mob (Arvoar el Rapaz) El item es (Mano parcialmente digerida)"

{"Un trabajo sin terminar...",						11041,"Neutro",								6,18,32621,"Mano parcialmente digerida",23139,nil,nil,nil},

-- Necesito un texto por acá - "Para continuar desde este punto necesitamos ser amistosos con el Ala abisal"


{"¡Levanta, sobrestante!",							11053,"Neutro",								6,19,1,nil,23140,23139,nil,nil,nil},
{"Las Minas del Ala Abisal",						11075,"Neutro",								6,20,1,nil,23140,23149,nil,nil,nil},
{"Recogiendo los pedazos...",						11076,"Neutro",								6,21,1,nil,23149,23149,nil,nil,nil},
{"La supervisión y tú: cómo tomar las decisiones adecuadas",			11054,"Neutro",			6,22,1,nil,23291,23291,nil,nil,nil},
{"El botarang: una cura para el insignificante trabajador común",		11055,"Neutro",			6,23,1,nil,23291,23291,nil,nil,nil},
{"Los dragones son el menor de nuestros problemas",	11077,"Neutro",								6,24,1,nil,23376,23376,nil,nil,nil},
{"Locura y confusión",								11083,"Neutro",								6,25,1,nil,23166,23166,nil,nil,nil},

-- Necesito un texto por acá - "Para tomar la siguiente misión es necesario obtener un item que sueltan los Mob  Sangre Negra de Draenor, dentro del Objeto cubierto de fango, el item es (Planes de fuga de los Sangreoscura)"

{"La gran revuelta Sangreoscura",					11081,"Neutro",								6,26,1,32726,"Planes de fuga de los Sangreoscura",23149,nil,nil,nil},
{"En busca de la verdad",							11082,"Neutro",								6,27,1,nil,"Maestra de las minas","Maestra de las minas",23149,23149,nil},

-- Necesito un texto por acá - "Para continuar desde este punto necesitamos ser Honorables."

{"¡La cabeza bien alta, Capitán!",					11084,"Neutro",								6,28,1,nil,23140,23139,nil,nil,nil},
{"Perturbar el Portal Crepuscular",					11086,"Neutro",								6,29,1,nil,23139,23139,nil,nil,nil},
{"El cañón de almas de Reth'hedron",				11089,"Neutro",								6,30,1,nil,23427,23427,nil,nil,nil},
{"Avasallar al Avasallador",						11090,"Neutro",								6,31,1,nil,23427,23427,nil,nil,nil},
{"Ganándote las alas...",							11063,"Neutro",								6,32,1,nil,22433,22433,nil,nil,nil},

-- Necesito un texto por acá - "Las siguentes misiones de carrera faucedraco, no funcionan correctamente en Aura, son misiones diarias de la cadena, se pueden saltar estas misiones para terminar la cadena."

{"Carrera Faucedraco: la balada del Viejo Viejete",	11064,"Neutro",								6,33,1,nil,23340,22433,nil,nil,nil},
{"Carrera Faucedraco: Trope el Vomitador",			11067,"Neutro",								6,34,1,nil,23342,22433,nil,nil,nil},
{"Carrera Faucedraco: Corlok el Veterano",			11068,"Neutro",								6,35,1,nil,23344,22433,nil,nil,nil},
{"Carrera Faucedraco: Comandante del aire Ichman",	11069,"Neutro",								6,36,1,nil,23345,22433,nil,nil,nil},
{"Carrera Faucedraco: Comandante del aire Mulverick",11070,"Neutro",							6,37,1,nil,23346,22433,nil,nil,nil},
{"Carrera Faucedraco: Capitán Devastador del Cielo",11071,"Neutro",								6,38,1,nil,23348,22433,nil,nil,nil},

-- Necesito un texto por acá - "Para continuar necesitamos ser Venerados."

	
{"¡Saludos, comandante!",							11092,"Neutro",								6,39,1,nil,23140,23139,nil,nil,nil},

-- Necesito un texto por acá - "Para obtener las últimas misiones es necesario tener reputación con los Arauspices o con los Aldor."


{"¡Mátalos a todos!",								11094,"Neutro",								6,40,1,nil,23139,21955,nil,nil,nil},
{"Comandante Hobb",									11095,"Neutro",								6,41,1,nil,21955,23434,nil,nil,nil},
{"La trampa más mortal jamás tendida",				11097,"Neutro",								6,42,1,nil,23452,23139,nil,nil,nil},

-- Necesito un texto por acá - "Al ser exaltado terminamos con estas dos últimas misiones."

{"Inclínate ante el Alto Señor",					11107,"Neutro",								6,43,1,nil,23140,23139,nil,nil,nil},	
{"Lord Illidan Tempestira",							11108,"Neutro",								6,44,1,nil,23139,23433,nil,nil,7},

--========================================================================================================================================================================================

-- CADENA DE MISIONES PARA LOS KALU’AK


-- Necesito un texto por acá - "Inicia la cadena en Tundra Boreal."

{"Recuperar la cantera",							11612,"Neutro",								5,1,1,nil,25292,25292,nil,nil,nil},
{"Impedir que escapen", 							11617,"Neutro",								5,2,1,nil,25292,25292,nil,nil,nil},
{"Una visita al comisario",  						11623,"Neutro",								5,3,1,nil,25292,25292,nil,nil,nil},
{"Homenaje a los ancestros",  						11605,"Neutro",								5,4,1,nil,"Ancestro Atkanok","Ancestro Atkanok","3519.76:5421.07:40.9974:571","3519.76:5421.07:40.9974:571",nil},
{"los espíritus perdidos",  						11607,"Neutro",								5,5,1,nil,"Ancestro Atkanok","Ancestro Atkanok","3519.76:5421.07:40.9974:571","3519.76:5421.07:40.9974:571",nil},
{"Recoger los pedazos",  							11609,"Neutro",								5,6,1,nil,"Ancestro Atkanok","Ancestro Atkanok","3519.76:5421.07:40.9974:571","3519.76:5421.07:40.9974:571",nil},
{"Llevar a los ancestros a casa",  					11610,"Neutro",								5,7,1,nil,"Ancestro Atkanok","Ancestro Atkanok","3519.76:5421.07:40.9974:571","3519.76:5421.07:40.9974:571",nil},
{"Las palabras de un padre",  						11620,"Neutro",								5,8,1,nil,25435,25450,nil,nil,nil},
{"El tridente de Naz'jan",  						11625,"Neutro",								5,9,1,nil,25450,25450,nil,nil,nil},
{"El emisario",  									11626,"Neutro",								5,10,1,nil,25450,25435,nil,nil,nil},
{"Una misión diplomática",  						12141,"Neutro",								5,11,1,nil,25301,25435,nil,nil,nil},
{"¡Encuentra a karuk!",  							11662,"Neutro",								5,12,1,nil,25476,25435,nil,nil,nil},
{"El juramento de Karuk",  							11613,"Neutro",								5,13,1,nil,25435,25435,nil,nil,nil},
{"Gamel el cruel",  								11619,"Neutro",								5,14,1,nil,25435,25435,nil,nil,nil},
{"¡No sin luchar!",  								11949,"Neutro",								5,15,1,nil,26169,26169,nil,nil,nil},
{"La sabiduría de muahit",  						11950,"Neutro",								5,16,1,nil,26169,26218,nil,nil,nil},
{"Los espíritus nos protegen",  					11961,"Neutro",								5,17,1,nil,26218,26218,nil,nil,nil},
{"Las circunstancias cambian",  					11968,"Neutro",								5,18,1,nil,26218,26218,nil,nil,nil},
{"Viaja hasta el puerto Moa'ki",  					12117,"Neutro",								5,19,1,nil,28382,26194,nil,nil,nil},
{"En la niebla", 									11655,"Neutro",								5,20,1,nil,25476,25476,nil,nil,nil},
{"Quema en efigie", 								11656,"Neutro",								5,21,1,nil,25476,25476,nil,nil,nil},
{"El cuerno del viejo marinero", 					11660,"Neutro",								5,22,1,nil,25476,25476,nil,nil,nil},
{"Orabus el timonel", 								11661,"Neutro",								5,23,1,nil,25476,25476,nil,nil,nil},
		
-- Necesito un texto por acá - "A partir de aca la cadena se va a Cementerio de dragones."

{"No dejes que nada se eche a perder", 				11958,"Neutro",								5,24,1,nil,26194,26194,nil,nil,nil},
{"Visión espiritual",  								12028,"Neutro",								5,25,1,nil,26595,26595,nil,nil,nil},
{"El ancestro mana'loa", 							12030,"Neutro",								5,26,1,nil,26595,"Ancestro Mana'loa",nil,"3145.73:1572.03:164.361:571",nil},
{"Libertad para los que padecen",  					12031,"Neutro",								5,27,1,nil,"Ancestro Mana'loa","Ancestro Mana'loa",198419,188419,nil},
{"Conversando con las profundidades", 				12032,"Neutro",								5,28,1,nil,"Ancestro Mana'loa","Toalu'u el Místico",188419,26595,nil},
{"Signos de importantes disturbios acuáticos", 		12011,"Neutro",								5,29,1,nil,"Trampa para cangrejos destrozada",26245,188364,nil,nil},
{"El cebo",  										12016,"Neutro",								5,30,1,nil,26245,26245,nil,nil,nil},
{"Carne en el anzuelo",  							12017,"Neutro",								5,31,1,nil,26245,26245,nil,nil,nil},
{"Trampas de cangrejos de Tua'kea", 				12009,"Neutro",								5,32,1,nil,26245,26245,nil,nil,nil},
		
-- Necesito un texto por acá - " A partir de aca las misiones se realizan en Fiordo Aquilonal."

{"Orfus de komawa", 								11573,"Alianza",							5,33,1,nil,25233,23804,nil,nil,nil},
{"¡Los muertos se levantan!", 						11504,"Neutro",								5,34,1,nil,23804,23804,nil,nil,nil},
{"El ancestro Atuik y komawa",  					11507,"Neutro",								5,35,1,nil,23804,24755,nil,nil,nil},
{"Grezzix morthadellix",							11508,"Neutro",								5,36,1,nil,24755,24643,nil,nil,nil},
{"\"Credibilidad\" callejera", 						11509,"Neutro",								5,37,1,nil,24643,24539,nil,nil,nil},
{"Movidic", 		 								11510,"Neutro",								5,38,1,nil,24539,24539,nil,nil,nil},
{"El bastón de la furia de la tormenta", 			11511,"Neutro",								5,39,1,nil,24539,23804,nil,nil,nil},
{"El corazón congelado de isuldof",  				11512,"Neutro",								5,40,1,nil,24539,23804,nil,nil,nil},
{"El escudo perdido de los Aesirites", 				11519,"Neutro",								5,41,1,nil,24539,24910,nil,nil,nil},

-- Necesito un texto por acá - "La misión de motín de misericordia, presenta falla ya que los npc se caen del barco cuando esta en movimiento, se tiene que esperar el barco en un punto fijo para completar la misión."

{"Motín en el misericordia", 						11527,"Neutro",								5,42,1,nil,24910,24910,nil,nil,nil},
{"El botín de Sorlof",  							11529,"Neutro",								5,43,1,nil,24910,24910,nil,nil,nil},
{"El escudo de los Aesirites",  					11530,"Neutro",								5,44,1,nil,24910,23804,nil,nil,nil},
{"La antigua armadura de los Kvaldir", 				11567,"Neutro",								5,45,1,nil,24539,23804,nil,nil,nil},
{"Volver a descansar en paz",  						11568,"Neutro",								5,46,1,nil,23804,23804,nil,nil,nil},
{"Regresa junto a Atuik", 							11572,"Neutro",								5,47,1,nil,23804,24755,nil,nil,nil},
{"Jabón",  											11469,"Neutro",								5,48,1,nil,24784,24784,nil,nil,nil},
{"Alimentar a los supervivientes", 					11456,"Neutro",								5,49,1,nil,24755,24755,nil,nil,nil},
{"Armar a Komawa",  								11457,"Neutro",								5,50,1,nil,24755,24755,nil,nil,nil},
{"Vengar a Iskaal",  								11458,"Neutro",								5,51,1,nil,24755,24755,nil,nil,nil},

-- =========================================================================================================================================

-- CADENA DE MISIONES PARA CAMPEÓN DE LOS NARUU

-- Necesito un texto por acá - "Nota importante, el logro y el titulo no se pueden obtener, estan desactivados por el tema de la expansión, pero se puede realizar la mayor parte de la cadena."

{"La Mano de Gul'dan", 								10680,"Alianza",							7,1,1,nil,21937,21024,nil,nil,nil},
{"La mano de Gul'Dan", 								10681,"Horda",								7,2,1,nil,21938,21024,nil,nil,nil},
{"Espíritus de fuego y tierra iracundos",			10458,"Neutro",								7,3,1,nil,21024,21024,nil,nil,nil},
{"Espíritus de agua iracundos",  					10480,"Neutro",								7,4,1,nil,21024,21024,nil,nil,nil},
{"Espíritus de aire iracundos", 					10481,"Neutro",								7,5,1,nil,21024,21024,nil,nil,nil},	
{"Oronok Corazón Roto",  							10513,"Neutro",								7,6,1,nil,21024,21183,nil,nil,nil},
{"Yo era muchas cosas...",  						10514,"Neutro",								7,7,1,nil,21183,21183,nil,nil,nil},
{"Una lección aprendida",  							10515,"Neutro",								7,8,1,nil,21183,21183,nil,nil,nil},
{"La Clave de Condenación: historia y verdad",		10519,"Neutro",								7,9,1,nil,21183,21183,nil,nil,nil},

{"Grom'tor, hijo de Oronok",						10521,"Neutro",								7,10,1,nil,21183,21291,nil,nil,nil},
{"La Clave de Condenación: La carga de Grom'tor",	10522,"Neutro",								7,11,1,nil,21291,21291,nil,nil,nil},
{"La Clave de Condenación - Primer trozo recuperado",10523,"Neutro",							7,12,1,nil,21291,21183,nil,nil,nil},

-- Necesito un texto por acá - "Es necesario completar los 3 trozos requisitos para completar la cadena de la condenación, el orden es aleatorio pero se tienen que juntar los tres trozos."

{"Ar'tor, hijo de Oronok", 							10527,"Neutro",								7,13,1,nil,21183,21292,nil,nil,nil},
{"Cárceles de cristal demoníacas", 					10528,"Neutro",								7,14,1,nil,21292,21292,nil,nil,nil},
{"Lohn'goron, arco del corazón roto", 				10537,"Neutro",								7,15,1,nil,21318,21318,nil,nil,nil},
{"La Clave de Condenación. La carga de Ar'tor",		10540,"Neutro",								7,16,1,nil,21318,21318,nil,nil,nil},
{"La Clave de Condenación. Segundo trozo recuperado",10541,"Neutro",							7,17,1,nil,21318,21183,nil,nil,nil},

-- Necesito un texto por acá - "Hasta aca se completo el segundo trozo."

{"Borak, hijo de Oronok", 							10546,"Neutro",								7,18,1,nil,21183,21293,nil,nil,nil},
{"Sobre cabezacardos y huevos...", 					10547,"Neutro",								7,19,1,nil,21293,21411,nil,nil,nil},
{"El fardo de cardos de sangre", 					10550,"Neutro",								7,20,1,nil,21411,21293,nil,nil,nil},
{"Perder la cabeza... por unos cardos", 			10570,"Neutro",								7,21,1,nil,21293,21293,nil,nil,nil},
{"Revuelo en Sombraluna",							10576,"Neutro",								7,22,1,nil,21293,21293,nil,nil,nil},
{"Lo que Illidan quiere, lo consigue...", 			10577,"Neutro",								7,23,1,nil,21293,21293,nil,nil,nil},
{"La Clave de Condenación: La carga de Borak",		10578,"Neutro",								7,24,1,nil,21293,21293,nil,nil,nil},
{"La Clave de Condenación: Tercer trozo recuperado",10579,"Neutro",								7,25,1,nil,21293,21183,nil,nil,nil},

-- Necesito un texto por acá - "A partir de aca se puede obtener la misión de la clave de la condenación, tomar en cuenta que si el Npc no les entrega la misión es porque falta completar lo anterior."
-- Necesito un texto por acá - "La clave de la condenación tiende a bugearse porque dejan el eventual activo y no lo terminan, para ello se tiene que hablar con los Npc mobs que estan al rededor para activarla y completarla."

{"La Clave de Condenación", 						10588,"Neutro",								7,26,1,nil,21183,21024,nil,nil,nil},

-- Necesito un texto por acá - "Estas son las dos últimas misiones con las que se puede obtener el titulo y el logro. Estan desactivadas, por lo que por aca no podran completar misiones."

{"La cayada de Kar'desh", 							10901,"Neutro",								7,27,1,nil,nil,22421,nil,nil,nil},
{"Prueba de los naaru: Magtheridon",				10888,"Neutro",								7,28,1,nil,nil,18481,nil,nil,nil},

-- =================================================================================================================================================================================

-- CADENA DE MISIONES PARA TORNEO ARGENTA


-- Esta cadena de misiones mas la busqueda de facciones toca revisar NO SE COMPLETO YA QUE SE TIENE QUE REALIZAR LA CADENA CON LOS ID CORRECTOS Y LOS DATOS DE LA GUIA ESTAN MAL

{"El torneo argenta",								13667,"Alianza",							4,1,1,nil,33817,33625,nil,nil,nil},
{"El torneo argenta",								13668,"Horda",								4,2,1,nil,33817,33542,nil,nil,nil},
{"Dominio del combate cuerpo a cuerpo",				13828,"Alianza",							4,3,1,nil,33625,33625,nil,nil,nil},
{"Dominio del combate cuerpo a cuerpo",				13829,"Horda",								4,4,1,nil,33542,33542,nil,nil,nil},
--{"Dominio del combate cuerpo a cuerpo",				0,"Neutro",								4,2,1,nil,nil,nil,nil,nil,nil},
--{"Dominio de romper escudo",						0,"Neutro",								4,3,1,nil,nil,nil,nil,nil,nil},
--{"Dominio de cargar",								0,"Neutro",								4,4,1,nil,nil,nil,nil,nil,nil},
--{"A la altura del desafío",							0,"Neutro",								4,5,1,nil,nil,nil,nil,nil,nil},
--{"El desafío del aspirante",						0,"Neutro",								4,6,1,nil,nil,nil,nil,nil,nil},
--{"Valeroso de Lunargenta",							0,"Neutro",								4,7,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Entrañas",							0,"Neutro",								4,8,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Sen'jin",								0,"Neutro",								4,9,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Orgrimmar",							0,"Neutro",								4,10,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de El Exodar",							0,"Neutro",								4,11,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Darnassus",							0,"Neutro",								4,12,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Gnomeregan",							0,"Neutro",								4,13,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Forjaz",								0,"Neutro",								4,14,1,nil,nil,"nil",nil,nil,nil},
--{"Valeroso de Ventormenta",							0,"Neutro",								4,15,1,nil,nil,"nil",nil,nil,nil},
--{"La carga del valeroso",							0,"Neutro",								4,16,1,nil,nil,"nil",nil,nil,nil},			
--{"El desafío del valeroso",							0,"Neutro",								4,17,1,nil,nil,"nil",nil,nil,nil},
--{"Se alza un campeón",								0,"Neutro",								4,18,1,nil,nil,"nil",nil,nil,nil},
--{"Eadric el Puro",									0,"Neutro",								4,19,1,nil,nil,"nil",nil,nil,nil},
--{"El finiquiplaga",									0,"Neutro",								4,20,1,nil,nil,nil,nil,nil,nil},

-- =============================================================================================================================================================================
 
-- CADENA DE MISIONES PARA VANGUARDIA ARGENTA


-- Necesito un texto por acá - "La primer misión es opcional y se toma en dalaran, pueden realizar desde la segunda misión."

{"¡Se acerca el día del Juicio Final!",				13227,"Horda",								9,1,1,nil,31261,28179,nil,nil,nil}, 
{"¡Se acerca el día del Juicio Final!", 			13226,"Alianza",							9,2,1,nil,31259,28179,nil,nil,nil},
 
{"Honor por encima de todo", 						13036,"Neutro",								9,3,1,nil,28179,30223,nil,nil,nil},
{"Tácticas de la plaga", 							13008,"Neutro",								9,4,1,nil,13008,30223,nil,nil,nil},
{"Defender la Vanguardia", 							13039,"Neutro",								9,5,1,nil,30224,30224,nil,nil,nil},
{"Curar lo incurable", 								13040,"Neutro",								9,6,1,nil,30226,30226,nil,nil,nil},
{"Si hay supervivientes...",						13044,"Neutro",								9,7,1,nil,30223,30227,nil,nil,nil},
{"Dentro del gran verdor", 							13045,"Neutro",								9,8,1,nil,30227,28179,nil,nil,nil},
{"Se aproxima un frente frío", 						13070,"Neutro",								9,9,1,nil,28179,30657,nil,nil,nil},
{"La última línea de defensa", 						13086,"Neutro",								9,10,1,nil,30657,30657,nil,nil,nil},
{"Una vez más en la brecha, héroe", 				13104,"Neutro",								9,11,1,nil,30677,30596,nil,nil,nil},
{"La piedra de la plaga", 							13122,"Neutro",								9,12,1,nil,30596,30596,nil,nil,nil},
{"La purga de la ciudad de la plaga",				13118,"Neutro",								9,13,1,nil,30596,30596,nil,nil,nil},
{"Los muertos sin descanso", 						13110,"Neutro",								9,14,1,nil,30683,30683,nil,nil,nil},

-- Necesito un texto por acá - "La misión de el aire permanece quieto, se tiene que matar al elite Sumo sacerdote Yath´amon, sin la ayuda del elite para que cuente de forma normal."

{"El aire permanece quieto",						13125,"Neutro",								9,15,1,nil,30596,30596,nil,nil,nil},
{"La piedra que comenzó una revolución",			13130,"Neutro",								9,16,1,nil,30686,30686,nil,nil,nil},
{"Podría matarnos a todos", 						13135,"Neutro",								9,17,1,nil,30714,30714,nil,nil,nil},
{"Dentro del helado corazón de rasganorte", 		13139,"Neutro",								9,18,1,nil,30683,30677,nil,nil,nil},
{"La batalla por el pináculo de los cruzados",		13141,"Neutro",								9,19,1,nil,30677,30683,nil,nil,nil},
{"El pináculo de los cruzados",						13157,"Neutro",								9,20,1,nil,30683,30677,nil,nil,nil},
{"Un relato de valor", 								13068,"Neutro",								9,21,1,nil,30677,30562,nil,nil,nil},

-- Necesito un texto por acá - "Misiones para la Horda y alianza a continuación en cada barco o en su caso en los npc que se encuentran en la parte de abajo del mapa de corona de hielo."

{"El rompecielos", 									13225,"Alianza",							9,22,1,nil,31241,30344,nil,nil,nil},
{"El Martillo de Orgrim",							13224,"Horda",								9,23,1,nil,31240,30824,nil,nil,nil},
{"Aún queda un héroe", 								13072,"Neutro",								9,24,1,nil,30562,30677,nil,nil,nil},
{"El favor del guardián", 							13073,"Neutro",								9,25,1,nil,30677,11832,nil,nil,nil},
{"Esperanza dentro de la pesadilla esmeralda", 		13074,"Neutro",								9,26,1,nil,11832,11832,nil,nil,nil},
{"El favor de Remulos",								13075,"Neutro",								9,27,1,nil,11832,30562,nil,nil,nil},
{"Aún queda tiempo", 								13076,"Neutro",								9,28,1,nil,30562,30677,nil,nil,nil},
{"El toque de un aspecto", 							13077,"Neutro",								9,29,1,nil,30677,26917,nil,nil,nil},
{"Las lágrimas de Dahlia", 							13078,"Neutro",								9,30,1,nil,26917,26917,nil,nil,nil},
{"El favor de Alexstrasza",							13079,"Neutro",								9,31,1,nil,26917,30562,nil,nil,nil},
{"Aún queda esperanza", 							13080,"Neutro",								9,32,1,nil,30562,30677,nil,nil,nil},
{"La voluntad de los naaru", 						13081,"Neutro",								9,33,1,nil,30677,18481,nil,nil,nil},
{"El favor de A'dal", 								13082,"Neutro",								9,34,1,nil,18481,30562,nil,nil,nil},
{"Luz en las tinieblas", 							13083,"Neutro",								9,35,1,nil,30677,"Posesiones de Bridenbrad",nil,192833,nil},


-- Necesito un texto por acá - "Al terminar la cadena se queda en la fase 1 correcta para no tener problemas."

-- =====================================================================================================================================================================================

{"Habla con el ogro",								10984,"Neutro",								10,1,1,nil,22497,22940,nil,nil,"Al completar la cadena recibiremos las diarias para Ogrila y los logros respectivos de tralala ogrila."},
{"Mog'dorg el Marchito",							10983,"Neutro",								10,2,1,nil,22940,22941,nil,nil,nil},
{"Grulloc tiene dos calaveras",						10995,"Neutro",								10,3,1,nil,22941,22941,nil,nil,nil},
{"La arqueta de maggoc",							10996,"Neutro",								10,4,1,nil,22941,22941,nil,nil,nil},
{"Incluso los gronn tienen confalones",				10997,"Neutro",								10,5,1,nil,22941,22941,nil,nil,nil},
{"Un asunto grimoso",								10998,"Neutro",								10,6,1,nil,22941,22941,nil,nil,nil},
{"Dentro del moledor de almas",						11000,"Neutro",								10,7,1,nil,22941,22941,nil,nil,nil},
{"El cielo de los ogros",							11009,"Neutro",								10,8,1,nil,22941,23233,nil,nil,nil},
{"Una reliquia de ápices",							11058,"Neutro",								10,9,1,nil,23233,23233,nil,nil,"La misión una reliquia de ápices, presenta falla en los portales, es necesario que se use un buff de sacer como levitar, para que tenga la altura necesaria y activar los portales para completarla."},
{"Guardián del monumento",							11059,"Neutro",								10,10,1,nil,23233,23233,nil,nil,nil},
{"La emanación de la reliquia",						11080,"Neutro",								10,11,1,nil,23233,23233,nil,nil,nil},
{"La avanzada de la guardia del cielo",				11062,"Neutro",								10,12,1,nil,23233,23334,nil,nil,nil},
{"¡bomba va!",										11010,"Neutro",								10,13,1,nil,23120,23120,nil,nil,nil},
{"¡bombardéalos de nuevo!",							11023,"Neutro",								10,14,1,nil,23120,23120,nil,nil,"Aca ya se activa la diaria final para el logro y reputación."},
{"La obligación de un padre",						11061,"Neutro",								10,15,1,nil,23316,23316,nil,nil,"Al terminar las dos misiones siguientes, se puede realizar las diarias de ogrila para subir a exaltado."},
{"Un látigo vil para Gahk",							11079,"Neutro",								10,16,1,nil,"Gahk","Gahk",23300,23300,nil},

-- =================================================================================================================================================================

-- CADENA DE MISIONES PARA LORD CUERVO

{nil, 												10955,"Neutro",								8,1,1,nil,12042,22832,nil,nil,"Es necesario tener la equitación en 300 y reputación con el bajo arrabal en honorable"},
{"El resguardo de despertar",						10961,"Neutro",								8,2,1,nil,22832,22832,nil,nil,"Después de conseguir estos objetos, ve a hablar con Morthis Alasusurro, e iniciarás la misión 3."},
{"Despertar al Durmiente",							10964,"Neutro",								8,3,1,nil,22832,22834,nil,nil,"En esta misión debes dar a Clinter Caminasueños la poción que te dio Morthis Alasusurro tras entregarle las plantas que recogiste. Tras darle esta poción, despertará del Sueño Esmeralda, y podrás hablar con él, dándote la misión 4."},
{"Se acabó el sueño",								10965,"Neutro",								8,4,1,nil,22834,22837,nil,nil,"En esta misión debes hablar con Celador de Sueños Lurosa, él te mandará a escoltarle mientras recoge unos objetos. Cuando termine de recogerlos, se completará la misión, habla con él e iniciarás la misión 5."},
{"Regresa junto a Morthis Alasusurro",				10978,"Neutro",								8,5,1,nil,22837,22832,nil,nil,"En esta misión debes entregar a Clinter Caminasueños el objeto que te entregó Lurosa al terminar la misión 4, \"Reliquias de Aviana\". Tras entregárselo, te dará la misión 6."},
{"A Soto Eterno",									10979,"Neutro",								8,6,1,nil,22832,22924,nil,nil,"En esta misión debes hablar con Arthorn. Después de hablar con él, te dará la misión 7."},
{"El Libro del Cuervo",								10980,"Neutro",								8,7,1,nil,22924,22932,nil,nil,"Usa la \"Piedra de Vidente\", que te proporcionó Arthorn, para ver a los fantasmas del culto del cuervo, y encontrar a Sai'Kkal el Anciano"},
{"Ojos en el Cielo",								10986,"Neutro",								8,8,1,nil,22924,22981,nil,nil,"En esta misión debes hablar con Vigía Elaira, que te dará la misión 9"},
{"Atrapar un Gavilán",								10987,"Neutro",								8,9,1,nil,22981,22981,nil,nil,"En esta misión debes atrapar un gavilán, cual puedes encontrarlo por Nagrand. Tras atraparlo, habla de nuevo con Elaira y te dará la misión 10."},
{"Las Piedras del Cuervo",							10988,"Neutro",								8,10,1,nil,22981,22924,nil,nil,"En esta misión debes usar el silbato que te proporciona Elaira, y coger 8 \"Piedras del Cuervo\". Cuando cojas las 8 piedras, completarás la misión, habla con Arthorn, y te dará la misión 11."},
{"La Esencia del Águila",							10990,"Neutro",								8,11,1,nil,22924,23338,nil,nil,"En esta misión debes matar al Guardián del Águila, que te dará una esencia, que completa la misión. Tras completar la misión, usa el silbato que te proporcionaron para entregarla, y este mismo NPC te dará la misión 12."},
{"La Esencia del Halcón",							10992,"Neutro",								8,12,1,nil,23338,23338,nil,nil,"En esta misión debes matar al Guardián del Halcon, que te dará una esencia, que completa la misión. Tras completar la misión, usa el silbato que te proporcionaron para entregarla, y este mismo NPC te dará la misión 13."},
{"La esencia del Falcón",							10991,"Neutro",								8,13,1,nil,23338,22924,nil,nil,"En esta misión debes matar al Guardián del Gavilán, que te dará una esencia, que completa la misión. Tras completar la misión, entrega esta esencia a Arthorn Son del Viento, que te dará la misión 14."},
{"Regresa al Refugio Cenarion",						10993,"Neutro",								8,14,1,nil,22924,22832,nil,nil,"En esta misión debes entregar el \"Paquete de Arthorn\" a Morthis, que te dará la misión 15."},
{"Tras la Piedra Lunar", 							10994,"Neutro",								8,15,1,nil,22832,22832,nil,nil,"En esta misión debes encontrar la \"Piedra de Furia del Sur\", y recogerla, que completará la misión. Entrégale la piedra a Morthis, y te dara la última misión."},
{"Derrota al Dios Cuervo",							11001,"Neutro",								8,16,1,nil,22832,nil,nil,nil,"En esta misión, por fin, podrás matar a Anzu"},

-- ==================================================================================================================================================================

-- CADENA DE MISIONES PARA LA QUEL'DELAR

-- Cadena de la Alianza.

{"La empuñadura maltrecha", 						14443,"Alianza",							1,1,4,50379,"Empuñadura maltrecha",36624,nil,nil,nil},
{"Lo que saben los dragones", 						14444,"Alianza",							1,2,4,nil,36624,36669,nil,nil,nil},
{"El plan de los Atracasol", 						14457,"Alianza",							1,3,4,nil,36669,36669,nil,nil,nil},
{"Un disfraz apropiado", 							20438,"Alianza",							1,4,4,nil,36669,36669,nil,nil,nil},
{"Reunión con el magister", 						20439,"Alianza",							1,5,4,nil,36669,36669,nil,nil,nil},
{"Vuelve con Caladis Lanza Reluciente", 			24454,"Alianza",							1,6,4,nil,36669,36624,nil,nil,nil},
{"Reforjar la espada", 								24461,"Alianza",							1,7,4,nil,36624,36624,nil,nil,nil},
{"Templar la hoja", 								24476,"Alianza",							1,8,4,nil,36624,36624,nil,nil,nil},
{"Las Cámaras de Reflexión", 						24480,"Alianza",							1,9,4,nil,36624,36624,nil,nil,"Si un Pj presenta problema con esta misión se tiene que revisar con un MJ"},
{"Viaje a La Fuente del Sol", 						24522,"Alianza",							1,10,4,nil,36624,37527,nil,nil,nil},
{"Thalorien Buscalba", 								24535,"Alianza",							1,11,4,nil,37527,37527,nil,nil,nil},
{"La purificación de Quel'Delar",					24553,"Alianza",							1,12,4,nil,37527,36624,nil,nil,"El npc que los lleva a la fuente, se encuentra dentro la instancia en la entrada."},

-- Cadena de la Horda.

{"La empuñadura maltrecha", 						24554,"Horda",	1,13,4,50380,"Empuñadura maltrecha","Myralion Resplandor ",nil,36642,nil},
{"Lo que saben los dragones", 						24555,"Horda",	1,14,4,nil,"Myralion Resplandor","Magister Hathorel",36642,36670,nil},
{"El plan de El Pacto de Plata", 					24557,"Horda",	1,15,4,nil,"Magister Hathorel","Magister Hathorel",36670,36670,nil},
{"Un disfraz apropiado", 							24556,"Horda",	1,16,4,nil,"Magister Hathorel","Magister Hathorel",36670,36670,nil},
{"Audiencia con el arcanista", 						24451,"Horda",	1,17,4,nil,"Magister Hathorel","Magister Hathorel",36670,36670,nil},
{"Vuelve con Myralion Resplandor", 					24558,"Horda",	1,18,4,nil,"Magister Hathorel","Myralion Resplandor",36670,36642,nil},
{"Reforjar la espada", 								24559,"Horda",	1,19,4,nil,"Myralion Resplandor","Myralion Resplandor",36642,36642,nil},
{"Templar la hoja", 								24560,"Horda",	1,20,4,nil,"Myralion Resplandor","Myralion Resplandor",36642,36642,nil},
{"Las Cámaras de Reflexión", 						24561,"Horda",	1,21,4,nil,"Myralion Resplandor","Myralion Resplandor",36642,36642,nil},
{"Viaje a La Fuente del Sol", 						24562,"Horda",	1,22,4,nil,"Myralion Resplandor",37527,36642,37527,nil},
{"Thalorien Buscalba", 								24563,"Horda",	1,23,4,nil,37527,37527,37527,37527,nil},
{"La purificación de Quel'Delar",					24564,"Horda",	1,24,4,nil,37527,"Myralion Resplandor",37527,36642,"El npc se encuentra dentro de la instancia, en la entrada."},

{"Una victoria para El Pacto de Plata", 			24796,"Alianza",	1,25,4,nil,36624,"Vereesa Brisaveloz ",36624,30115,"Misión opcional para caster o heler Espadas"},
{"Una victoria para El Pacto de Plata", 			24795,"Alianza",	1,26,4,nil,36624,"Justicar Mariel Corazón Veraz",36624,33817,"Misión opcional para caster o heler Mazas"},
{"Una victoria para los Atracasol", 				24799,"Horda",	1,27,4,nil,"Myralion Resplandor","Justicar Mariel Corazón Veraz",36642,33817,"Misión opcional para caster o heler Mazas"},
{"Una victoria para los Atracasol", 				24801,"Horda",	1,28,4,nil,"Myralion Resplandor","Archimago Aethas Atracasol",36642,30116,"Misión opcional para caster o heler Espadas"},

-- ===================================================================================================================================================================================

-- CLASE BRUJO

-- CADENA DE MISIONES PARA SACAR EL ABISARIO

-- CADENA PARA LOS HUMANOS

{"La invocación de Gakin",			1685,"Alianza",		1,1,102,nil,"Remen Marcot","Gakin el Presotenebra",6121,6122,nil},
{"Surena Caledon",					1688,"Alianza",		1,2,102,nil,"Gakin el Presotenebra ","Gakin el Presotenebra",6122,6122,nil},
{"El vínculo",						1689,"Alianza",		1,3,102,nil,"Gakin el Presotenebra ","Gakin el Presotenebra",6122,6122,nil},

-- CADENA PARA LOS GNOMOS

{"El Cordero Degollado",			1715,"Alianza",		2,1,102,nil,"Yago Llavenegra","Gakin el Presotenebra",6120,6122,nil},
{"Surena Caledon",					1688,"Alianza",		2,2,102,nil,"Gakin el Presotenebra","Gakin el Presotenebra",6122,6122,nil},
{"El vínculo",						1689,"Alianza",		2,3,102,nil,"Gakin el Presotenebra","Gakin el Presotenebra",6122,6122,nil},

-- CADENA PARA LOS ORCOS

{"Las invocaciónes de Gan'rul",		1506,"Horda",		3,1,102,nil,"Ophek","Gan'rul Ojosangre",3294,5875,nil},
{"Criatura Abisal",					1501,"Horda",		3,2,102,nil,"Gan'rul Ojosangre","Gan'rul Ojosangre",5875,5875,nil},
{"El vínculo",						1504,"Horda",		3,3,102,nil,"Gan'rul Ojosangre","Gan'rul Ojosangre",5875,5875,nil},

-- CADENA PARA LOS NO MUERTOS

{"Las invocaciones de Halgar",		1487,"Horda",		4,1,102,nil,"Ageron Kargal","Carendin Halgar",5724,5675,nil},
{"Criatura Abisal",					1473,"Horda",		4,2,102,nil,"Carendin Halgar","Carendin Halgar",5675,5675,nil},
{"El vínculo",						1471,"Horda",		4,3,102,nil,"Carendin Halgar","Carendin Halgar",5675,5675,nil},

-- CADENA PARA LOS ELFOS DE SANGRE

{"Regresa junto a Talionia",		10788,"Horda",		5,13,102,nil,"Carendin Halgar","Gan'rul Ojosangre",5675,5875,"El Npc esta en entrañas"},
{"La piedra",						9529,"Horda",		5,14,102,nil,"Talionia","Piedra del vacío",16647,181698,nil},
{"El vínculo",						9619,"Horda",		5,15,102,23732,"Piedra del vacío","Talionia",181698,16647,"Usa la  Piedra de vacío para invocar a un abisario (ID 5676) en la Aldea de Bruma Dorada, derrótalo, y regresa junto a Talionia en la Ciudad de Lunargenta."},

-- ======================================================================================================================================================


};
