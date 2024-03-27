class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.text :additional_info

      t.timestamps
    end
  end
end
