class Equipo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombreEquipo, String


end
