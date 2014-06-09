Makaya2::App.controllers :torneo do
  
    get :new do
        @torneo = Torneo.new
        render 'torneo/new'
    end  

    get :index do
        @torneo = Torneo.todos_torneos
        render 'torneo/list'
    end

    

end
