class Fecha
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :numero, Integer
	
	has n, :partidos	

  belongs_to :torneo

	def self.find_by_torneo(torneo_id)
		Fecha.all(:torneo => torneo_id)
	end
end
