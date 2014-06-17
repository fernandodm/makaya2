class Partido
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :equipo1, String
	property :equipo2, String
	property :resultado1, String
	property :resultado2, String

  belongs_to :torneo


	def self.find_by_torneo(torneo_id)
		Partido.all(:torneo => torneo_id)
	end
end
