Feature: Torneo
  Con el fin de realizar torneos
  Como administrador
  Quiero crear mas torneos
  
  Scenario: Crear un torneo
    Given Voy a la pagina de creacion de torneo
    When Lleno los campos Titulo del torneo con "Nuevo Torneo" 
    And cantidad de equipos con 4
    And confirmo la creacion del torneo
    Then deberia ver "Torneo creado"

  Scenario: Sistema de puntuacion
    Given que estoy en la pagina de creacion de torneo
    When lleno el titulo con "Torneo 2"
    And cantidad de equipos con 4 
	And el sistema de puntos ganados 3
	And empatados 1
	And perdidos 0
    Then deberia ver "Torneo Creado"
