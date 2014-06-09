class Torneo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombre, String
  property :cantEquipos, Integer
  
  validates_presence_of :nombre
  
  def self.todos_torneos
    Torneo.all()
  end
  
  
  end
  
  
  
