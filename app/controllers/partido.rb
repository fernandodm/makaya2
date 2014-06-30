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
      $result1 = @partido.resultado1
	  $result2 = @partido.resultado2
      @partido_aux = Partido.new(params[:partido])
      
      if @partido_aux.chequearValores then
           @partido.update(params[:partido])
						#ya que se modificara el partido primero le quito los puntos
						#y datos correspondientes al equipo, para asi agregarle
						#los nuevos datos
						if($result1 == $result2)
							@partido.equipo1.pts -= @partido.equipo1.torneo.pts_empatados 
							@partido.equipo1.empatados -= 1
							@partido.equipo2.pts -= @partido.equipo2.torneo.pts_empatados  
							@partido.equipo2.empatados -= 1
						elsif($result1 > $result2)
							@partido.equipo1.pts -= @partido.equipo1.torneo.pts_ganados		
							@partido.equipo1.ganados -= 1
							@partido.equipo2.pts -= @partido.equipo2.torneo.pts_perdidos 
							@partido.equipo2.perdidos -= 1
						else
							@partido.equipo2.pts -= @partido.equipo2.torneo.pts_ganados		
							@partido.equipo2.ganados -= 1
							@partido.equipo1.pts -= @partido.equipo1.torneo.pts_perdidos 
							@partido.equipo1.perdidos -= 1	
					end
           if @partido.save		
						##Habria q mandarlo a otro metodo##
						##actualizo los equipos despues del editar partido
						####################################
						if(@partido.resultado1.to_i > @partido.resultado2.to_i)
							@partido.equipo1.pts += @partido.equipo1.torneo.pts_ganados		
							@partido.equipo1.ganados += 1
							@partido.equipo2.pts += @partido.equipo2.torneo.pts_perdidos 
							@partido.equipo2.perdidos += 1
						elsif(@partido.resultado1.to_i < @partido.resultado2.to_i)
							@partido.equipo2.pts += @partido.equipo2.torneo.pts_ganados		
							@partido.equipo2.ganados += 1
							@partido.equipo1.pts += @partido.equipo1.torneo.pts_perdidos 
							@partido.equipo1.perdidos += 1		
						else
							@partido.equipo1.pts += @partido.equipo1.torneo.pts_empatados 
							@partido.equipo1.empatados += 1
							@partido.equipo2.pts += @partido.equipo2.torneo.pts_empatados  
							@partido.equipo2.empatados += 1
						end
						@partido.equipo1.save
						@partido.equipo2.save
						############################################					
            flash[:success] = 'Partido cargado'
            redirect "/fecha/misFechas/#{@partido.fecha.torneo.id}"
           else
            flash.now[:error] = 'Los valores ingresados son incorrectos'
            render 'partido/new'
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
        
        if @partido_aux.chequearValores then
           @partido.update(params[:partido])
           if @partido.save
						##Habria q mandarlo a otro metodo##
						##actualizo los equipos despues del partido
						####################################
						if(@partido.resultado1.to_i > @partido.resultado2.to_i)
							@partido.equipo1.pts += @partido.equipo1.torneo.pts_ganados		
							@partido.equipo1.ganados += 1
							@partido.equipo2.pts += @partido.equipo2.torneo.pts_perdidos 
							@partido.equipo2.perdidos += 1
						elsif(@partido.resultado1.to_i < @partido.resultado2.to_i)
							@partido.equipo2.pts += @partido.equipo2.torneo.pts_ganados		
							@partido.equipo2.ganados += 1
							@partido.equipo1.pts += @partido.equipo1.torneo.pts_perdidos 
							@partido.equipo1.perdidos += 1		
						else
							@partido.equipo1.pts += @partido.equipo1.torneo.pts_empatados 
							@partido.equipo1.empatados += 1
							@partido.equipo2.pts += @partido.equipo2.torneo.pts_empatados  
							@partido.equipo2.empatados += 1
						end
						@partido.equipo1.save
						@partido.equipo2.save		
						##################################
            flash[:success] = 'Partido cargado'
            redirect "/fecha/misFechas/#{@partido.fecha.torneo.id}"
           else
            flash.now[:error] = 'Los valores ingresados son incorrectos'
            render 'partido/new'
           end
        else
            flash.now[:error] = 'Los valores ingresados son incorrectos'
            render 'partido/new'
        end 
  end


end
