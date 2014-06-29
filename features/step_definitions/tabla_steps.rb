When(/^voy a ver posiciones$/) do
	visit '/torneo/latest'
  click_link('Ver posiciones')
end

Given(/^creo un equipo llamado "(.*?)"$/) do |arg1|
  visit '/torneo/latest'
	click_link('Ver Equipos')
	first(:link, 'Crear equipo').click
	fill_in('equipo[nombre_equipo]', :with => arg1)
	click_button('Crear')
end

Given(/^creo otro equipo llamado "(.*?)"$/) do |arg1|
	click_link('Ver Equipos')
	page.all('Crear equipo')[0].click
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


