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
        @partido_aux = Partido.new(params[:partido])
        @bol = true
        if(@partido_aux.resultado1.to_i >= 0 && @partido_aux.resultado2.to_i >=0 && @partido_aux.resultado1.to_i != "" && @partido_aux.resultado2.to_i != "" ) then 
            @bol
        else 
            @bol = false         
        end
        
        
        if @bol then
           @partido.update(params[:partido])
           if @partido.save
            flash[:success] = 'Partido cargado'
            redirect "/torneo/latest"
           end
        else
            flash.now[:error] = 'Los valores ingresados son incorrectos'
            render 'partido/new'
        end  
  end
  
  get :cambiar_resultado, :with => :partido_id do
    @partido = Partido.get(params[:partido_id])
    render 'partido/edit'
  end

  post :update_crear, :with => :partido_id do
 
       @partido = Partido.get(params[:partido_id])
        @partido_aux = Partido.new(params[:partido])
        @bol = true
        if(@partido_aux.resultado1.to_i >= 0 && @partido_aux.resultado2.to_i >=0 && @partido_aux.resultado1 != "" && @partido_aux.resultado2.to_i != "" ) then 
            @bol
        else 
            @bol = false         
        end
        
        if @bol then
           @partido.update(params[:partido])
           if @partido.save
            flash[:success] = 'Partido cargado'
            redirect "/torneo/latest"
           end
        else
            flash.now[:error] = 'Los valores ingresados son incorrectos'
            render 'partido/new'
        end  
  end
 


end
