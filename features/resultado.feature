Feature: Resultado
  Con el fin de tener los resultados de un partido
  Como administrador
  Quiero cargar un resultado

   Background:
    Given Existe un torneo "Nuevo torneo"
    And tiene 3 fechas
    And tiene 3 partidos
    And tiene 3 equipos cargados previamente
  
  Scenario: Agregar resultado con valores correctos
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a agregar resultado 
    And agrego 3
    And 2
    Then deberia ver "Partido cargado"

  Scenario: Agregar resultado sin valores
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a agregar resultado 
    And agrego ""
    And ""
    Then deberia ver "Deben llenarse ambos campos"

  Scenario: Agregar resultado con valores no numeros
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a agregar resultado 
    And agrego "hola"
    And "chau"
    Then deberia ver "Los valores ingresados son incorrectos"

  Scenario: Agregar resultado con valores negativos
    Give que tengo un torneo "Nuevo Torneo" en la pagina de torneos
    When voy a ver fixture
    And voy a agregar resultado 
    And agrego "-2"
    And "-1"
    Then deberia ver "Los valores ingresados son incorrectos"
