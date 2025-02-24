class CreateTests < ActiveRecord::Migration[8.0]
  def change
    create_table :tests do |t|
      t.string :nombre
      t.string :edad

      t.timestamps
    end
  end
end
