Makaya2::App.controllers :fecha do

    get :misFechas, :with =>:torneo_id do
        @torneo = Torneo.get(params[:torneo_id])
        @fechas = Fecha.find_by_torneo(@torneo)
    	render 'fecha/list'
    end

	get :agregar , :with => :partido_id do

		render 'torneo/latest'
	end
end
