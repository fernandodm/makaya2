Feature: Tabla
  Con el fin de hacer un seguimiento de los equipos
  Como administrador
  Quiero ver la tabla de posiciones

  Scenario: Ver posiciones donde Equipo1 gano
    Given que tengo un torneo "torneo" en la pagina de torneos
    And agrego un partido donde gano el Equipo1
   	When voy a ver posiciones
    Then deberia ver a "Equipo1" con 3 puntos 
    And "Equipo2" con 0 puntos


  Scenario: Ver posiciones donde Equipo1 y Equipo2 empataron
    Given que tengo un torneo "torneo" en la pagina de torneos
    And agrego un partido donde empato el Equipo1 y el Equipo2
    When voy a ver posiciones
    Then deberia ver a "Equipo1" con 1 puntos
    And "Equipo2" con 1 punto
