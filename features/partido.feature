Feature: Partido
  Con el fin de ver y cargar resultados a un torneo
  Como administrador
  Quiero crear un fixture

   Background:
    Given Existe un torneo "Nuevo torneo"
    And tiene 3 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    And lo creo
  
  Scenario: Generar el fixture
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver partidos 
    Then deberia ver 3 fechas vacias
