require 'spec_helper'

describe "FechaController" do
              
  describe 'get :misFechas, with => :torneo_id' do

	  it 'Quiero que responda ok y que muestre fecha/list' do
	  	Makaya2::App.any_instance.should_receive(:render).with('fecha/list')
	  	get 'fecha/misFechas/1'
	    last_response.should be_ok
	  end
	  
    end
end
