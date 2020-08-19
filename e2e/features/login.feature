Feature: Autenticación
  Quiero ingresar a la página de Autenticación y corroborar que soy dirigido a la página de Dashboard
  una vez autenticado. En caso de error mostrar un mensaje con el motivo del error. También se espera
  que los campos de ingreso de la validación marquen los errores sin se les provee valores inválidos
  o si se dejan sin llenar los campos obligatorios.

  Quiero ingresar a la página de Autenticación y quiero ver el link que invite a los usuarios a postular a la beca del curso.
  Una vez hecho clic redirigir a una nueva página donde se mostrará el formulario de la beca.

  Scenario: Ingresar a la página de autenticación
    Given ingreso a la página de autenticación

  Scenario: Login con email, password y grupos
    Given ingreso a la página de autenticación
    When selecciono un grupo del menú grupos
    When escribo en el input password
    When escribo en el input de email
    Then al presionar el botón login soy redirigido a la página inicial
