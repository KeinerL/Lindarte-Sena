class CreateCarros < ActiveRecord::Migration[8.0]
  def change
    create_table :carros do |t|
      t.string :nombre
      t.string :color
      t.integer :ruedas

      t.timestamps
    end
  end
end
