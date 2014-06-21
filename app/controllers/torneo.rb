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
      
      @torneo.equipos = @torneo.crearEquipos

      booleanEquiposImpares = false
      if(@torneo.cant_equipos % 2 != 0)
        eq = Equipo.new
        eq.nombre_equipo = "aux"
        @torneo.equipos.push(eq)
        booleanEquiposImpares = true
      end
      
      @torneo.fechas = @torneo.crearFixture

      if(booleanEquiposImpares)
        @torneo.equipos = @torneo.sacarAux
      end


      booleanNombreNoUsado = true
      
      @torneos = Torneo.all
      
      @torneos.each do | t |
        if  @torneo.nombre == t.nombre then
            booleanNombreNoUsado = false
        end
      end
      
      if @torneo.chequearValores && booleanNombreNoUsado then
      
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
