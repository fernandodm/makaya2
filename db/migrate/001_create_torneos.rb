migration 1, :create_torneos do
  up do
    create_table :torneos do
      column :id, Integer, :serial => true
      column :nombre, DataMapper::Property::String, :length => 255
      column :cantEquipos, DataMapper::Property::Integer
      end
  end

  down do
    drop_table :torneos
  end
end
