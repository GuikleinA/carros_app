class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :nome
      t.string :modelo
      t.integer :ano
      t.boolean :located

      t.timestamps
    end
  end
end
