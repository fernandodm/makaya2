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
	
	describe 'metodos' do
	
	  it 'quiero que retorne verdadero si el equipo=> {nombre = "nombre", cant_equipo = 2, pts_ganados = 3, pts_empatados = 1 , pts_perdidos = 0 } y llamo al metodo chequearValores' do
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 2
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 0
	    @torneo.pts_empatados = 1
	    (@torneo.chequearValores). should eq true
	    
	  
	  end
	  
	  it 'quiero que retorne false si el equipo=> {nombre = "nombre", cant_equipo = -2, pts_ganados = 3, pts_empatados = 1 , pts_perdidos = 0 } y llamo al metodo chequearValores' do
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = (-2)
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 0
	    @torneo.pts_empatados = 1
	    (@torneo.chequearValores). should eq false
	    
	  
	  end
	  
	  
	  it 'quiero que retorne false si el equipo=> {nombre = "nombre", cant_equipo = 2, pts_ganados = 3, pts_empatados = 10 , pts_perdidos = 0 } y llamo al metodo chequearValores' do
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 2
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 0
	    @torneo.pts_empatados = 10
	    (@torneo.chequearValores). should eq false
	    
	  
	  end
	  
      it 'quiero que retorne false si el equipo=> {nombre = "nombre", cant_equipo = 2, pts_ganados = 3, pts_empatados = 1 , pts_perdidos = 10 } y llamo al metodo chequearValores' do
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 2
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 10
	    @torneo.pts_empatados = 1
	    (@torneo.chequearValores). should eq false
	    
	  
	  end  
	  
	  
	end



end
