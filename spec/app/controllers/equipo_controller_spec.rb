require 'spec_helper'

describe "EquipoController" do
     
     
     describe 'get :new' do

	  it 'Quiero que responda ok y que muestre equipo/new' do
	  	Makaya2::App.any_instance.should_receive(:render).with('equipo/new')
	  	get '/equipo/new'
	    last_response.should be_ok
	  end
	  
    end
end
