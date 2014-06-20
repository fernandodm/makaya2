Makaya2::App.controllers :partido do

    get :misPartidos, :with =>:fecha_id do
        @fecha = Fecha.get(params[:fecha_id])
        @partidos = Partido.find_by_fecha(@fecha)
        render 'partido/list'
    end

    get :editar, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        render 'partido/edit'
    end
    
    post :update, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        @partido_aux = Partido.new(params[:partido])
        @partidos = Partido.find_by_fecha(@partido.fecha)
        
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
      @partidos = Partido.find_by_fecha(@partido.fecha)
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
