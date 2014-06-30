When(/^voy a ver posiciones$/) do
	visit '/torneo/latest'
  page.all(:link, 'Ver posiciones')[1].click
end

Given(/^creo un equipo llamado "(.*?)"$/) do |arg1|
  visit '/torneo/latest'
	#click_link('Ver Equipos')
	page.all(:link,"Ver Equipos")[1].click
	first(:link, 'Crear equipo').click
	fill_in('equipo[nombre_equipo]', :with => arg1)
	click_button('Crear')
end

Given(/^creo otro equipo llamado "(.*?)"$/) do |arg1|
  visit '/torneo/latest'
	#click_link('Ver Equipos')
	page.all(:link,"Ver Equipos")[1].click
	first(:link, 'Crear equipo').click
	fill_in('equipo[nombre_equipo]', :with => arg1)
	click_button('Crear')
end

Then(/^deberia ver a "(.*?)" con (\d+) puntos$/) do |arg1, arg2|
  page.should have_content(arg1)
	page.should have_content(arg2)
end

Then(/^"(.*?)" con (\d+) puntos$/) do |arg1, arg2|
  page.should have_content(arg1)
	page.should have_content(arg2)
end

Then(/^"(.*?)" con (\d+) punto$/) do |arg1, arg2|
  page.should have_content(arg1)
	page.should have_content(arg2)
end

Given(/^que tengo un torneo "(.*?)" en la pagina de torneos$/) do |arg1|
  visit '/torneo/latest'
end

Given(/^agrego un partido donde gano el Equipo(\d+)$/) do |arg1|
    visit '/torneo/latest'
	page.all(:link,"Ver Fixture")[1].click
	first(:link, 'Agregar resultado').click
	fill_in('partido[resultado1]', :with => 2)
	fill_in('partido[resultado2]', :with => 1)
	click_button('Cargar')
	visit '/torneo/latest'  
end

Given(/^agrego un partido donde empato el Equipo(\d+) y el Equipo(\d+)$/) do |arg1, arg2|
    visit '/torneo/latest'
	page.all(:link,"Ver Fixture")[1].click
	first(:link, 'Editar resultado').click
	fill_in('partido[resultado1]', :with => 2)
	fill_in('partido[resultado2]', :with => 2)
	click_button('Guardar')
	visit '/torneo/latest'
end

