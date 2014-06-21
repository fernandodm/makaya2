Given(/^Existe un torneo "(.*?)"$/) do |arg1|
  visit '/torneo/new'
  fill_in('torneo[nombre]', :with => arg1)
end

Given(/^tiene (\d+) equipos$/) do |arg1|
  fill_in('torneo[cant_equipos]', :with => arg1)
end

Given(/^pts ganados (\d+)$/) do |arg1|
  fill_in('torneo[pts_ganados]', :with => arg1)
end

Given(/^pts empatados (\d+)$/) do |arg1|
  fill_in('torneo[pts_empatados]', :with => arg1)
end

Given(/^pts perdidos (\d+)$/) do |arg1|
  fill_in('torneo[pts_perdidos]', :with => arg1)
end

Given(/^lo creo$/) do
  click_button('Crear')
end

Given(/^voy a ver equipos$/) do
  click_link('Ver Equipos')
end

Given(/^voy a crear equipo$/) do
  first(:link, 'Crear equipo').click
end

When(/^lleno el campo nombre de equipo con "(.*?)"$/) do |arg1|
  fill_in('equipo[nombre_equipo]' , :with => arg1)
end

When(/^confirmo el equipo$/) do
  click_button('Crear')
end


Then(/^deberia ver equipo agregado al torneo$/) do
  page.should have_content(arg1) 
end
