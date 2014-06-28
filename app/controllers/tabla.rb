Makaya2::App.controllers :tabla do
	 

	get :misEquipos, :with =>:torneo_id do
    @torneo = Torneo.get(params[:torneo_id])
    @equipos = Equipo.find_by_torneo(@torneo)
    render 'tabla/list'
	end
end
