Makaya2::App.controllers :fecha do

    get :misFechas, :with =>:torneo_id do
        @torneo = Torneo.get(params[:torneo_id])
        @fechas = Fecha.find_by_torneo(@torneo)
        render 'fecha/list'
    end
=begin    
    post :update, :with => :fecha_id do
        @fecha = Fecha.get(params[:fecha_id])
        @fecha_aux = Fecha.new(params[:fecha])
        @fechas = Fecha.find_by_torneo(@fecha.torneo)
        
        @fecha.update(params[:fecha])
        if @fecha.save
          flash[:success] = 'Fecha actualizado'
          redirect "/torneo/latest"
        else
          flash.now[:error] = 'Ah ocurrido un error'
          render 'fecha/list'
        end  
    end
     
    post :update_crear, :with => :fecha_id do
      @fecha = Fecha.get(params[:fecha_id])
      @fecha_aux = Fecha.new(params[:fecha])
      @fechas = Fecha.find_by_torneo(@fecha.torneo)
      @fecha.update(params[:fecha])
      if @fecha.save
        flash[:success] = 'Fixture creado'
        redirect "/torneo/latest"
      else
        flash.now[:error] = 'Ah ocurrido un error inesperado'
        render 'fecha/list'
      end  
    end
=end
end
