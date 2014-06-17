class Torneo
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial 
  property :nombre, String
  property :cant_equipos, Integer
  property :pts_ganados, Integer
  property :pts_empatados, Integer
  property :pts_perdidos, Integer
  
  has n, :equipos
  
  validates_presence_of :nombre
  
  
  def chequearValores
    if cant_equipos < 1 then
      return false
    end
    
    if pts_ganados < pts_empatados || pts_ganados < pts_perdidos then
      return false
    end
    
    if pts_empatados < pts_perdidos then
      return false
    end  
    return true
  end
  
  
end
  
  
  
