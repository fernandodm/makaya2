require 'spec_helper'

describe "PartidoController" do
              
describe 'get :index' do

	  it 'Quiero que responda ok y que muestre partido/index' do
	  	Makaya2::App.any_instance.should_receive(:render).with('partido/list')
	  	get '/partido'
	    last_response.should be_ok
	  end
	  
    end

    describe 'get :latest' do

	  it 'Quiero que responda ok y que muestre partido/latest' do
	  	Makaya2::App.any_instance.should_receive(:render).with('partido/list')
	  	get '/partido/latest'
	    last_response.should be_ok
	  end
	  
    end
         
    describe 'get :new' do

	  it 'Quiero que responda ok y que muestre partido/new' do
	  	Makaya2::App.any_instance.should_receive(:render).with('partido/new')
	  	get '/partido/new'
	    last_response.should be_ok
	  end
	  
	end
end
