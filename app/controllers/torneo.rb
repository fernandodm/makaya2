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
      @torneo_nuevo = Torneo.new(params[:torneo])
      if @torneo_nuevo.save
     	flash[:success] = 'Torneo creado'
      	redirect '/torneo/index'
      else
      	flash.now[:error] = 'Nombre obligatorio'
      	render 'torneo/new'
      end  

    end

    
end
