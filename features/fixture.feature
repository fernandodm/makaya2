Feature: Fixture
  Con el fin de ver todas las fechas del torneo
  Como administrador
  Quiero crear un fixture

   Background:
    Given Existe un torneo "Nuevo torneo"
    And tiene 6 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    And Existe un torneo "Otro torneo"  
    And tiene 3 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    
    
  Scenario: Generar el fixture con numero par
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a Ver fixture 
    Then deberia ver 5 fechas vacias

  Scenario: Generar el fixture con numero impar
    Give que tengo un torneo "Otro Torneo" en la pagina de torneos
    When voy a Ver fixture 
    Then deberia ver 3 fechas vacias


