class CreateUrbanOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :urban_owners do |t|
      t.date :fecha_oc
      t.date :fecha_nac
      t.string :p_nombre
      t.string :s_nombre
      t.string :p_apellido
      t.string :s_apellido
      t.string :c_apellido
      t.string :nombre_u
      t.string :organizacion
      t.string :sexo
      t.string :cedula
      t.string :estado_c
      t.string :telefono
      t.string :apartado
      t.string :ocupacion
      t.string :dirreccion
      t.string :firma
      t.references :urbano, null: false, foreign_key: true

      t.timestamps
    end
  end
end
