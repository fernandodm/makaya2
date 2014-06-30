Feature: Tabla
  Con el fin de hacer un seguimiento de los equipos
  Como administrador
  Quiero ver la tabla de posiciones

	Background:
    Given Existe un torneo "torneo"
    And tiene 2 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    And lo creo
	And creo un equipo llamado "Equipo1"
	And creo otro equipo llamado "Equipo2"
  
  Scenario: Ver posiciones inicial
    Given que tengo un torneo "torneo" en la pagina de torneos
    When voy a ver posiciones
    Then deberia ver a "Equipo1" con 0 puntos
    And "Equipo2" con 0 puntos

