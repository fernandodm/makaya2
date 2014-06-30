Makaya2::App.controllers :equipo do

    get :misEquipos, :with =>:torneo_id do
        @torneo = Torneo.get(params[:torneo_id])
        @equipos = Equipo.find_by_torneo(@torneo)
        render 'equipo/list'
    end

    get :editar, :with => :equipo_id do
        @equipo = Equipo.get(params[:equipo_id])
        render 'equipo/edit'
    end
    
    post :update, :with => :equipo_id do
        @equipo = Equipo.get(params[:equipo_id])
        @equipo_aux = Equipo.new(params[:equipo])
        @equipos = Equipo.find_by_torneo(@equipo.torneo)
        @bol = true
        @equipos.each do |eq|
            if(@equipo_aux.nombre_equipo == eq.nombre_equipo) then 
            @bol = @bol && false 
            else @bol = @bol && true 
            end
        end
        
        if @bol then
           @equipo.update(params[:equipo])
           if @equipo.save
            flash[:success] = 'Equipo actualizado'
            redirect "/equipo/misEquipos/#{@equipo.torneo.id}"
           end
        else
            flash.now[:error] = 'El nombre esta usado'
            render 'equipo/new'
        end  
    end
 
    get :editar_crear, :with => :equipo_id do
        @equipo = Equipo.get(params[:equipo_id])
        render 'equipo/new'
    end
    
    post :update_crear, :with => :equipo_id do
        @equipo = Equipo.get(params[:equipo_id])
        @equipo_aux = Equipo.new(params[:equipo])
        @equipos = Equipo.find_by_torneo(@equipo.torneo)
        @bol = true
        @equipos.each do |eq|
            if(@equipo_aux.nombre_equipo == eq.nombre_equipo) then 
            @bol = @bol && false 
            else @bol = @bol && true 
            end
        end
        
        if @bol then
           @equipo.update(params[:equipo])
           if @equipo.save
            flash[:success] = 'Equipo creado'
            redirect "/equipo/misEquipos/#{@equipo.torneo.id}"
           end
        else
            flash.now[:error] = 'El nombre esta usado'
            render 'equipo/new'
        end  
    end


end
