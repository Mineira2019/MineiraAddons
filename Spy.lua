--This file is part of Game Master Genie.
--Copyright 2011-2014 Chocochaos

--Game Master Genie is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.
--Game Master Genie is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
--You should have received a copy of the GNU General Public License along with Game Master Genie. If not, see <http://www.gnu.org/licenses/>.

GMGenie.Spy = {};
GMGenie.Spy.waitingForPin = false;
GMGenie.Spy.pinCache = "";

function GMGenie.Spy.antiCheat(name)
    GMGenie.Spy.spy(name);
    GMGenie.Spy.antiCheatPlayer();
    GMGenie.Hud.toggleVisibility(false);
    GMGenie.Spy.appear();
end



function GMGenie.Spy.lookupquest(name)
	if name and string.len(name) < 1 then
        GMGenie.showGMMessage("Por favor, indique el nombre exacto del grupo de misiones a mirar o escriba help o ayuda para ver mas info");
	elseif name=="help" or name=="ayuda" then
		GMGenie.showGMMessage("Esta función es para hacer un lookup de toda una cadena de misiones (predefinida en el spy.lua se puede editar) y hay que escribrlo TAL CUAL mayusculas, minusculas y acentos");
		GMGenie.showGMMessage("Texto a escribir - información que se obtiene");
		GMGenie.showGMMessage("helpClase - cadenas de clase (invocaciones, totems, spells)");
		GMGenie.showGMMessage("helpReputación - cadenas de repuaciones, facciones");
	elseif name=="helpClase" or name=="ayudaClase" then
		GMGenie.showGMMessage("Mostrando como ver cadenas de clase, recordar que hay que escribrlo TAL CUAL mayusculas, minusculas y acentos");
		GMGenie.showGMMessage("Texto a escribir - Cadena de la que hace lookup");
		GMGenie.showGMMessage("CaballeroDeLaMuerteInicio - Inicio de caballero de la muerte");
		GMGenie.showGMMessage("BrujoManáfago - Invocar manáfago (Brujo)");
		GMGenie.showGMMessage("BrujoSúcuboHumano - Invocar súcubo (Brujo) - Raza Humano");
		GMGenie.showGMMessage("BrujoSúcuboGnomo - Invocar súcubo (Brujo) - Raza Gnomo");
		GMGenie.showGMMessage("BrujoSúcuboOrco - Invocar súcubo (Brujo) - Raza Orco");
		GMGenie.showGMMessage("BrujoSúcuboNo-Muerto - Invocar súcubo (Brujo) - Raza No-Muerto");
		GMGenie.showGMMessage("BrujoSúcuboElfoDeSangre - Invocar súcubo (Brujo) - Raza Elfo de sangre");
		GMGenie.showGMMessage("BrujoSúcuboHumano - Invocar súcubo (Brujo) - Raza Humano");
		GMGenie.showGMMessage("BrujoAbisarioHumano - Invocar abisario (Brujo) - Raza Humano");
		GMGenie.showGMMessage("BrujoAbisarioGnomo - Invocar abisario (Brujo) - Raza Gnomo");
		GMGenie.showGMMessage("BrujoAbisarioOrco - Invocar abisario (Brujo) - Raza Orco");
		GMGenie.showGMMessage("BrujoAbisarioNo-Muerto - Invocar abisario (Brujo) - Raza No-Muert");
		GMGenie.showGMMessage("BrujoAbisarioElfoDeSangre - Invocar abisario (Brujo) - Raza Elfo de sangre");
		GMGenie.showGMMessage("BrujoInferno - Invocar Inferno/Infernal (Brujo)");
		GMGenie.showGMMessage("BrujoFatalidad - Ritual de fatalidad (Brujo)");
		GMGenie.showGMMessage("CazadorDomesticarEnano - Domesticar mascota (Cazador) - Raza Enano");
		GMGenie.showGMMessage("CazadorDomesticarElfoDeLaNoche - Domesticar mascota (Cazador) - Raza Elfo de la noche");
		GMGenie.showGMMessage("CazadorDomesticarOrco - Domesticar mascota (Cazador) - Raza Orco");
		GMGenie.showGMMessage("CazadorDomesticarTrol - Domesticar mascota (Cazador) - Raza Trol");
		GMGenie.showGMMessage("CazadorDomesticarTauren - Domesticar mascota (Cazador) - Raza Tauren");
		GMGenie.showGMMessage("CazadorDomesticarDraenei - Domesticar mascota (Cazador) - Raza Draenei");
		GMGenie.showGMMessage("CazadorDomesticarElfoDeSangre - Domesticar mascota (Cazador) - Raza Elfo de sangre");
		GMGenie.showGMMessage("ChamánTótem - Tótems de Aire, Fuego, Tierra, Agua (Chamán)");
		GMGenie.showGMMessage("DruidaFormaTauren - Forma De oso (Druida) - Raza Tauren");
		GMGenie.showGMMessage("DruidaFormaElfoDeLaNoche - Forma De oso (Druida) - Raza Elfo de la noche");
		GMGenie.showGMMessage("GuerreroRabiosa - Actitud Rabiosa (Guerrero)");
		GMGenie.showGMMessage("GuerreroDefensivaHumano - Actitud Defensiva (Guerrero) - Raza Humano");
		GMGenie.showGMMessage("GuerreroDefensivaGnomo - Actitud Defensiva (Guerrero) - Raza Gnomo");
		GMGenie.showGMMessage("GuerreroDefensivaDraenei - Actitud Defensiva (Guerrero) - Raza Draenei");
		GMGenie.showGMMessage("GuerreroDefensivaElfoDeLaNoche - Actitud Defensiva (Guerrero) - Raza Elfo de la noche");
		GMGenie.showGMMessage("GuerreroDefensivaNo-Muerto - Actitud Defensiva (Guerrero) - Raza No-Muerto");
		GMGenie.showGMMessage("GuerreroDefensivaOrco - Actitud Defensiva (Guerrero) - Raza Orco");
		GMGenie.showGMMessage("GuerreroDefensivaTauren - Actitud Defensiva (Guerrero) - Raza Tauren");
		GMGenie.showGMMessage("GuerreroDefensivaTrol - Actitud Defensiva (Guerrero) - Raza Trol");
		GMGenie.showGMMessage("PaladínRedenciónHumano - Redención (Paladín) - Raza Humano");
		GMGenie.showGMMessage("PaladínRedenciónEnano - Redención (Paladín) - Raza Enano");
		GMGenie.showGMMessage("PaladínRedenciónDraenei - Redención (Paladín) - Raza Draenei");
		GMGenie.showGMMessage("PaladínRedenciónElfoDeSangre - Redención (Paladín) - Raza Elfo de sangre");
		GMGenie.showGMMessage("CadenaBrujoSúcubo - La cadena de todas las clases para el súcubo (Brujo) ");
		GMGenie.showGMMessage("BrujoSúcuboAli - La cadena de todas las clases para el súcubo Alianza (Brujo) ");
		GMGenie.showGMMessage("BrujoSúcuboHorda - La cadena de todas las clases para el súcubo Horda (Brujo) ");
		GMGenie.showGMMessage("BrujoAbisaroAli - La cadena de todas las clases para el Abisario Ali (Brujo) ");
		GMGenie.showGMMessage("BrujoAbisaroHorda - La cadena de todas las clases para el Abisario Horda (Brujo) ");
		GMGenie.showGMMessage("ChamánTótemAli - La cadena de todos los totem para la Ali (Chaman) ");
		GMGenie.showGMMessage("ChamánTótemHorda - La cadena de todos los totem para la Horda (Chaman) ");
		GMGenie.showGMMessage("TótemTierraDraenei - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemAguaDraenei - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemFuegoDraenei - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemFuegoDraenei - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemTierraOrco - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemAguaOrco - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemFuegoOrco - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemAireOrco - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemTierraTauren - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemAguaTauren - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemFuegoTauren - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemAireTauren - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemTierraTrol - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemAguaTrol - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage("TótemFuegoTrol - La cadena de los totem individual por raza(Chaman) ");
		GMGenie.showGMMessage(" TótemAireTrol- La cadena de los totem individual por raza(Chaman) ");
	elseif name=="helpReputación" or name=="ayudaReputación" then
		GMGenie.showGMMessage("Mostrando como ver cadenas de reputación, recordar que hay que escribirlo TAL CUAL mayusculas, minusculas y acentos /lookupquest Texto");
		GMGenie.showGMMessage("Texto a escribir - Cadena de la que hace lookup");
		GMGenie.showGMMessage("CaballerosDeLaEspadaDeÉbano - para ver intendente en cámara de las sombras");
		GMGenie.showGMMessage("HijosDeHodir - Hijos de hodir, para ver intendente en Cumbres tormentosas Dun Niffelem, subir reputación");
		GMGenie.showGMMessage("LosOráculosYCorazónFrenético - para desbloquear las diarias sea de oráculos o de corazón frenético");
		GMGenie.showGMMessage("TorneoArgenta - Logro de campeón exaltado de cada una de sus facciones, y Atracasol o pacto de plata");
		GMGenie.showGMMessage("LosKalu'ak - para desbloquear las diarias de Tundra boreal, cementerio de dragones y fiordo Aquilonal");
		GMGenie.showGMMessage("AlaAbisal - Para revisar la cadena completa de Ala Abisal");
		GMGenie.showGMMessage("CampeónDeLosNaaru - Para revisar la cadena completa de Campeon de los Naaru");
		GMGenie.showGMMessage("MonturaLordCuervo - Es necesario ser Honorable con Bajo arrabal y tener equitacion 280");
		GMGenie.showGMMessage("VanguardiaArgenta - Para revisar la cadena de Vanguardia Argenta");		
		GMGenie.showGMMessage("TralalaOgrila - Para revisar la cadena misiones del logro de navidad Tralala Ogrila");		
	--Cadenas de Clase
	elseif name=="CaballeroDeLaMuerteInicio" then
		GMGenie.showGMMessage("Caballero De La Muerte - Inicio de caballero de la muerte");
		--GMGenie.showGMMessage("Cadena 1");
		SendChatMessage(".lookup quest Al servicio del Rey Exánime", "GUILD");
		SendChatMessage(".lookup quest La hojarruna blasonada", "GUILD");
		SendChatMessage(".lookup quest Forja de runas: preparativos para la batalla", "GUILD");
		SendChatMessage(".lookup quest El hambre sin fin", "GUILD");
		SendChatMessage(".lookup quest La muerte viene de arriba", "GUILD");
		SendChatMessage(".lookup quest El poder de la Plaga", "GUILD");
		SendChatMessage(".lookup quest Preséntate ante el comandante de la Plaga Thalanor", "GUILD");
		SendChatMessage(".lookup quest La cosecha Escarlata", "GUILD");
		SendChatMessage(".lookup quest Cuando llegue el caos, deja que el sufrimiento tome las riendas", "GUILD");
		--GMGenie.showGMMessage("Cadena para la montura");
		SendChatMessage(".lookup quest El gran robo de Palomino", "GUILD");
		SendChatMessage(".lookup quest En el Reino de las Sombras", "GUILD");
		--GMGenie.showGMMessage("Misiones sueltas");
		SendChatMessage(".lookup quest El poder de la sangre, la escarcha y lo profano", "GUILD");
		SendChatMessage(".lookup quest Desafío de la Muerte", "GUILD");
		SendChatMessage(".lookup quest Esta noche cenamos en Villa Refugio", "GUILD");
		SendChatMessage(".lookup quest Mensaje abandonado", "GUILD");
		--GMGenie.showGMMessage("Cadena 2");
		SendChatMessage(".lookup quest Gothik el Cosechador", "GUILD");
		SendChatMessage(".lookup quest La ofrenda que sigue dando", "GUILD");
		SendChatMessage(".lookup quest Un ataque de oportunidad", "GUILD");
		SendChatMessage(".lookup quest Masacre en la Punta de la Luz", "GUILD");
		SendChatMessage(".lookup quest ¡Victoria en la Brecha de la Muerte!", "GUILD");
		SendChatMessage(".lookup quest La voluntad del Rey Exánime", "GUILD");
		SendChatMessage(".lookup quest La Cripta de los Recuerdos", "GUILD");
		SendChatMessage(".lookup quest No hay escapatoria", "GUILD");
		SendChatMessage(".lookup quest Cómo ganar amigos e influenciar a los enemigos", "GUILD");
		--GMGenie.showGMMessage("Misiones sueltas");
		SendChatMessage(".lookup quest La solicitud del Pesteador", "GUILD");
		SendChatMessage(".lookup quest El brebaje especial de Noth", "GUILD");
		SendChatMessage(".lookup quest Corderos al matadero", "GUILD");
		--GMGenie.showGMMessage("Cadena 3");
		SendChatMessage(".lookup quest Detrás de las líneas Escarlata", "GUILD");
		SendChatMessage(".lookup quest El camino del cruzado honrado", "GUILD");
		--GMGenie.showGMMessage("Cadena 4");
		SendChatMessage(".lookup quest Hermanos en la muerte", "GUILD");
		SendChatMessage(".lookup quest Estallido sangriento", "GUILD");
		SendChatMessage(".lookup quest ¡Un grito de venganza!", "GUILD");
		--GMGenie.showGMMessage("Cadena 5");
		SendChatMessage(".lookup quest Una sorpresa especial", "GUILD");
		SendChatMessage(".lookup quest Como volver a casa", "GUILD");
		--GMGenie.showGMMessage("Cadena 6");
		SendChatMessage(".lookup quest Emboscada en el mirador", "GUILD");
		SendChatMessage(".lookup quest Una reunión con el destino", "GUILD");
		SendChatMessage(".lookup quest El Embate Escarlata aparece", "GUILD");
		SendChatMessage(".lookup quest El ejército escarlata se acerca…", "GUILD");
		--GMGenie.showGMMessage("Cadena 7");
		SendChatMessage(".lookup quest El apocalipsis escarlata", "GUILD");
		SendChatMessage(".lookup quest Un final para todas las cosas…", "GUILD");
		SendChatMessage(".lookup quest La orden del Rey Exánime", "GUILD");
		--GMGenie.showGMMessage("Cadena 8");
		SendChatMessage(".lookup quest La luz del alba", "GUILD");
		SendChatMessage(".lookup quest Recuperar Acherus", "GUILD");
		SendChatMessage(".lookup quest La batalla por El Bastión de Ébano", "GUILD");
		--GMGenie.showGMMessage("Cadena 9 - Alianza");
		SendChatMessage(".lookup quest El camino de los reyes", "GUILD");
		--GMGenie.showGMMessage("Cadena 9 - Horda");
		SendChatMessage(".lookup quest La bendición del Jefe de Guerra", "GUILD");
		elseif name=="BrujoManáfagoAli" then
		GMGenie.showGMMessage("Misiones en orden la cadena es la misma para las 2 razas - Disponible a nivel 30");
		GMGenie.showGMMessage("Los ID de misiones desde la Primera Hasta la ùltima para los Humanos/Gnomos");
		GMGenie.showGMMessage("Son 5 misiones ID - 1798 - 1758 - 1802 - 1804 - 1795 ");
		SendChatMessage(".lookup quest Buscando a Strahad", "GUILD");
		SendChatMessage(".lookup quest Libro del conciliábulo", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
		elseif name=="BrujoManáfagoHorda" then
		GMGenie.showGMMessage("Esta cadena de cada raza esta separada por el item de Poción de limpieza sublime para que puedan revisar los ID de misiones correspondientes para la Horda Orco/Elfo de sangre/No Muertos - Disponible a nivel 30");
		GMGenie.showGMMessage("Misiones en orden la cadena es la misma para las 2 razas");
		GMGenie.showGMMessage("Son 5 misioens para los Orcos/Elfos de sangre ID 2996 - 1801 - 1803 - 1805 - 1795 ");
		GMGenie.showGMMessage("Son 5 misiones para los No Muertos ID - 3001 - 1801 - 1803 - 1805 - 1795 ");
		SendChatMessage(".lookup quest Buscando a Strahad", "GUILD");
		SendChatMessage(".lookup quest Libro del conciliábulo", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoSúcuboHumano" or name=="BrujoSúcuboGnomo" then
		GMGenie.showGMMessage("Brujo Súcubo Abajo los ID de las misiones en órden - Raza Humano/Gnomo");
		GMGenie.showGMMessage("Son 4 misiones - 1717 - 1716 - 1738 - 1739");
		SendChatMessage(".lookup quest La invocación de Gakin", "GUILD");
		SendChatMessage(".lookup quest Devoradora de almas", "GUILD");
		SendChatMessage(".lookup quest Duramen", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoSúcuboOrco" then
		GMGenie.showGMMessage("Brujo Súcubo Abajo los ID de las misiones en órden - Raza Orca ");
		GMGenie.showGMMessage("Son 8 misiones ID - 1507 - 1508 - 1509 - 1510 - 1511 - 1515 - 1512 - 1513");
		SendChatMessage(".lookup quest Devoradora de Almas", "GUILD");
		SendChatMessage(".lookup quest Cazul, el ciego", "GUILD");
		SendChatMessage(".lookup quest Noticias de Dogran", "GUILD");
		SendChatMessage(".lookup quest Jarabe de Ken'zigla", "GUILD");
		SendChatMessage(".lookup quest El cautiverio de Dogran", "GUILD");
		SendChatMessage(".lookup quest Un regalo de amor", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoSúcuboNo-Muerto" or name=="BrujoSúcuboElfoDeSangre" then
		GMGenie.showGMMessage("Brujo Súcubo Abajo los ID de las misiones en órden - Raza No-Muerto/Elfo de sangre");
		GMGenie.showGMMessage("Son 4 misiones ID - 10605 - 1472 - 1476 - 1474");
		SendChatMessage(".lookup quest Cita con Carendin", "GUILD");
		SendChatMessage(".lookup quest Devoradora de Almas", "GUILD");
		SendChatMessage(".lookup quest Corazones puros", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisarioHumano" then
		GMGenie.showGMMessage("Brujo Abisario Abajo los ID de las misiones en órden - Raza Humano Requiere nivel 8");
		GMGenie.showGMMessage("Son 3 misiones - 1685 - 1688 - 1689");
		SendChatMessage(".lookup quest La invocación de Gakin", "GUILD");
		SendChatMessage(".lookup quest Surena Caledon", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisarioGnomo" then
		GMGenie.showGMMessage("Brujo Abisario Abajo los ID de las misiones en órden Requiere nivel 8 - Raza Gnomo");
		GMGenie.showGMMessage("Son 3 misiones ID - 1715 - 1688 - 1689");
		SendChatMessage(".lookup quest El Cordero Degollado", "GUILD");
		SendChatMessage(".lookup quest Surena Caledon", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisarioOrco" then
		GMGenie.showGMMessage("Brujo Abisario Abajo los ID de las misiones en órden Requiere nivel 8 - Raza Orco");
		GMGenie.showGMMessage("Son 3 misiones ID - 1506 - 1501 - 1504");
		SendChatMessage(".lookup quest Las invocaciónes de Gan'rul", "GUILD");
		SendChatMessage(".lookup quest Criatura Abisal", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisarioNo-Muerto" then
		GMGenie.showGMMessage("Brujo Abisario Abisario Abajo los ID de las misiones en órden Requiere nivel 8 - Raza No-Muerto");
		GMGenie.showGMMessage("Son 3 misiones ID - 1478 - 1473 - 1471");
		SendChatMessage(".lookup quest Las invocaciones de Halgar", "GUILD");
		SendChatMessage(".lookup quest Criatura Abisal", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisarioElfoDeSangre" then
		GMGenie.showGMMessage("Brujo Abisario - Raza Elfo de Sangre (segunda misión La piedra)");
		GMGenie.showGMMessage("Son 3 misiones ID - 10788 - 9529 - 9619");
		SendChatMessage(".lookup quest Regresa junto a Talionia", "GUILD");
		SendChatMessage(".lookup quest La piedra", "GUILD");
		SendChatMessage(".lookup quest La runa de invocación", "GUILD");
	elseif name=="BrujoSúcuboAli" then
		GMGenie.showGMMessage("Revisar los ID de misiones correspondientes para la Alianza - Humanos - Gnomos - Disponible a nivel 20");
		GMGenie.showGMMessage("Son 4 misiones en orden ID - 1717 - 1716 - 1738 - 1739");
		SendChatMessage(".lookup quest La invocación de Gakin", "GUILD");
		SendChatMessage(".lookup quest Devoradora de almas", "GUILD");
		SendChatMessage(".lookup quest Duramen", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoSúcuboHorda" then
		GMGenie.showGMMessage("Cada cadena de cada raza esta separada por el item de Poción de limpieza sublime para que puedan revisar los ID de misiones correspondientes para la Horda - No Muertos/Elfos de sangre - Orcos - Disponible a nivel 20");
		GMGenie.showGMMessage("Misiones en orden No muertos y elfos de sangre ID - 10605 - 1472 - 1476 - 1474");
		GMGenie.showGMMessage("Misiones en orden Orcos ID - 1507 - 1508 - 1509 - 1510 - 1511 - 1515 - 1512 - 1513");
		SendChatMessage(".lookup quest Cita con Carendin", "GUILD");
		SendChatMessage(".lookup quest Devoradora de Almas", "GUILD");
		SendChatMessage(".lookup quest Corazones puros", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
		SendChatMessage(".lookup Item poción de limpieza sublime", "GUILD");
		SendChatMessage(".lookup quest Devoradora de Almas", "GUILD");
		SendChatMessage(".lookup quest Cazul, el ciego", "GUILD");
		SendChatMessage(".lookup quest Noticias de Dogran", "GUILD");
		SendChatMessage(".lookup quest Jarabe de Ken'zigla", "GUILD");
		SendChatMessage(".lookup quest El cautiverio de Dogran", "GUILD");
		SendChatMessage(".lookup quest Un regalo de amor", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisaroAli" then
		GMGenie.showGMMessage("Cada cadena de cada raza esta separada por el item de Poción de limpieza sublime para que puedan revisar los ID de misiones correspondientes para la Alianza - Humanos - Gnomos - Disponible a nivel 8");
		GMGenie.showGMMessage("Misiones en orden Humanos ID - 1685 - 1688 - 1689");
		GMGenie.showGMMessage("Misiones en orden Gnomos ID - 1715 - 1688 - 1689");
		SendChatMessage(".lookup quest La invocación de Gakin", "GUILD");
		SendChatMessage(".lookup quest Surena Caledon", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
		SendChatMessage(".lookup Item poción de limpieza sublime", "GUILD");
		SendChatMessage(".lookup quest El Cordero Degollado", "GUILD");
		SendChatMessage(".lookup quest Surena Caledon", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
	elseif name=="BrujoAbisaroHorda" then
		GMGenie.showGMMessage("Cada cadena de cada raza esta separada por el item de Poción de limpieza sublime para que puedan revisar los ID de misiones correspondientes para la Horda Orco - No muerto - Elfo de sangre - Disponible a nivel 8");
		GMGenie.showGMMessage("Misiones en orden Orcos ID - 1506 - 1501 - 1504");
		GMGenie.showGMMessage("Misiones en orden No Muertos ID - 1478 - 1473 - 1471");
		GMGenie.showGMMessage("Misiones en orden Elfos de sangre ID - 10788 - 9529 - 9619");
		SendChatMessage(".lookup quest Las invocaciónes de Gan'rul", "GUILD");
		SendChatMessage(".lookup quest Criatura Abisal", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
		SendChatMessage(".lookup Item poción de limpieza sublime", "GUILD");
		SendChatMessage(".lookup quest Las invocaciones de Halgar", "GUILD");
		SendChatMessage(".lookup quest Criatura Abisal", "GUILD");
		SendChatMessage(".lookup quest El vínculo", "GUILD");
		SendChatMessage(".lookup Item poción de limpieza sublime", "GUILD");
		SendChatMessage(".lookup quest Regresa junto a Talionia", "GUILD");
		SendChatMessage(".lookup quest La piedra", "GUILD");
		SendChatMessage(".lookup quest La runa de invocación", "GUILD");
	elseif name=="BrujoInferno" then
		GMGenie.showGMMessage("Brujo Inferno");
		SendChatMessage(".lookup quest La orden de Niby", "GUILD");
		SendChatMessage(".lookup quest Esencia de energía vil pura", "GUILD");
		SendChatMessage(".lookup quest El núcleo infernal de Kroshius", "GUILD");
	elseif name=="BrujoFatalidad" then
		GMGenie.showGMMessage("Brujo Ritual de fatalidad");
		SendChatMessage(".lookup quest Las selladuras de la prisión", "GUILD");
		SendChatMessage(".lookup quest El revestimiento de la prisión", "GUILD");
		SendChatMessage(".lookup quest Supresión", "GUILD");
	elseif name=="TótemTierraDraenei" then
		GMGenie.showGMMessage("Toda la cadena para el totem de tierra en òrden");
		GMGenie.showGMMessage("Son 3 misiones ID - 9449 - 9450 - 9451");
		SendChatMessage(".lookup quest La llamada de la tierra", "GUILD");
	elseif name=="TótemAguaDraenei" then
		GMGenie.showGMMessage("Toda la cadena para el totem de agua en òrden");
		GMGenie.showGMMessage("Son 6 misiones ID - 9500 - 9501 - 9503 - 9504 - 9508 - 9509");
		SendChatMessage(".lookup quest La llamada del agua", "GUILD");
	elseif name=="TótemFuegoDraenei" then
		GMGenie.showGMMessage("Toda la cadena para el totem de fuego en òrden");
		GMGenie.showGMMessage("Son 7 misiones ID - 9462 - 9464 - 9465 - 9467 - 9468 - 9461 - 9555 ");
		SendChatMessage(".lookup quest La llamada del fuego", "GUILD");
	elseif name=="TótemFuegoDraenei" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Aire en òrden");
		GMGenie.showGMMessage("Totem de Aire para Dranei ID - 9551 - 9552 - 9553 - 9554");
		SendChatMessage(".lookup quest La llamada del aire", "GUILD");
	elseif name=="TótemTierraOrco" or name=="TótemTierraTrol" then
		GMGenie.showGMMessage("Toda la cadena para el totem de tierra en òrden");
		GMGenie.showGMMessage("Son 3 misiones ID - 1516 - 1517 - 1518");
		SendChatMessage(".lookup quest La llamada de la tierra", "GUILD");
	elseif name=="TótemAguaOrco" or name=="TótemAguaTrol" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Agua en òrden");
		GMGenie.showGMMessage("Son 9 misiones ID - 2985 - 1530 - 1535 - 1536 - 1534 - 220 - 63 - 100 - 96");
		SendChatMessage(".lookup quest La llamada del agua", "GUILD");
	elseif name=="TótemFuegoOrco" or name=="TótemFuegoTrol" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Fuego en òrden");
		GMGenie.showGMMessage("Totem de Fuego para Orcos y Trol ID - 1522 - 1524 - 1525 - 1526 - 1527");
		SendChatMessage(".lookup quest La llamada del fuego", "GUILD");
	elseif name=="TótemAireOrco" or name=="TótemAireTrol" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Aire en òrden");
		GMGenie.showGMMessage("Solo es una misiòn ID - 1531");
	elseif name=="TótemTierraTauren" then
		GMGenie.showGMMessage("Toda la cadena para el totem de tierra en òrden");
		GMGenie.showGMMessage("Son 3 misiones ID - 1519 - 1520 - 1521");
		SendChatMessage(".lookup quest La llamada de la tierra", "GUILD");
	elseif name=="TótemAguaTauren" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Agua en òrden");
		GMGenie.showGMMessage("Son 9 misiones ID - 2986 - 1530 - 1535 - 1536 - 1534 - 220 - 63 - 100 - 96");
		SendChatMessage(".lookup quest La llamada del agua", "GUILD");
	elseif name=="TótemFuegoTauren" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Fuego en òrden");
		GMGenie.showGMMessage("Totem de Fuego para Tauren ID - 1523 - 1524 - 1525 - 1526 - 1527");
		SendChatMessage(".lookup quest La llamada del fuego", "GUILD");
	elseif name=="TótemAireTauren" then
		GMGenie.showGMMessage("Toda la cadena para el totem de Aire en òrden");
		GMGenie.showGMMessage("Solo es una misiòn ID - 1532");
	elseif name=="ChamánTótemAli" then
		GMGenie.showGMMessage("Chaman totems todas las cadenas para la alianza");
		GMGenie.showGMMessage("Totem de Tierra para Dranei ID - 9449 - 9450 - 9451");
		GMGenie.showGMMessage("Totem de Agua para Dranei ID - 9500 - 9501 - 9503 - 9504 - 9508 - 9509");
		GMGenie.showGMMessage("Totem de Fuego para Dranei ID - 9462 - 9464 - 9465 - 9467 - 9468 - 9461 - 9555 ");
		GMGenie.showGMMessage("Totem de Aire para Dranei ID - 9551 - 9552 - 9553 - 9554");
		SendChatMessage(".lookup quest La llamada de la tierra", "GUILD");
		SendChatMessage(".lookup quest La llamada del agua", "GUILD");
		SendChatMessage(".lookup quest La llamada del fuego", "GUILD");
		SendChatMessage(".lookup quest La llamada del aire", "GUILD");
	elseif name=="ChamánTótemHorda" then
		GMGenie.showGMMessage("Chaman totems todas las cadenas para la Horda");
		GMGenie.showGMMessage("Totem de Tierra para Orcos y Trol ID - 1516 - 1517 - 1518");
		GMGenie.showGMMessage("Totem de Agua para Orcos y Trol ID - 2985 - 1530 - 1535 - 1536 - 1534 - 220 - 63 - 100 - 96");
		GMGenie.showGMMessage("Totem de Fuego para Orcos y Trol ID - 1522 - 1524 - 1525 - 1526 - 1527");
		GMGenie.showGMMessage("Totem de Aire para Orcos y Trol ID - 1531");
		GMGenie.showGMMessage("Chaman totems todas las cadenas para la Horda");
		GMGenie.showGMMessage("Totem de Tierra para Tauren ID - 1519 - 1520 - 1521");
		GMGenie.showGMMessage("Totem de Agua para Tauren ID - 2986 - 1530 - 1535 - 1536 - 1534 - 220 - 63 - 100 - 96");
		GMGenie.showGMMessage("Totem de Fuego para Tauren ID - 1523 - 1524 - 1525 - 1526 - 1527");
		GMGenie.showGMMessage("Totem de Aire para Tauren ID - 1532");
		SendChatMessage(".lookup quest La llamada de la tierra", "GUILD");
		SendChatMessage(".lookup quest La llamada del agua", "GUILD");
		SendChatMessage(".lookup quest La llamada del fuego", "GUILD");
		SendChatMessage(".lookup quest La llamada del aire", "GUILD");
	elseif name=="CazadorDomesticarEnano" or name=="CazadorDomesticarElfoDeLaNoche" or name=="CazadorDomesticarOrco" or name=="CazadorDomesticarTrol" or name=="CazadorDomesticarTauren" then
		GMGenie.showGMMessage("Misiones para domesticar bestia - Raza Enano/Elfo de la noche/Orco/Trol/Tauren - Los ID de cada raza estan aca abajo ");
		GMGenie.showGMMessage("Enanos son 5 misiones hay 3 misiones de la primera a escoger ID - (6074,6075,6076) - 6064 - 6084 - 6085 - 6086");
		GMGenie.showGMMessage("Elfos de la noche son 5 misiones ID - (6071,6072,6073,6721,6722) - 6063 - 6101 - 6102 - 6103 ");
		GMGenie.showGMMessage("Orcos son 5 misiones ID - 9757 - 9591 - 9592 - 9593 - 9675 ");
		GMGenie.showGMMessage("Trol son 5 misiones ID - 6062 - 6083 - 6082 - 6081 ");
		GMGenie.showGMMessage("Tauren son 5 misiones ID - 6065 - 6061 - 6087 - 6088 - 6089");		
		SendChatMessage(".lookup quest El camino del cazador", "GUILD");
		SendChatMessage(".lookup quest Domesticar la bestia", "GUILD");
	elseif name=="CazadorDomesticarElfoDeSangre" then
		GMGenie.showGMMessage("Misiones para domesticar bestia - Raza Elfo de sangre");
		GMGenie.showGMMessage("Son 5 misiones ID - 9617 - 9484 - 9486 - 9485 - 9673");
		SendChatMessage(".lookup quest Busca a los errantes", "GUILD");
		SendChatMessage(".lookup quest Domesticar la bestia", "GUILD");
	elseif name=="CazadorDomesticarDraenei" then
		GMGenie.showGMMessage("Misiones para domesticar bestia - Raza Draenei");
		GMGenie.showGMMessage("Son 5 misiones ID - 9757 - 9591 - 9592 - 9593 - 9675");
		SendChatMessage(".lookup quest La cazadora Kella Arconocturno", "GUILD");
		SendChatMessage(".lookup quest Domesticar la bestia", "GUILD");
	elseif name=="DruidaFormaElfoDeLaNoche" then
		GMGenie.showGMMessage("Druida Cambio de Forma oso - Raza Elfo de la noche");
		SendChatMessage(".lookup quest Escucha la llamada", "GUILD");
		SendChatMessage(".lookup quest Claro de la Luna", "GUILD");
		SendChatMessage(".lookup quest Espíritu del gran oso", "GUILD");
		SendChatMessage(".lookup quest El regreso a Darnassus", "GUILD");
		SendChatMessage(".lookup quest Cuerpo y corazón", "GUILD");
	elseif name=="DruidaFormaTauren" then
		GMGenie.showGMMessage("Druida Cambio de Forma oso - Raza Tauren");
		SendChatMessage(".lookup quest Escucha la llamada", "GUILD");
		SendChatMessage(".lookup quest Claro de la Luna", "GUILD");
		SendChatMessage(".lookup quest Espíritu del gran oso", "GUILD");
		SendChatMessage(".lookup quest Vuelve a Cima del Trueno", "GUILD");
		SendChatMessage(".lookup quest Cuerpo y corazón", "GUILD");
	elseif name=="GuerreroRabiosa" then
		GMGenie.showGMMessage("Obtener la Actitud Rabiosa de Guerrero");
		GMGenie.showGMMessage("Solo son 2 misiones para todas las razas ID 1718 - 1719");
		SendChatMessage(".lookup quest El isleño", "GUILD");
		SendChatMessage(".lookup quest La Reyerta", "GUILD");
	elseif name=="GuerreroDefensivaHumano" then
		GMGenie.showGMMessage("Guerrero Actitud Defensiva - Raza Humano");
		SendChatMessage(".lookup quest Instrucción de Guerrero", "GUILD");
		SendChatMessage(".lookup quest Bartleby, el Borracho", "GUILD");
		SendChatMessage(".lookup quest Vence a Bartleby", "GUILD");
		SendChatMessage(".lookup quest La Jarra de Bartleby", "GUILD");
	elseif name=="GuerreroDefensivaGnomo" then
		GMGenie.showGMMessage("Guerrero Actitud Defensiva - Raza Gnomo");
		SendChatMessage(".lookup quest Muren Pico Tormenta", "GUILD");
		SendChatMessage(".lookup quest Vejrek", "GUILD");
	elseif name=="GuerreroDefensivaDraenei" then
		GMGenie.showGMMessage("Guerrero Actitud Defensiva - Raza Draenei");
		SendChatMessage(".lookup quest La fuerza de uno solo", "GUILD");
	elseif name=="GuerreroDefensivaElfoDeLaNoche" then
		GMGenie.showGMMessage("Guerrero Actitud Defensiva - Raza Elfo de la noche");
		SendChatMessage(".lookup quest Elanaria", "GUILD");
		SendChatMessage(".lookup quest Vorlus Pezuñavil", "GUILD");
	elseif name=="GuerreroDefensivaNo-Muerto" then
		GMGenie.showGMMessage("Guerrero Actitud Defensiva - Raza No-Muerto");
		SendChatMessage(".lookup quest Habla con Dillinger", "GUILD");
		SendChatMessage(".lookup quest Ulag el cuchilla", "GUILD");
	elseif name=="GuerreroDefensivaOrco" or name=="GuerreroDefensivaTrol" or name=="GuerreroDefensivaTauren" then
		GMGenie.showGMMessage("Guerrero Actitud Defensiva - Raza Trol/Orco/Tauren");
		SendChatMessage(".lookup quest Uzzek, el veterano", "GUILD");
		SendChatMessage(".lookup quest Camino de defensa", "GUILD");
	elseif name=="PaladínRedenciónDraenei" then
		GMGenie.showGMMessage("Cadena de misiones para obtener Redención - Raza Draenei");
		SendChatMessage(".lookup quest jol", "GUILD");
		SendChatMessage(".lookup quest Redención", "GUILD");
	elseif name=="PaladínRedenciónElfoDeSangre" then
		GMGenie.showGMMessage("Cadena de misiones para obtener  Redención - Raza Elfo de sangre");
		SendChatMessage(".lookup quest El llamamiento del Lord caballero Sangrevalor", "GUILD");
		SendChatMessage(".lookup quest La primera prueba", "GUILD");
		SendChatMessage(".lookup quest Un estudio sobre el poder", "GUILD");
		SendChatMessage(".lookup quest Buscando la Luz", "GUILD");
		SendChatMessage(".lookup quest Redimir a los muertos", "GUILD");
	elseif name=="PaladínRedenciónHumano" or name=="PaladínRedenciónEnano" then
		GMGenie.showGMMessage("Cadena de misiones para obtener Redención - Raza Humano/Enano");
		GMGenie.showGMMessage("Humano ID - 2998 - 1641 - 1642 - 1643 - 1644 - 1780 - 1781 - 1786 - 1787 - 1788 ");
		GMGenie.showGMMessage("Enano ID - 2997 - 1645 - 1646 - 1647 - 1648 - 1778 - 1779 - 1783 - 1784 - 1785 ");
		SendChatMessage(".lookup quest Escrito sobre divinidad", "GUILD");
	--Cadenas de reputaciones
	elseif name=="CaballerosDeLaEspadaDeÉbano" then
		GMGenie.showGMMessage("Caballeros De La Espada Del Ebano");
		--reputaciones
		SendChatMessage(".lookup faction Caballeros de la espada de Ébano", "GUILD");
		--misiones
		SendChatMessage(".lookup quest Pura Diversión", "GUILD");
		SendChatMessage(".lookup quest Tengo una idea, pero primero", "GUILD");
		SendChatMessage(".lookup quest Libera tu mente", "GUILD");
		SendChatMessage(".lookup quest Si no puede ser transformado", "GUILD");
		SendChatMessage(".lookup quest La cámara de las sombras", "GUILD");
		SendChatMessage(".lookup quest El Duque", "GUILD");
		SendChatMessage(".lookup quest Desafío de honor", "GUILD");
		SendChatMessage(".lookup quest Decreto de La Cámara de las Sombras", "GUILD");
	elseif name=="HijosDeHodir" then
		GMGenie.showGMMessage("Hijos De Hodir");
		--reputaciones
		SendChatMessage(".lookup faction Hijos de hodir", "GUILD");
		--misiones
		--GMGenie.showGMMessage("Cadena 1");
		SendChatMessage(".lookup quest ¡Se llevaron a nuestros hombres!", "GUILD");
		SendChatMessage(".lookup quest Ningún goblin se queda atrás", "GUILD");
		SendChatMessage(".lookup quest El trato de la vieja bruja", "GUILD");
		SendChatMessage(".lookup quest Mildred la Cruel", "GUILD");
		SendChatMessage(".lookup quest Disciplina", "GUILD");
		SendChatMessage(".lookup quest Castigos ejemplares", "GUILD");
		SendChatMessage(".lookup quest Un prisionero concreto", "GUILD");
		SendChatMessage(".lookup quest Un cambio de escenario", "GUILD");
		SendChatMessage(".lookup quest ¿Es ese tu goblin?", "GUILD");
		SendChatMessage(".lookup quest El Encuentro hyldnir", "GUILD");
		SendChatMessage(".lookup quest Enfrentarse a todos los retos", "GUILD");
		SendChatMessage(".lookup quest Necesitarás un oso", "GUILD");
		SendChatMessage(".lookup quest A lomos de la osa", "GUILD");
		SendChatMessage(".lookup quest Corazón helado", "GUILD");
		SendChatMessage(".lookup quest Demostrar el valor", "GUILD");
		SendChatMessage(".lookup quest Hacer un arnés", "GUILD");
		--GMGenie.showGMMessage("Cadena 2");
		SendChatMessage(".lookup quest La última de su raza", "GUILD");
		SendChatMessage(".lookup quest El calentamiento", "GUILD");
		SendChatMessage(".lookup quest Al foso", "GUILD");
		SendChatMessage(".lookup quest Prepárate para la gloria", "GUILD");
		SendChatMessage(".lookup quest El regalo de despedida de Lok'lira", "GUILD");
		SendChatMessage(".lookup quest El drakkensryd", "GUILD");
		SendChatMessage(".lookup quest Rivalidad fraternal", "GUILD");
		--GMGenie.showGMMessage("Cadena 3");
		SendChatMessage(".lookup quest Enmiendas", "GUILD");
		SendChatMessage(".lookup item  metal cubierto de escoria", "GUILD");
		SendChatMessage(".lookup quest El fuego del refinador", "GUILD");
		SendChatMessage(".lookup quest Una chispa de esperanza", "GUILD");
		----GMGenie.showGMMessage("Cadena 4");
		SendChatMessage(".lookup quest Forjando una alianza", "GUILD");
		SendChatMessage(".lookup quest No tiene pérdida", "GUILD");
		SendChatMessage(".lookup quest Luchar contra los elementales", "GUILD");
		SendChatMessage(".lookup quest Un nuevo comienzo", "GUILD");
		SendChatMessage(".lookup quest Veranus", "GUILD");
		SendChatMessage(".lookup quest Violación territorial", "GUILD");
		SendChatMessage(".lookup quest Krolmir, el martillo de las tormentas", "GUILD");
		SendChatMessage(".lookup quest El bancal de los creadores", "GUILD");
	elseif name=="LosOráculosYCorazónFrenético" then
		GMGenie.showGMMessage("Los Oráculos y Corazón Frenético");
		--Reputaciones
		SendChatMessage(".lookup faction Los Oráculos", "GUILD");
		SendChatMessage(".lookup faction Corazón Frenético", "GUILD");
		--misiones
		--GMGenie.showGMMessage("Parte Corazón Frenético");
		SendChatMessage(".lookup quest El cazador a tiempo parcial", "GUILD");
		SendChatMessage(".lookup quest Seguir la corriente", "GUILD");
		SendChatMessage(".lookup quest El esclavo del cazador de monos", "GUILD");
		SendChatMessage(".lookup item  grilletes de goregek", "GUILD");
		SendChatMessage(".lookup quest Atormentar a los badanudillos", "GUILD");
		SendChatMessage(".lookup quest El aprendiz de cazador de avispas", "GUILD");
		SendChatMessage(".lookup quest La reina Zafiro", "GUILD");
		SendChatMessage(".lookup quest ¡Se dieron a la fuga!", "GUILD");
		SendChatMessage(".lookup quest La amenaza subterránea", "GUILD");
		SendChatMessage(".lookup quest Malicia en la creación", "GUILD");
		SendChatMessage(".lookup quest Un viaje complicado", "GUILD");
		SendChatMessage(".lookup quest El rayo golpea dos veces sin duda", "GUILD");
		SendChatMessage(".lookup quest La bruma no está escuchando", "GUILD");
		SendChatMessage(".lookup quest A pata", "GUILD");
		SendChatMessage(".lookup quest Siguiendo órdenes", "GUILD");
		--GMGenie.showGMMessage("Parte Los Óraculos");
		SendChatMessage(".lookup quest Malentendidos afortunados", "GUILD");
		SendChatMessage(".lookup quest Haz que se vaya la serpiente mala", "GUILD");
		SendChatMessage(".lookup quest A los dioses les gustan las cosas brillantes", "GUILD");
		SendChatMessage(".lookup quest Hacer las paces", "GUILD");
		SendChatMessage(".lookup quest ¿Ya has vuelto?", "GUILD");
		SendChatMessage(".lookup quest A la fuerza", "GUILD");
		SendChatMessage(".lookup quest El tesoro Susurraneblina perdido", "GUILD");
		SendChatMessage(".lookup quest ¡Hora de volver a casa!", "GUILD");
		SendChatMessage(".lookup quest El górloc enfadado", "GUILD");
		SendChatMessage(".lookup quest El salvador de los caminamoho", "GUILD");
		SendChatMessage(".lookup quest La carga de un héroe", "GUILD");
		SendChatMessage(".lookup quest El retorno del pielseca amistoso", "GUILD");
		SendChatMessage(".lookup quest El retorno del cazador de exánimes", "GUILD");
	elseif name=="TorneoArgenta" then
		GMGenie.showGMMessage("El torneo argenta - Campeón exaltado de su facción");
		--Reputaciones
		SendChatMessage(".lookup faction Cruzada Argenta", "GUILD");
		SendChatMessage(".lookup faction Lunargenta", "GUILD");
		SendChatMessage(".lookup faction Entrañas", "GUILD");
		SendChatMessage(".lookup faction Cima del trueno", "GUILD");
		SendChatMessage(".lookup faction Sen'jin", "GUILD");
		SendChatMessage(".lookup faction Orgrimmar", "GUILD");
		SendChatMessage(".lookup faction El Exodar", "GUILD");
		SendChatMessage(".lookup faction Darnassus", "GUILD");
		SendChatMessage(".lookup faction Forjaz", "GUILD");
		SendChatMessage(".lookup faction Gnomeregan", "GUILD");
		SendChatMessage(".lookup faction Ventormenta", "GUILD");
		--misiones
		SendChatMessage(".lookup quest El torneo argenta", "GUILD");
		SendChatMessage(".lookup quest Dominio del combate cuerpo a cuerpo", "GUILD");
		SendChatMessage(".lookup quest Dominio de romper escudo", "GUILD");
		SendChatMessage(".lookup quest Dominio de cargar", "GUILD");
		SendChatMessage(".lookup quest A la altura del desafío", "GUILD");
		SendChatMessage(".lookup quest El desafío del aspirante", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Lunargenta", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Entrañas", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Sen'jin", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Orgrimmar", "GUILD");
		SendChatMessage(".lookup quest Valeroso de El Exodar", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Darnassus", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Gnomeregan", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Forjaz", "GUILD");
		SendChatMessage(".lookup quest Valeroso de Ventormenta", "GUILD");
		SendChatMessage(".lookup quest La carga del valeroso", "GUILD");
		SendChatMessage(".lookup quest El desafío del valeroso", "GUILD");
		SendChatMessage(".lookup quest Se alza un campeón", "GUILD");
		SendChatMessage(".lookup quest Eadric el Puro", "GUILD");
		SendChatMessage(".lookup quest El finiquiplaga", "GUILD");
	elseif name=="LosKalu'ak" then
		GMGenie.showGMMessage("Los kalu'ak - Maestro de pesca, sus 3 diarias; misiones de ambas facciones");
		--Reputaciones
		SendChatMessage(".lookup faction Los kalu'ak", "GUILD");
		--misiones
		--GMGenie.showGMMessage("Tundra Boreal");
		SendChatMessage(".lookup quest Recuperar la cantera", "GUILD");
		SendChatMessage(".lookup quest Impedir que escapen", "GUILD");
		SendChatMessage(".lookup quest Una visita al comisario", "GUILD");
		SendChatMessage(".lookup quest Homenaje a los ancestros", "GUILD");
		SendChatMessage(".lookup quest los espíritus perdidos", "GUILD");
		SendChatMessage(".lookup quest Recoger los pedazos", "GUILD");
		SendChatMessage(".lookup quest Llevar a los ancestros a casa", "GUILD");
		SendChatMessage(".lookup quest Las palabras de un padre", "GUILD");
		SendChatMessage(".lookup quest El tridente de Naz'jan", "GUILD");
		SendChatMessage(".lookup quest El emisario", "GUILD");
		SendChatMessage(".lookup quest Una misión diplomática", "GUILD");
		SendChatMessage(".lookup quest ¡Encuentra a karuk!", "GUILD");
		SendChatMessage(".lookup quest El juramento de Karuk", "GUILD");
		SendChatMessage(".lookup quest Gamel el cruel", "GUILD");
		SendChatMessage(".lookup quest ¡No sin luchar!", "GUILD");
		SendChatMessage(".lookup quest La sabiduría de muahit", "GUILD");
		SendChatMessage(".lookup quest Los espíritus nos protegen", "GUILD");
		SendChatMessage(".lookup quest Las circunstancias cambian", "GUILD");
		SendChatMessage(".lookup quest Viaja hasta el puerto Moa'ki", "GUILD");
		SendChatMessage(".lookup quest En la niebla", "GUILD");
		SendChatMessage(".lookup quest Quema en efigie", "GUILD");
		SendChatMessage(".lookup quest El cuerno del viejo marinero", "GUILD");
		SendChatMessage(".lookup quest Orabus el timonel", "GUILD");
		--GMGenie.showGMMessage("Cementerio de Dragones");
		SendChatMessage(".lookup quest No dejes que nada se eche a perder", "GUILD");
		SendChatMessage(".lookup quest Visión espiritual", "GUILD");
		SendChatMessage(".lookup quest El ancestro mana'loa", "GUILD");
		SendChatMessage(".lookup quest Libertad para los que padecen", "GUILD");
		SendChatMessage(".lookup quest Conversando con las profundidades", "GUILD");
		SendChatMessage(".lookup quest Signos de importantes disturbios acuáticos", "GUILD");
		SendChatMessage(".lookup quest El cebo", "GUILD");
		SendChatMessage(".lookup quest Carne en el anzuelo", "GUILD");
		SendChatMessage(".lookup quest Trampas de cangrejos de Tua'kea", "GUILD");
		--GMGenie.showGMMessage("Fiordo Aquilonal");
		SendChatMessage(".lookup quest Orfus de komawa", "GUILD");
		SendChatMessage(".lookup quest ¡Los muertos se levantan!", "GUILD");
		SendChatMessage(".lookup quest El ancestro Atuik y komawa", "GUILD");
		SendChatMessage(".lookup quest Grezzix morthadellix", "GUILD");
		SendChatMessage('.lookup quest "Credibilidad" callejera', "GUILD");
		SendChatMessage('.lookup quest "Movidic"', "GUILD");
		SendChatMessage(".lookup quest El bastón de la furia de la tormenta", "GUILD");
		SendChatMessage(".lookup quest El corazón congelado de isuldof", "GUILD");
		SendChatMessage(".lookup quest El escudo perdido de los Aesirites", "GUILD");
		SendChatMessage(".lookup quest Motín en el misericordia", "GUILD");
		SendChatMessage(".lookup quest El botín de Sorlof", "GUILD");
		SendChatMessage(".lookup quest El escudo de los Aesirites", "GUILD");
		SendChatMessage(".lookup quest La antigua armadura de los Kvaldir", "GUILD");
		SendChatMessage(".lookup quest Volver a descansar en paz", "GUILD");
		SendChatMessage(".lookup quest Regresa junto a Atuik", "GUILD");
		SendChatMessage(".lookup quest Jabón", "GUILD");
		SendChatMessage(".lookup quest Alimentar a los supervivientes", "GUILD");
		SendChatMessage(".lookup quest Armar a Komawa", "GUILD");
		SendChatMessage(".lookup quest Vengar a Iskaal", "GUILD");
	elseif name=="AlaAbisal" then
		GMGenie.showGMMessage("Ala Abisal, cadena completa");
 		--misiones
		GMGenie.showGMMessage("Cadena inicial");
		--SendChatMessage("Cadena inicial", "GMGenie");
		SendChatMessage(".lookup quest Bondad", "GUILD");
		SendChatMessage(".lookup quest Buscar a Neltharaku", "GUILD");
		SendChatMessage(".lookup quest La historia de Neltharaku", "GUILD");
		SendChatMessage(".lookup quest Infiltrarse en la Fortaleza Faucedraco", "GUILD");
		SendChatMessage(".lookup quest ¡Al Arrecife del Ala Abisal!", "GUILD");
		SendChatMessage(".lookup quest La fuerza de Neltharaku", "GUILD");
		SendChatMessage(".lookup quest Karynaku", "GUILD");
		SendChatMessage(".lookup quest Zuluhed el Demente", "GUILD");
		SendChatMessage(".lookup quest Aliado del Ala Abisal", "GUILD");
		--GMGenie.showGMMessage("A partir de este punto ya son Neutrales");
		--GMGenie.showGMMessage("Para poder continuar es necesario la equitacion de 300");
		--SendChatMessage("Al ser ya neutrales es necesaria la equitacion de 300 para continuar", "GMGenie");
		--SendChatMessage("Para poder continuar es necesario la equitacion de 300");
		SendChatMessage(".lookup quest Juramento de sangre de los Ala Abisal", "GUILD");
		SendChatMessage(".lookup quest Al servicio de los Illidari", "GUILD");
		SendChatMessage(".lookup quest Presentación ante el capataz", "GUILD");
		--GMGenie.showGMMessage("Completando presentacion ante el capataz abre esta diaria");
		--SendChatMessage("Completando presentacion ante el capataz abre esta diaria", "GMGenie");
		SendChatMessage(".lookup quest Cristales de Ala Abisal", "GUILD");
		--GMGenie.showGMMessage("Continua la cadena, terminando tu amigo en el interior abre 2 diarias");		
		--SendChatMessage("Continua la cadena, terminando tu amigo en el interior abre 2 diarias", "GMGenie");		
		SendChatMessage(".lookup quest Tu amigo en el interior", "GUILD");
		SendChatMessage(".lookup quest Una muerte lenta", "GUILD");
		SendChatMessage(".lookup quest Los cielos no tan amistosos...", "GUILD");
		SendChatMessage(".lookup quest La gran búsqueda de huevos de Ala Abisal", "GUILD");
		--GMGenie.showGMMessage("la siguiente mision se inicia con un objeto que lo sueltan los Mob");
		--SendChatMessage("la siguiente mision se inicia con un objeto que lo sueltan los Mob", "GMGenie");
		SendChatMessage(".lookup item Mano parcialmente digerida", "GUILD");
		SendChatMessage(".lookup quest Un trabajo sin terminar...", "GUILD");
		--GMGenie.showGMMessage("Desde aca se necesita ser amistoso");
		--SendChatMessage("Desde aca se necesita ser amistoso", "GMGenie");
		SendChatMessage(".lookup quest ¡Levanta, sobrestante!", "GUILD");
		SendChatMessage(".lookup quest Las Minas del Ala Abisal", "GUILD");
		SendChatMessage(".lookup quest Recogiendo los pedazos...", "GUILD");
		SendChatMessage(".lookup quest La supervisión y tú: cómo tomar las decisiones adecuadas", "GUILD");
		SendChatMessage(".lookup quest El botarang: una cura para el insignificante trabajador común", "GUILD");
		SendChatMessage(".lookup quest Los dragones son el menor de nuestros problemas", "GUILD");
		SendChatMessage(".lookup quest Locura y confusión", "GUILD");
		--GMGenie.showGMMessage("la siguiente mision se inicia con un objeto que lo sueltan los Mob");
		--SendChatMessage("la siguiente mision se inicia con un objeto que lo sueltan los Mob", "GMGenie");
		SendChatMessage(".lookup item Planes de fuga de los Sangreoscura", "GUILD");
		SendChatMessage(".lookup quest La gran revuelta Sangreoscura", "GUILD");
		SendChatMessage(".lookup quest En busca de la verdad", "GUILD");
		--GMGenie.showGMMessage("Desde aca se necesita ser Honorable");
		--SendChatMessage("Desde aca se necesita ser Honorable", "GMGenie");
		SendChatMessage(".lookup quest ¡La cabeza bien alta, Capitán!", "GUILD");
		SendChatMessage(".lookup quest Perturbar el Portal Crepuscular", "GUILD");
		SendChatMessage(".lookup quest El cañón de almas de Reth'hedron", "GUILD");
		SendChatMessage(".lookup quest Avasallar al Avasallador", "GUILD");
		SendChatMessage(".lookup quest Ganándote las alas...", "GUILD");
		SendChatMessage(".lookup quest Carrera Faucedraco: la balada del Viejo Viejete", "GUILD");
		SendChatMessage(".lookup quest Carrera Faucedraco: Trope el Vomitador", "GUILD");
		SendChatMessage(".lookup quest Carrera Faucedraco: Corlok el Veterano", "GUILD");
		SendChatMessage(".lookup quest Carrera Faucedraco: Comandante del aire Ichman", "GUILD");
		SendChatMessage(".lookup quest Carrera Faucedraco: Comandante del aire Mulverick", "GUILD");
		SendChatMessage(".lookup quest Carrera Faucedraco: Capitán Devastador del Cielo", "GUILD");
		--GMGenie.showGMMessage("Desde aca necesitan ser venerados");
		--SendChatMessage("Desde aca necesitan ser venerados", "GMGenie");
		SendChatMessage(".lookup quest ¡Saludos, comandante!", "GUILD");
		--GMGenie.showGMMessage("Se necesita reputacion con los Arauspices o con los Aldor");
		--SendChatMessage("Se necesita reputacion con los Arauspices o con los Aldor", "GMGenie");
		SendChatMessage(".lookup quest ¡Mátalos a todos!", "GUILD");
		SendChatMessage(".lookup quest Comandante Hobb", "GUILD");
		SendChatMessage(".lookup quest La trampa más mortal jamás tendida", "GUILD");
		--GMGenie.showGMMessage("Al ser exaltado");	
		--SendChatMessage("Al ser exaltado", "GMGenie");	
		SendChatMessage(".lookup quest Inclínate ante el Alto Señor", "GUILD");		
		SendChatMessage(".lookup quest Lord Illidan Tempestira", "GUILD");
		elseif name=="CampeónDeLosNaaru" then
		GMGenie.showGMMessage("Campeón De Los Naaru - Es necesario tener los 3 Trozos");
		--GMGenie.showGMMessage("Cadena de misiones");
		SendChatMessage(".lookup quest La Mano de Gul'dan", "GUILD");		
		SendChatMessage(".lookup quest Espíritus de fuego y tierra iracundos", "GUILD");		
		SendChatMessage(".lookup quest Espíritus de agua iracundos", "GUILD");		
		SendChatMessage(".lookup quest Espíritus de aire iracundos", "GUILD");		
		SendChatMessage(".lookup quest Oronok corazón roto", "GUILD");		
		SendChatMessage(".lookup quest Yo era muchas cosas...", "GUILD");		
		SendChatMessage(".lookup quest una lección aprendida", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación: historia y verdad", "GUILD");		
		--GMGenie.showGMMessage("Cadena de misiones I - Primer fragmento de la clave de la condenación");
		SendChatMessage(".lookup quest Grom'tor, hijo de Oronok", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación: La carga de Grom'tor", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación - Primer trozo recuperado", "GUILD");
		SendChatMessage(".lookup item primer trozo de la clave", "GUILD");		
		--GMGenie.showGMMessage("Cadena de misiones II - Segundo fragmento de la clave de la condenación");
		SendChatMessage(".lookup quest Ar'tor, hijo de Oronok", "GUILD");		
		SendChatMessage(".lookup quest Cárceles de cristal demoníacas", "GUILD");		
		SendChatMessage(".lookup quest Lohn'goron, arco del corazón roto", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación. La carga de Ar'tor", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación. Segundo trozo recuperado", "GUILD");		
		SendChatMessage(".lookup item segundo trozo de la clave", "GUILD");
		--GMGenie.showGMMessage("Cadena de misiones III - Tercer fragmento de la clave de la condenación");
		SendChatMessage(".lookup quest Borak, hijo de Oronok", "GUILD");		
		SendChatMessage(".lookup quest Sobre cabezacardos y huevos...", "GUILD");		
		SendChatMessage(".lookup quest El fardo de cardos de sangre", "GUILD");		
		SendChatMessage(".lookup quest Perder la cabeza... por unos cardos", "GUILD");		
		SendChatMessage(".lookup quest Revuelo en Sombraluna", "GUILD");		
		SendChatMessage(".lookup quest Lo que Illidan quiere, lo consigue...", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación: La carga de Borak", "GUILD");		
		SendChatMessage(".lookup quest La Clave de Condenación: Tercer trozo recuperado", "GUILD");		
		SendChatMessage(".lookup item tercer trozo de la clave", "GUILD");
		--GMGenie.showGMMessage("Después deberás matar a un jefe final.");
		SendChatMessage(".lookup quest La Clave de Condenación", "GUILD");		
		SendChatMessage(".lookup quest La cayada de Kar'desh", "GUILD");		
		SendChatMessage(".lookup quest Prueba de los naaru: Magtheridon", "GUILD");		
	elseif name=="MonturaLordCuervo" then
		GMGenie.showGMMessage("Montura Lord Cuervo, cadena completa");
  		--misiones
		GMGenie.showGMMessage("Necesario tener Honorable con bajo arrabal y equitacion de 280%");
		SendChatMessage(".lookup faction Bajo arrabal", "GUILD");
		SendChatMessage(".lookup skill Equitación", "GUILD");
		SendChatMessage(".lookup quest Morthis Alasusurro", "GUILD");
		SendChatMessage(".lookup quest El resguardo de despertar", "GUILD");
		SendChatMessage(".lookup quest Despertar al Durmiente", "GUILD");
		SendChatMessage(".lookup quest Se acabó el sueño", "GUILD");
		SendChatMessage(".lookup quest Regresa junto a Morthis Alasusurro", "GUILD");
		SendChatMessage(".lookup quest A Soto Eterno", "GUILD");
		SendChatMessage(".lookup quest El Libro del Cuervo", "GUILD");
		SendChatMessage(".lookup quest Ojos en el Cielo", "GUILD");
		SendChatMessage(".lookup quest Atrapar un Gavilán", "GUILD");
		SendChatMessage(".lookup quest Las Piedras del Cuervo", "GUILD");
		SendChatMessage(".lookup quest La Esencia del Águila", "GUILD");
		SendChatMessage(".lookup quest La Esencia del Halcón", "GUILD");
		SendChatMessage(".lookup quest La esencia del Falcón", "GUILD");
		SendChatMessage(".lookup quest Regresa al Refugio Cenarion", "GUILD");
		SendChatMessage(".lookup quest Tras la Piedra Lunar", "GUILD");
		SendChatMessage(".lookup quest Derrota al Dios Cuervo", "GUILD");
	elseif name=="VanguardiaArgenta" then
		GMGenie.showGMMessage("Vanguardia Argenta, cadena completa");
		SendChatMessage(".lookup quest ¡Se acerca el día del Juicio Final!", "GUILD");
		SendChatMessage(".lookup quest Honor por encima de todo", "GUILD");
		SendChatMessage(".lookup quest Tácticas de la plaga", "GUILD");
		SendChatMessage(".lookup quest Defender la Vanguardia", "GUILD");
		SendChatMessage(".lookup quest Curar lo incurable", "GUILD");
		SendChatMessage(".lookup quest Si hay supervivientes...", "GUILD");
		SendChatMessage(".lookup quest Dentro del gran verdor", "GUILD");
		SendChatMessage(".lookup quest Se aproxima un frente frio", "GUILD");
		SendChatMessage(".lookup quest La última línea de defensa", "GUILD");
		SendChatMessage(".lookup quest Una vez más en la brecha, héroe", "GUILD");
		SendChatMessage(".lookup quest La piedra de la plaga", "GUILD");
		SendChatMessage(".lookup quest La purga de la ciudad de la plaga", "GUILD");
		SendChatMessage(".lookup quest Los muertos sin descanso", "GUILD");
		SendChatMessage(".lookup quest El aire permanece quieto", "GUILD");
		SendChatMessage(".lookup quest La piedra que comenzó una revolución", "GUILD");
		SendChatMessage(".lookup quest Podría matarnos a todos", "GUILD");
		SendChatMessage(".lookup quest Dentro del helado corazón de rasganorte", "GUILD");
		SendChatMessage(".lookup quest La batalla por el pináculo de los cruzados", "GUILD");
		SendChatMessage(".lookup quest El pináculo de los cruzados", "GUILD");
		SendChatMessage(".lookup quest Un relato de valor", "GUILD");
		SendChatMessage(".lookup quest El rompecielos", "GUILD");
		SendChatMessage(".lookup quest El Martillo de Orgrim", "GUILD");
		SendChatMessage(".lookup quest Aún queda un héroe", "GUILD");
		SendChatMessage(".lookup quest El favor del guardián", "GUILD");
		SendChatMessage(".lookup quest Esperanza dentro de la pesadilla esmeralda", "GUILD");
		SendChatMessage(".lookup quest El favor de Remulos", "GUILD");
		SendChatMessage(".lookup quest Aún queda tiempo", "GUILD");
		SendChatMessage(".lookup quest El toque de un aspecto", "GUILD");
		SendChatMessage(".lookup quest Las lágrimas de Dahlia", "GUILD");
		SendChatMessage(".lookup quest El favor de Alexstrasza", "GUILD");
		SendChatMessage(".lookup quest Aún queda esperanza", "GUILD");
		SendChatMessage(".lookup quest La voluntad de los naaru", "GUILD");
		SendChatMessage(".lookup quest El favor de A'dal", "GUILD");
		SendChatMessage(".lookup quest Luz en las tinieblas", "GUILD");
		elseif name=="TralalaOgrila" then
		GMGenie.showGMMessage("Tralala Ogrila - Cadena de misiones para Festival de invierno, la guia completa esta en el foro");
		GMGenie.showGMMessage("La mision - Los cristales 11025 esta despues de una reliquia de apices.");
		--GMGenie.showGMMessage("Cadena de misiones");
		SendChatMessage(".lookup quest Habla con el ogro", "GUILD");	
		SendChatMessage(".lookup quest Mog'dorg el Marchito", "GUILD");
		SendChatMessage(".lookup quest Grulloc tiene dos calaveras", "GUILD");
		SendChatMessage(".lookup quest La arqueta de maggoc", "GUILD");
		SendChatMessage(".lookup quest Incluso los gronn tienen confalones", "GUILD");
		SendChatMessage(".lookup quest Un asunto grimoso", "GUILD");
		SendChatMessage(".lookup quest Dentro del moledor de almas", "GUILD");
		SendChatMessage(".lookup quest El cielo de los ogros", "GUILD");
		SendChatMessage(".lookup quest Una reliquia de ápices", "GUILD");
		SendChatMessage(".lookup quest Guardián del monumento", "GUILD");
		SendChatMessage(".lookup quest La emanación de la reliquia", "GUILD");
		SendChatMessage(".lookup quest la avanzada de la guardia del cielo", "GUILD");
		SendChatMessage(".lookup quest ¡bomba va!", "GUILD");
		SendChatMessage(".lookup quest ¡bombardéalos de nuevo!", "GUILD");
		SendChatMessage(".lookup quest La obligación de un padre", "GUILD");
		SendChatMessage(".lookup quest Un látigo vil para Gahk", "GUILD");
	elseif name=="CambioDeFaseCumbres" then
		GMGenie.showGMMessage("Se revisa la cadena de misiones en cumbres tormentosas que llegan a cambiar la fase del player");
		SendChatMessage(".lookup quest Tras la pista de brann", "GUILD");
		SendChatMessage(".lookup quest encontrar al culpable", "GUILD");
		SendChatMessage(".lookup quest piezas del puzle", "GUILD");
		SendChatMessage(".lookup quest extracción de datos", "GUILD");
		SendChatMessage(".lookup quest el caparazón de norgannon", "GUILD");
		SendChatMessage(".lookup quest ayuda de la liga de expedicionarios", "GUILD");
		SendChatMessage(".lookup quest los exiliados de ulduar", "GUILD");
		SendChatMessage(".lookup quest el rey natoescarcha", "GUILD");
		SendChatMessage(".lookup quest fervor de los natoescarcha", "GUILD");
		SendChatMessage(".lookup quest un guía con experiencia", "GUILD");
		SendChatMessage(".lookup quest el guardián solitario", "GUILD");
		SendChatMessage(".lookup quest el destino de los titanes", "GUILD");
		SendChatMessage(".lookup quest la reliquia oculta", "GUILD");
		SendChatMessage(".lookup quest la furia del rey natoescarcha", "GUILD");
		SendChatMessage(".lookup quest el maestro expedicionario", "GUILD");
	--En caso de que no coincida bien
	else
		GMGenie.showGMMessage("Ningún grupo coincidente a lo ingresado; por favor verifique los existentes escribiendo /lookupquest help");
	end
end

function GMGenie.Spy.spy(name)
    if not name or string.len(name) < 1 or name == "%t" then
        name = UnitName("target");
    end
    if name and string.len(name) > 1 then
        GMGenie.Spy.waitingForPin = true;
        GMGenie.Spy.currentRequest = { account = "", accountId = "", class = "", email = "", gmLevel = "", guid = "", guild = "", ip = "", latency = "", level = "", location = "", login = "", money = "", name = "", phase = "", playedTime = "", race = "" };
        GMGenie.Spy.clearCache();
        GMGenie.Spy.resetBoxes();
        GMGenie.Spy.currentRequest["name"] = name;

        GMGenie.Spy.clearCache();
        SendChatMessage(".pin " .. name, "GUILD");
    else
        GMGenie.showGMMessage("Por favor, ingrese el nombre del jugador a espiar o tenga el jugador en Target.");
    end
end

function GMGenie.Spy.clearCache()
    GMGenie.Spy.pinCache = "";
end

function GMGenie.Spy.addToCache(pin)
    GMGenie.Spy.pinCache = GMGenie.Spy.pinCache .. pin .. "\n";
end

function GMGenie.Spy.processPin01(offline, name1, guid, pin)
    GMGenie.Spy.currentRequest["name"] = name1;
    GMGenie.Spy.currentRequest["offline"] = offline;
    GMGenie.Spy.currentRequest["guid"] = guid;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin02(phase, pin)
    GMGenie.Spy.currentRequest["phase"] = phase;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin03(account, accountId, gmLevel, pin)
    GMGenie.Spy.currentRequest["account"] = account;
    GMGenie.Spy.currentRequest["accountId"] = accountId;
    GMGenie.Spy.currentRequest["gmLevel"] = gmLevel;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin04(login, failedLogins, pin)
    GMGenie.Spy.currentRequest["login"] = login;
    -- todo failedLogins

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin05(os, latency, pin)
    -- todo os
    GMGenie.Spy.currentRequest["latency"] = latency;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin06(email, pin)
    GMGenie.Spy.currentRequest["email"] = email;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin07(ip, locked, pin)
    GMGenie.Spy.currentRequest["ip"] = ip;
    -- todo locked

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin08(level, pin)
    GMGenie.Spy.currentRequest["level"] = level;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin09(race, class, pin)
    GMGenie.Spy.currentRequest["race"] = race;
    GMGenie.Spy.currentRequest["class"] = class;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin10(alive, pin)
    -- todo alive

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin11(money, pin)
    GMGenie.Spy.currentRequest["money"] = money;

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin12(map, area, zone, pin)
    GMGenie.Spy.currentRequest["location"] = map;
    if map ~= area then
        GMGenie.Spy.currentRequest["location"] = area .. ', ' .. GMGenie.Spy.currentRequest["location"];
    end
    if string.upper(zone) ~= '<UNKNOWN>' then
        GMGenie.Spy.currentRequest["location"] = zone .. ', ' .. GMGenie.Spy.currentRequest["location"];
    end

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin13(guild, guildId, pin)
    GMGenie.Spy.currentRequest["guild"] = '<' .. guild .. '> (' .. guildId .. ')';

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin14(guildRank, pin)
    GMGenie.Spy.currentRequest["guild"] = '"' .. guildRank .. '" of ' .. GMGenie.Spy.currentRequest["guild"];

    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin15(note, pin)
    -- todo note
    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin16(officerNote, pin)
    -- todo officerNote
    GMGenie.Spy.addToCache(pin);
end

function GMGenie.Spy.processPin17(playedTime, pin)
    GMGenie.Spy.currentRequest["playedTime"] = playedTime;

    GMGenie.Spy.addToCache(pin);

    GMGenie.Spy.waitingForPin = false;
    GMGenie.Spy.waitingForMail = true;
    Chronos.scheduleByName('mailinpinprotection', 2, GMGenie.Spy.abortWaitingForMail);
    GMGenie.Spy.resetBoxes();
    GMGenie_Spy_InfoWindow:Show();
end

function GMGenie.Spy.processPin18(read, total, pin)
    GMGenie.Spy.addToCache(pin);

    GMGenie.Spy.waitingForMail = false;
    Chronos.unscheduleByName('mailinpinprotection');
    GMGenie.Spy.resetBoxes();
    GMGenie_Spy_InfoWindow:Show();
end

function GMGenie.Spy.abortWaitingForMail()
    GMGenie.Spy.waitingForMail = false;
end

function GMGenie.Spy.resetBoxes()
    GMGenie_Spy_InfoWindow_Info_CharInfo:SetText("Level " .. GMGenie.Spy.currentRequest["level"] .. " " .. GMGenie.Spy.currentRequest["race"] .. " " .. GMGenie.Spy.currentRequest["class"]);
    GMGenie_Spy_InfoWindow_Info_Guild:SetText(GMGenie.Spy.currentRequest["guild"]);
    GMGenie_Spy_InfoWindow_Title_Text:SetText(GMGenie.Spy.currentRequest["name"]);
    GMGenie_Spy_InfoWindow_Character_Name:SetText(GMGenie.Spy.currentRequest["name"]);
    GMGenie_Spy_InfoWindow_Character_Id:SetText(GMGenie.Spy.currentRequest["guid"]);
    GMGenie_Spy_InfoWindow_Account_Name:SetText(GMGenie.Spy.currentRequest["account"]);
    GMGenie_Spy_InfoWindow_Account_Id:SetText(GMGenie.Spy.currentRequest["accountId"]);
    GMGenie_Spy_InfoWindow_Email_Email:SetText(GMGenie.Spy.currentRequest["email"]);
    GMGenie_Spy_InfoWindow_IpLat_Ip:SetText(GMGenie.Spy.currentRequest["ip"]);
    if tonumber(GMGenie.Spy.currentRequest["latency"]) and tonumber(GMGenie.Spy.currentRequest["latency"]) > 1000 then
        GMGenie_Spy_InfoWindow_IpLat_Latency:SetFontObject(GenieFontRedSmall);
    else
        GMGenie_Spy_InfoWindow_IpLat_Latency:SetFontObject(GenieFontHighlightSmall);
    end
    GMGenie_Spy_InfoWindow_IpLat_Latency:SetText(GMGenie.Spy.currentRequest["latency"]);
    GMGenie_Spy_InfoWindow_LastLogin_LastLogin:SetText(GMGenie.Spy.currentRequest["login"]);
    GMGenie_Spy_InfoWindow_PlayedGM_PlayedTime:SetText(GMGenie.Spy.currentRequest["playedTime"]);
    GMGenie_Spy_InfoWindow_PlayedGM_GM:SetText(GMGenie.Spy.currentRequest["gmLevel"]);
    GMGenie_Spy_InfoWindow_MoneyPhase_Money:SetText(GMGenie.Spy.currentRequest["money"]);
    GMGenie_Spy_InfoWindow_MoneyPhase_Phase:SetText(GMGenie.Spy.currentRequest["phase"]);
    GMGenie_Spy_InfoWindow_Location_Location:SetText(GMGenie.Spy.currentRequest["location"]);
    GMGenie_Spy_InfoWindow_Location_Location:SetCursorPosition(0);
end

function GMGenie.Spy.loadDropdown(_, level)
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Información de Baneo';
    info.func = GMGenie.Spy.banInfo;
    UIDropDownMenu_AddButton(info, level);
	
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Información de muteo';
    info.func = GMGenie.Spy.muteInfo;
    UIDropDownMenu_AddButton(info, level);
	
    
    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Mirar Pjs de la ip (todos)';
    info.func = GMGenie.Spy.lookupPlayerip;
    UIDropDownMenu_AddButton(info, level);

    local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Mirar Pjs de la ip (Solo el conectado)';
    info.func = GMGenie.Spy.lookupPlayeripconeccted;
    UIDropDownMenu_AddButton(info, level);

	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Mirar Pjs de la cuenta';
    info.func = GMGenie.Spy.lookupPlayeracc;
    UIDropDownMenu_AddButton(info, level);

	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Mirar Pjs del mail';
    info.func = GMGenie.Spy.lookupPlayeremail;
    UIDropDownMenu_AddButton(info, level);
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Mirar Grupo';
    info.func = GMGenie.Spy.groupList;
    UIDropDownMenu_AddButton(info, level);
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Enviar al cementerio/Angel';
    info.func = GMGenie.Spy.unstuckgraveyard;
    UIDropDownMenu_AddButton(info, level);
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Enviar al hogar';
    info.func = GMGenie.Spy.unstuckinn;
    UIDropDownMenu_AddButton(info, level);
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Enviar a la zona inicio';
    info.func = GMGenie.Spy.unstuckstartzone;
    UIDropDownMenu_AddButton(info, level);
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Guardar Datos';
    info.func = ciber;
    UIDropDownMenu_AddButton(info, level);
	
	local info = UIDropDownMenu_CreateInfo();
    info.hasArrow = false;
    info.notCheckable = true;
    info.text = 'Kick por lag';
    info.func = GMGenie.Spy.kickLag;
    UIDropDownMenu_AddButton(info, level);
	
end

SLASH_SPY1 = "/spy";
SlashCmdList["SPY"] = GMGenie.Spy.spy;

SLASH_LOOKUPQUEST1 = "/lookupquest";
SlashCmdList["LOOKUPQUEST"] = GMGenie.Spy.lookupquest;

function GMGenie.Spy.copyPin()
    GMGenie.showGMMessage(GMGenie.Spy.pinCache);
end

function GMGenie.Spy.whisper()
    ChatFrame_SendTell(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.summon()
    GMGenie.Macros.summon(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.appear()
    GMGenie.Macros.appear(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.revive()
    GMGenie.Macros.revive(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.freeze()
    GMGenie.Macros.freeze(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.unfreeze()
    GMGenie.Macros.unfreeze(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.rename()
    GMGenie.Macros.rename(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.antiCheatPlayer()
    GMGenie.Macros.antiCheatPlayer(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.customize()
    GMGenie.Macros.customize(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.changefaction()
    GMGenie.Macros.changefaction(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.changerace()
    GMGenie.Macros.changerace(GMGenie.Spy.currentRequest["name"]);
end

function GMGenie.Spy.banInfo()
    CloseDropDownMenus()
    SendChatMessage(".baninfo account "..GMGenie.Spy.currentRequest["account"], "GUILD");
    SendChatMessage(".baninfo character "..GMGenie.Spy.currentRequest["name"], "GUILD");
    SendChatMessage(".baninfo ip "..GMGenie.Spy.currentRequest["ip"], "GUILD");
end

function GMGenie.Spy.muteInfo()
    CloseDropDownMenus()
    SendChatMessage(".mutehistory "..GMGenie.Spy.currentRequest["account"], "GUILD");
end

function GMGenie.Spy.lookupPlayerip()
    CloseDropDownMenus()
    SendChatMessage(".lookup player ip "..GMGenie.Spy.currentRequest["ip"], "GUILD");
end

function GMGenie.Spy.lookupPlayeripconeccted()
    CloseDropDownMenus()
    SendChatMessage(".lookup player ip "..GMGenie.Spy.currentRequest["ip"].." 1 1", "GUILD");
end

function GMGenie.Spy.lookupPlayeracc()
    CloseDropDownMenus()
    SendChatMessage(".lookup player account "..GMGenie.Spy.currentRequest["account"], "GUILD");
end

function GMGenie.Spy.lookupPlayeremail()
    CloseDropDownMenus()
    SendChatMessage(".lookup player email "..GMGenie.Spy.currentRequest["email"], "GUILD");
end

function GMGenie.Spy.groupList()
    CloseDropDownMenus()
    SendChatMessage(".group list "..GMGenie.Spy.currentRequest["name"], "GUILD");
end

function GMGenie.Spy.unstuckgraveyard()
    CloseDropDownMenus()
    SendChatMessage(".unstuck "..GMGenie.Spy.currentRequest["name"].." graveyard", "GUILD");
end

function GMGenie.Spy.unstuckinn()
    CloseDropDownMenus()
    SendChatMessage(".unstuck "..GMGenie.Spy.currentRequest["name"].." inn", "GUILD");
end

function GMGenie.Spy.unstuckstartzone()
    CloseDropDownMenus()
    SendChatMessage(".unstuck "..GMGenie.Spy.currentRequest["name"].." startzone", "GUILD");
end

function GMGenie.Spy.kickLag()
    CloseDropDownMenus()
    SendChatMessage(".kick "..GMGenie.Spy.currentRequest["name"].." Logea", "GUILD");
end

local Saved_SetItemRef = SetItemRef;
function SetItemRef(link, text, button, chatFrame)
    if (strsub(link, 1, 9) == "anticheat") then
        local _, name = strsplit(":", link);
        if (button == "LeftButton") then
            GMGenie.Spy.antiCheat(name);
        elseif (button == "RightButton") then
            FriendsFrame_ShowDropdown(name, 1);
        end
        return;
    end
    Saved_SetItemRef(link, text, button, chatFrame);
end
