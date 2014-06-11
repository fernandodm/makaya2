require 'spec_helper'

describe Torneo do

    describe 'model' do

		subject { @torneo = Torneo.new }

		it { should respond_to( :id) }
		it { should respond_to( :nombre ) }
		it { should respond_to( :cant_equipos) }
		it { should respond_to( :pts_ganados) }
		it { should respond_to( :pts_perdidos ) }
		it { should respond_to( :pts_empatados) }

	end


end
