class Equipo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombre_equipo, String

  belongs_to :torneo


	def self.find_by_torneo(torneo_id)
		Equipo.all(:torneo => torneo_id)
	end



end
