require 'spec_helper'

describe "PageController" do
   
    describe 'default' do

  	    before do
     		get "/"
  	    end

  	it 'should return Bienvenido a la primera pagina para crear su torneo!!' do
    	last_response.body.include? 'Bienvenido a la primera pagina para crear su torneo!!'
  	end

  end

end
