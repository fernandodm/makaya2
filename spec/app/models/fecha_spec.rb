require 'spec_helper'

describe Fecha do

    describe 'model' do

		subject { @fecha = Fecha.new }

		it { should respond_to( :id) }
		it { should respond_to( :numero ) }
	end	
end
