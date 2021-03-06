class Equipo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombre_equipo, String
	property :pts, Integer, :default => 0
	property :ganados, Integer, :default => 0
	property :perdidos, Integer, :default => 0 
	property :empatados, Integer, :default => 0 

  belongs_to :torneo

	def self.find_by_torneo(torneo_id)
		Equipo.all(:torneo => torneo_id, :order => [:pts.desc, :ganados.desc, :empatados.desc])
	end



end
