class Torneo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial 
  property :nombre, String
  property :cant_equipos, Integer
  
  validates_presence_of :nombre
  
  end
  
  
  
