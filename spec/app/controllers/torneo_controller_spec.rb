require 'spec_helper'

describe "TorneoController" do
    
    describe 'get :index' do

	  it 'Quiero que responda ok y que muestre torneo/index' do
	  	Makaya2::App.any_instance.should_receive(:render).with('torneo/list')
	  	get '/torneo'
	    last_response.should be_ok
	  end
	  
    end

    describe 'get :latest' do
    
      it 'Quiero que responda ok y que muestre torneo/latest' do
        Makaya2::App.any_instance.should_receive(:render).with('torneo/list')
        get '/torneo/latest'
        last_response.should be_ok
      end
      
    end    
    
    
    describe 'get :new' do

	  it 'Quiero que responda ok y que muestre torneo/new' do
	  	Makaya2::App.any_instance.should_receive(:render).with('torneo/new')
	  	get '/torneo/new'
	    last_response.should be_ok
	  end
	  
    end


    
    

end
