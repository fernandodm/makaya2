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

    #HAY QUE MEJORAR CODIGO
    if (@partido.resultado1 != "") && (@partido.resultado2 != "")

        if((@partido.resultado1.to_i > 0) && (@partido.resultado2.to_i > 0))

          if @partido.save

            flash[:success] = 'Partido cargado'
            redirect "/torneo/latest"
          else

            flash.now[:error] = 'Ah ocurrido un error inesperado'
            render 'partido/new'
          end
        elsif((@partido.resultado1 == "0") && (@partido.resultado2 == "0"))
          flash[:success] = 'Partido cargado'
          redirect "/torneo/latest"
        else
          flash.now[:error] = 'Los valores ingresados son incorrectos'
          render 'partido/new'
        end
    else

      flash.now[:error] = 'Deben llenarse ambos campos'
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

    #HAY QUE MEJORAR CODIGO(DUPLICADO)
    if (@partido.resultado1 != "") && (@partido.resultado2 != "")

        if((@partido.resultado1.to_i > 0) && (@partido.resultado2.to_i > 0))

          if @partido.save

            flash[:success] = 'Partido cargado'
            redirect "/torneo/latest"
          else

            flash.now[:error] = 'Ah ocurrido un error inesperado'
            render 'partido/new'
          end
        elsif((@partido.resultado1 == "0") && (@partido.resultado2 == "0"))
          flash[:success] = 'Partido cargado'
          redirect "/torneo/latest"
        else
          flash.now[:error] = 'Los valores ingresados son incorrectos'
          render 'partido/new'
        end
    else

      flash.now[:error] = 'Deben llenarse ambos campos'
      render 'partido/new'
    end
  end
end
