Given(/^tiene un equipo llamado "(.*?)"$/) do |arg1|
	visit '/torneo/latest'
	click_link('Ver Equipos')
	first(:link, 'Crear equipo').click
	fill_in('equipo[nombre_equipo]', :with => arg1)
	click_button('Crear')
end

Given(/^otro equipo llamado "(.*?)"$/) do |arg1|
  visit '/torneo/latest'
	click_link('Ver Equipos')
	first(:link, 'Crear equipo').click
	fill_in('equipo[nombre_equipo]', :with => arg1)
	click_button('Crear')
end

When(/^voy a ver fixture$/) do
  visit '/torneo/latest'
	click_link('Ver Fixture')
end

When(/^voy a agregar resultado$/) do
  visit '/torneo/latest'
	click_link('Ver Fixture')
	first(:link, 'Agregar resultado').click
end

When(/^voy a editar resultado$/) do
  visit '/torneo/latest'
	click_link('Ver Fixture')
	first(:link, 'Editar resultado').click
end


When(/^agrego (\d+)$/) do |arg1|
  fill_in('partido[resultado1]', :with => arg1)
end

When(/^(\d+)$/) do |arg1|
  fill_in('partido[resultado2]', :with => arg1)
end

When(/^agrego "(.*?)"$/) do |arg1|
  fill_in('partido[resultado1]', :with => arg1)
end

When(/^"(.*?)"$/) do |arg1|
 fill_in('partido[resultado2]', :with => arg1)
end

When(/^confirmo el resultado$/) do
  click_button('Cargar')
end

When(/^guardo el resultado$/) do
	click_button('Guardar')  
end



