migration 4, :create_fecha do
  up do
    create_table :fechas do
      column :id, Integer, :serial => true
      column :numero, Integer
      column :torneo_id, Integer
    end
  end

  down do
    drop_table :fechas
  end
end
