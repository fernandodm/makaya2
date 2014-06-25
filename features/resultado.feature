Feature: Resultado
  Con el fin de tener los resultados de un partido
  Como administrador
  Quiero cargar un resultado

   Background:
    Given Existe un torneo "Nuevo torneo"
    And tiene 2 equipos
    And pts ganados 3
    And pts empatados 1
    And pts perdidos 0
    And lo creo
		And tiene un equipo llamado "Boca"
		And otro equipo llamado "RiBer"
  
  Scenario: Agregar resultado con valores correctos
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a agregar resultado 
    And agrego 3
    And 2
		And confirmo el resultado
    Then deberia ver "Partido cargado"

  Scenario: Agregar resultado sin valores
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a agregar resultado 
    And agrego ""
    And ""
		And confirmo el resultado
    Then deberia ver "Los valores ingresados son incorrectos"


  Scenario: Editar resultado con valores negativos
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a editar resultado 
    And agrego "-2"
    And "-1"
		And guardo el resultado
    Then deberia ver "Los valores ingresados son incorrectos"
