require 'spec_helper'

describe "EquipoController" do
     
     describe 'get :index' do

	  it 'Quiero que responda ok y que muestre equipo/index' do
	  	Makaya2::App.any_instance.should_receive(:render).with('equipo/list')
	  	get '/equipo'
	    last_response.should be_ok
	  end
	  
    end

    describe 'get :latest' do

	  it 'Quiero que responda ok y que muestre equipo/latest' do
	  	Makaya2::App.any_instance.should_receive(:render).with('equipo/list')
	  	get '/equipo/latest'
	    last_response.should be_ok
	  end
	  
    end
         
     describe 'get :new' do

	  it 'Quiero que responda ok y que muestre equipo/new' do
	  	Makaya2::App.any_instance.should_receive(:render).with('equipo/new')
	  	get '/equipo/new'
	    last_response.should be_ok
	  end
	  
    end 
    
end
