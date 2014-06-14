Feature: Torneo
  Con el fin de agregar equipos
  Como administrador
  Quiero agregar equipos al torneos
  
   Background:
    Given Existe un torneo "Nuevo torneo"
    And tiene 4 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    And lo creo
    
  
  Scenario: Crear equipo
    Give tengo un torneo "Nuevo Torneo" en la pagina de torneos
    And voy a ver equipos
    And voy a crear equipo
    When lleno el campo nombre de equipo con "Equipo 1" 
    And confirmo el equipo 
    Then deberia ver "Equipo creado"
 
  

