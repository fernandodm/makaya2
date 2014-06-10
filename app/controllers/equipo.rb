Makaya2::App.controllers :equipo do
 
    get :index do
        @equipos = Equipo.all
        render 'equipo/list'
    end    
    
    get :new do
      @equipo = Equipo.new
      render 'equipo/new'
    end  
    
    get :latest do
      @equipos = Equipo.all
      render 'equipo/list'
    end

    post :crear do
      @equipo_nuevo = Equipo.new(params[:equipo])
      if @equipo_nuevo.save
     	flash[:success] = 'Equipo creado'
      	redirect '/equipo/latest'
      else
      	flash.now[:error] = 'Nombre obligatorio'
      	render 'equipo/new'
      end  

    end
 

end
