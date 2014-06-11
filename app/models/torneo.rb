class Torneo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial 
  property :nombre, String
  property :cant_equipos, Integer
	property :pts_ganados, Integer
	property :pts_empatados, Integer
	property :pts_perdidos, Integer
  
  validates_presence_of :nombre
  
  end
  
  
  
