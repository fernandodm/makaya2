Given(/^Voy a la pagina de creacion de torneo$/) do
 
 visit '/torneo/new'
end

When(/^Lleno los campos Titulo del torneo con "(.*?)"$/) do |arg1|
  fill_in('torneo[nombre]', :with => arg1)
end

When(/^cantidad de equipos con (\d+)$/) do |arg1|
  fill_in('torneo[cant_equipos]', :with => arg1)  
end

When(/^confirmo la creacion del torneo$/) do
  click_button('Crear')
end

Then(/^deberia ver "(.*?)"$/) do |arg1|
  
  page.should have_content(arg1) 
  
end

Given(/^que estoy en la pagina de creacion de torneo$/) do
  visit 'torneo/new'
end

When(/^lleno el titulo con "(.*?)"$/) do |arg1|
  fill_in('torneo[nombre]', :with => arg1)
end

When(/^el sistema de puntos ganados (\d+)$/) do |arg1|
  fill_in('torneo[pts_ganados]', :with => arg1)
end

When(/^empatados (\d+)$/) do |arg1|
  fill_in('torneo[pts_empatados]', :with => arg1)
end

When(/^perdidos (\d+)$/) do |arg1|
  fill_in('torneo[pts_perdidos]', :with => arg1)
end

