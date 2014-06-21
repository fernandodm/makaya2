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
	
	  it 'quiero que retorne una lista de 2 equipos cuando llamo al metodo crearEquipos con un torneo con dos equipos' do  
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 2
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 10
	    @torneo.pts_empatados = 1
	    ((@torneo.crearEquipos).length). should eq 2
	  end
	 
	  it 'quiero que retorne una lista de 2 equipos cuando llamo al metodo sacarAux con un torneo con 3 equipos' do  
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 3
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 10
	    @torneo.pts_empatados = 1
	    @torneo.equipos = @torneo.crearEquipos
	    eq = Equipo.new
	    eq.nombre_equipo = "aux"
	    @torneo.equipos.push(eq)
	    @torneo.equipos = @torneo.sacarAux
	    (@torneo.equipos.length). should eq 3
	  end
	  
	  it 'quiero que retorne una lista de 1 fecha cuando llamo al metodo crearFixture con un torneo con dos equipos' do  
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 2
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 10
	    @torneo.pts_empatados = 1
	    @torneo.equipos = @torneo.crearEquipos
	    ((@torneo.crearFixture).length). should eq 1
	  end
	
	  it 'quiero que retorne 2 cuando llamo al metodo numero_de_rondas con un torneo con 4 equipos' do  
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 4
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 10
	    @torneo.pts_empatados = 1
	    @torneo.equipos = @torneo.crearEquipos
	    (@torneo.numero_de_rondas). should eq 3
	  end
	  
	  it 'quiero que retorne 2 cuando llamo al metodo numero_de_partidos con un torneo con 4 equipos' do  
	    @torneo = Torneo.new
	    @torneo.nombre = "nombre"
	    @torneo.cant_equipos = 4
	    @torneo.pts_ganados = 3
	    @torneo.pts_perdidos = 10
	    @torneo.pts_empatados = 1
	    @torneo.equipos = @torneo.crearEquipos
	    (@torneo.numero_de_partidos). should eq 2
	  end
	end



end
