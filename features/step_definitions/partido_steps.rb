When(/^voy a ver partidos$/) do
	visit '/partido/list'
end

Then(/^deberia ver (\d+) fechas vacias$/) do |arg1|
	page.should have_content("")
end
