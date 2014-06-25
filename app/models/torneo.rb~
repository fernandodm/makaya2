class Torneo
  include DataMapper::Resource


  # property <name>, <type>
  property :id, Serial 
  property :nombre, String
  property :cant_equipos, Integer
  property :pts_ganados, Integer
  property :pts_empatados, Integer
  property :pts_perdidos, Integer
  
  has n, :equipos
  has n, :fechas
  
  
  def chequearValores
    if cant_equipos < 1 then
      return false
    end
    
    if pts_ganados < pts_empatados || pts_ganados < pts_perdidos then
      return false
    end
    
    if pts_empatados < pts_perdidos then
      return false
    end  
    return true
  end
  
  
  def crearEquipos
    aryEquipos = Array.new
    for i in 1 .. (@cant_equipos) do
      eq = Equipo.new
      aryEquipos << eq
    end
    return aryEquipos
  
  end
  
  def crearFixture
    aryFixture = Array.new
    
    
    numero_de_rondas.times do |i|
      
      fechaAux = Fecha.new
      fechaAux.numero = i+1
      fechaAux.partidos = []
      
      numero_de_partidos.times do |index|
        equipo_1 = @equipos[index]
        equipo_2 = @equipos[numero_de_rondas - index]
        if(equipo_1.nombre_equipo != "aux" && equipo_2.nombre_equipo != "aux" )
            partido = Partido.new
            partido.equipo1 = equipo_1
            partido.equipo2 = equipo_2
            fechaAux.partidos << partido
        end
        
      end
      
      aryFixture << fechaAux
      
      rotar_equipos!
    
    end

    return aryFixture

  end
  
  
  def sacarAux
    equipoAux = Array.new
    @equipos.each do |equipo|
        if(equipo.nombre_equipo != "aux")
          equipoAux << equipo
        end    
    end
    
   return equipoAux
  
  end

  def rotar_equipos!
    last = @equipos.pop
    @equipos.insert(1, last)
  end

  def numero_de_rondas
    return (@equipos.length - 2) + 1
  end

  def numero_de_partidos
    return (@equipos.length / 2)
  end

  
end
  
