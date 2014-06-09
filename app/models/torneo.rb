class Torneo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombre, String
  property :fechas, []
  property :cantEquipos, Integer
  property :ptsGanados, Integer
  property :ptsEmpate, Integer
  property :ptsPerdido, Integer
end
