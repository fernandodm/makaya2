Makaya2::App.controllers :fecha do

    get :misFechas, :with =>:torneo_id do
        @torneo = Torneo.get(params[:torneo_id])
        @fechas = Fecha.find_by_torneo(@torneo)
    	render 'fecha/list'
    end

end
