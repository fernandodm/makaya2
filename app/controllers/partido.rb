Makaya2::App.controllers :partido do

    get :misPartidos, :with =>:torneo_id do
        @torneo = Torneo.get(params[:torneo_id])
        @partidos = Partido.find_by_torneo(@torneo)
        render 'partido/list'
    end

    get :editar, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        render 'partido/edit'
    end
    
    post :update, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        @partido_aux = Partido.new(params[:partido])
        @partidos = Partido.find_by_torneo(@partido.torneo)
        
        @partido.update(params[:partido])
        if @partido.save
          flash[:success] = 'Partido actualizado'
          redirect "/torneo/latest"
        else
          flash.now[:error] = 'Ah ocurrido un error'
          render 'partido/new'
        end  
    end
 
    get :editar_crear, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        render 'partido/new'
    end
    
    post :update_crear, :with => :partido_id do
      @partido = Partido.get(params[:partido_id])
      @partido_aux = Partido.new(params[:partido])
      @partidos = Partido.find_by_torneo(@partido.torneo)
      @partido.update(params[:partido])
      if @partido.save
        flash[:success] = 'Fixture creado'
        redirect "/torneo/latest"
      else
        flash.now[:error] = 'Ah ocurrido un error inesperado'
        render 'partido/new'
      end  
    end
end
