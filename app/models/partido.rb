class Partido
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  belongs_to :equipo1 , :model => Equipo
  belongs_to :equipo2 , :model => Equipo
  property :resultado1, String
  property :resultado2, String

  belongs_to :fecha


	def self.find_by_fecha(fecha_id)
		Partido.all(:fecha => fecha_id)
	end
end
