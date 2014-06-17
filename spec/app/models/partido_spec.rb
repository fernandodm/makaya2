require 'spec_helper'

describe Partido do

    describe 'model' do

		subject { @partido = Partido.new }

		it { should respond_to( :id) }
		it { should respond_to( :equipo1 ) }
		it { should respond_to( :equipo2 ) }
		it { should respond_to( :resultado1 ) }
		it { should respond_to( :resultado2 ) }

	end
	
	
	
end
