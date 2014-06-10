require 'spec_helper'

describe Equipo do

    describe 'model' do

		subject { @equipo = Equipo.new }

		it { should respond_to( :id) }
		it { should respond_to( :nombreEquipo ) }

	end

end
