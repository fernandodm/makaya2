require 'spec_helper'

describe "PartidoController" do
              
describe 'get :index' do

	 describe 'get :misPartidos, with => :torneo_id' do

	  it 'Quiero que responda ok y que muestre partido/list' do
	  	Makaya2::App.any_instance.should_receive(:render).with('partido/list')
	  	get 'partido/misPartidos/1'
	    last_response.should be_ok
	  end
	  
    end

  describe 'get :agregar, with => :partido_id' do

      it 'Quiero que responda ok y que muestre partido/new' do
        Makaya2::App.any_instance.should_receive(:render).with('partido/new')
        get 'partido/agregar/2'
        last_response.should be_ok
      end
        
  end
  
  describe 'get :cambiar_resultado => :partido_id' do

      it 'Quiero que responda ok y que muestre partido/editar' do
        Makaya2::App.any_instance.should_receive(:render).with('partido/edit')
        get 'partido/cambiar_resultado/1'
        last_response.should be_ok
      end
        
  end
end
end
