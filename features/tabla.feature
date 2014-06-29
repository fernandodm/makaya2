Feature: Tabla
  Con el fin de hacer un seguimiento de los equipos
  Como administrador
  Quiero ver la tabla de posiciones

	Background:
    Given Existe un torneo "Nuevo torneo"
    And tiene 2 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    And lo creo
		And creo un equipo llamado "Equipo1"
		And creo otro equipo llamado "Equipo2"
  
  Scenario: Ver posiciones inicial
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver posiciones
    Then deberia ver a "Equipo1" con 0 puntos
    And "Equipo2" con 0 puntos

  Scenario: Ver posiciones donde Equipo1 gano
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
   	When voy a ver posiciones
    Then deberia ver a "Equipo1" con 3 puntos 
    And "Equipo2" con 0 puntos


  Scenario: Ver posiciones donde Equipo1 y Equipo2 empataron
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver posiciones
    Then deberia ver a "Equipo1" con 1 puntos
    And "Equipo2" con 1 punto
