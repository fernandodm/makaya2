migration 3, :create_partidos do
  up do
    create_table :partidos do
      column :id, Integer, :serial => true
      column :resultado1, Integer
      column :resultado2, Integer
      column :equipo1_id, Integer
      column :equipo2_id, Integer
      column :fecha_id, Integer
    end
  end

  down do
    drop_table :partidos
  end
end
