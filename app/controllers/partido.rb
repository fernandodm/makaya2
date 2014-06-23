Makaya2::App.controllers :partido do

    get :misPartidos, :with =>:fecha_id do
        @fecha = Fecha.get(params[:fecha_id])
        @partidos = Partido.find_by_fecha(@fecha)
        render 'partido/list'
    end

    get :agregar, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        render 'partido/new'
    end
    
    post :update, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
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
 
    get :cambiar_resultado, :with => :partido_id do
        @partido = Partido.get(params[:partido_id])
        render 'partido/edit'
    end
    
    post :update_crear, :with => :partido_id do
      @partido = Partido.get(params[:partido_id])
      @partidos = Partido.find_by_fecha(@partido.fecha)
      @partido.update(params[:partido])
      if @partido.save
        flash[:success] = 'Partido cargado'
        redirect "/torneo/latest"
      else
        flash.now[:error] = 'Ah ocurrido un error inesperado'
        render 'partido/new'
      end  
    end




end
