migration 3, :create_partidos do
  up do
    create_table :partidos do
      column :id, Integer, :serial => true
      column :equipo1, DataMapper::Property::String, :length => 255
      column :resultado1, Integer
      column :equipo2, DataMapper::Property::String, :length => 255
      column :resultado2, Integer
      column :torneo_id, Integer
    end
  end

  down do
    drop_table :partidos
  end
end
