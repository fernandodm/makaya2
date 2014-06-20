Makaya2::App.controllers :torneo do
  
    get :index do
        @torneos = Torneo.all
        render 'torneo/list'
    end    
    
    get :new do
      @torneo = Torneo.new
      render 'torneo/new'
    end  
    
    get :latest do
      @torneos = Torneo.all
      render 'torneo/list'
    end

    post :crear do
      @torneo= Torneo.new(params[:torneo])
      ary = Array.new
			#aryPartido = Array.new
		
			#if ((@torneo.cant_equipos % 2) != 0)
      #	cantPartidosPorFecha = 1
      #	cantFechas = @torneo.cant_equipos
      #	while ((cantPartidosPorFecha + 1)*2 < cantFechas)
      #		cantPartidosPorFecha += 1
      #	end
      #else
      #	cantPartidosPorFecha = @torneo.cant_equipos/2
      #	cantFechas = @torneo.cant_equipos - 1	
      #end

      #cantPartidos = cantPartidosPorFecha * cantFechas

      #for i in 1 .. (cantPartidos) do
      # 	part = Partido.new
      # 	aryPartido.push(part)
      #end

      #@torneo.partidos = aryPartido

			aryFechas = Array.new
			cantFechas = @torneo.cant_equipos 
			if((@torneo.cant_equipos % 2) == 0)
				cantFechas -= 1
			end
			
			partidosPorFecha = 	@torneo.cant_equipos/2		
			

			for i in 1 .. (cantFechas) do
				aryPartidos = Array.new
				for x in 1 .. (partidosPorFecha) do
        		partido = Partido.new
        		aryPartidos.push(partido)
      	end
        fecha = Fecha.new
				fecha.numero = i
				fecha.partidos = aryPartidos
        aryFechas.push(fecha)
      end
	

			@torneo.fechas = aryFechas	
			
      for i in 1 .. (@torneo.cant_equipos) do
        eq = Equipo.new
        ary.push(eq)
      end
      @torneo.equipos = ary
      
      @bol = true
      
      @torneos = Torneo.all
      
      @torneos.each do | t |
        if  @torneo.nombre == t.nombre then
            @bol = false
        end
      end
      
      if @torneo.chequearValores && @bol then
      
          if @torneo.save
         	flash[:success] = 'Torneo creado'
          	redirect '/torneo/latest'
          end
      
      else
      	flash.now[:error] = 'Error campo incorrecto'
      	render 'torneo/new'
      end  

    end


    
end
