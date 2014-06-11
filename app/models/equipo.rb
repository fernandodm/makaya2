class Equipo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombre_equipo, String


end
