Feature: Torneo
  Con el fin de realizar torneos
  Como administrador
  Quiero crear mas torneos
  
  Scenario: Crear un torneo
    Given Voy a la pagina de creacion de torneo
    When Lleno los campos Titulo del torneo con "Nuevo Torneo" 
    And cantidad de equipos con 4
    And el sistema de puntos ganados 3
	And empatados 1
	And perdidos 0
    And confirmo la creacion del torneo
    Then deberia ver "Torneo creado"

  Scenario: No crear torneo porque cantidad de equipo esta mal
    Given Voy a la pagina de creacion de torneo
    When Lleno los campos Titulo del torneo con "Nuevo Torneo" 
    And cantidad de equipos con -2
    And el sistema de puntos ganados 3
	And empatados 1
	And perdidos 0
    And confirmo la creacion del torneo
    Then deberia ver "Error campo incorrecto"


  Scenario: No crear torneo porque puntos ganados es menor a los puntos empatados
    Given Voy a la pagina de creacion de torneo
    When Lleno los campos Titulo del torneo con "Nuevo Torneo" 
    And cantidad de equipos con -2
    And el sistema de puntos ganados 3
	And empatados 10
	And perdidos 0
    And confirmo la creacion del torneo
    Then deberia ver "Error campo incorrecto"
    
  Scenario: No crear torneo porque puntos ganados es menor a los puntos perdidos
    Given Voy a la pagina de creacion de torneo
    When Lleno los campos Titulo del torneo con "Nuevo Torneo" 
    And cantidad de equipos con -2
    And el sistema de puntos ganados 3
	And empatados 1
	And perdidos 10
    And confirmo la creacion del torneo
    Then deberia ver "Error campo incorrecto"
