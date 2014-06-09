Makaya2::App.controllers :torneo do
  
    get :new do
        @torneo = Torneo.new
        render 'torneo/new'
    end  

    get :index do
        @torneo = Torneo.todos_torneos
        render 'torneo/list'
    end

    post :crear do
    	@torneo = Torneo.new(params[:torneo])
    	if @torneo.save
      		flash[:success] = 'Torneo creado'
      		redirect '/torneo/index'
    	else
      		flash.now[:error] = 'Nombre obligatorio'
      	render 'torneo/new'
    	end  

    end
    

end
