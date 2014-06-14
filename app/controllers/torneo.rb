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
