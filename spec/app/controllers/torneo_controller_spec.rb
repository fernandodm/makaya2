require 'spec_helper'

describe "TorneoController" do
    
    describe 'get :new' do

	  it 'Quiero que responda ok y que muestre torneo/new' do
	  	Makaya2::App.any_instance.should_receive(:render).with('torneo/new')
	  	get '/torneo/new'
	    last_response.should be_ok
	  end
	  
    end

end
