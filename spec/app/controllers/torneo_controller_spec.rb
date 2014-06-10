require 'spec_helper'

describe "TorneoController" do
    describe 'default' do

  	    before do
     		get "/torneo/latest"
  	    end

  	it 'should return Lista de torneos' do
    	last_response.body.include? '!!!!'
  	end

  end

end
