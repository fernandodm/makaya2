migration 2, :create_equipos do
  up do
    create_table :equipos do
      column :id, Integer, :serial => true
      column :nombre_equipo, DataMapper::Property::String, :length => 255
      column :torneo_id, Integer
			column :pts, Integer
			column :ganados, Integer
			column :perdidos, Integer 
			column :empatados, Integer 
    end
  end

  down do
    drop_table :equipos
  end
end
