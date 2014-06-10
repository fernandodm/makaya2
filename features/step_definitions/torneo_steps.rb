Given(/^Voy a la pagina de creacion de torneo$/) do
 
 visit '/torneo/new'
end

When(/^Lleno los campos Titulo del torneo con "(.*?)"$/) do |arg1|
  fill_in('torneo[nombre]', :with => arg1)
end

When(/^cantidad de equipos con (\d+)$/) do |arg1|
  fill_in('torneo[cantEquipos]', :with => arg1)  
end

When(/^confirmo la creacion del torneo$/) do
  click_button('Crear')
end

Then(/^deberia ver "(.*?)"$/) do |arg1|
  visit '/torneo/latest'
  page.should have_content(arg1) 
  
end

