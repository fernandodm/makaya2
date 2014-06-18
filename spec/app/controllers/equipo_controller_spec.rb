require 'spec_helper'

describe "EquipoController" do
              
  describe 'get :misEquipos, with => :torneo_id' do

	  it 'Quiero que responda ok y que muestre equipo/list' do
	  	Makaya2::App.any_instance.should_receive(:render).with('equipo/list')
	  	get 'equipo/misEquipos/1'
	    last_response.should be_ok
	  end
	  
    end

  describe 'get :editar_crear, with => :torneo_id' do

      it 'Quiero que responda ok y que muestre equipo/new' do
        Makaya2::App.any_instance.should_receive(:render).with('equipo/new')
        get 'equipo/editar_crear/2'
        last_response.should be_ok
      end
        
  end
  
  describe 'get :editar, with => :torneo_id' do

      it 'Quiero que responda ok y que muestre equipo/editar' do
        Makaya2::App.any_instance.should_receive(:render).with('equipo/edit')
        get 'equipo/editar/1'
        last_response.should be_ok
      end
        
  end
    
    
end
