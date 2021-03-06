class Partido
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  belongs_to :equipo1 , :model => Equipo
  belongs_to :equipo2 , :model => Equipo
  property :resultado1, Integer
  property :resultado2, Integer

  belongs_to :fecha


	def self.find_by_fecha(fecha_id)
		Partido.all(:fecha => fecha_id)
	end

    def chequearValores
        return @resultado1.to_i >= 0 && @resultado2.to_i >= 0
    
    end
end

