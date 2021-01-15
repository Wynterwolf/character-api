class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :cname
      t.string :breed
      t.string :auspice
      t.string :tribe
      t.string :concept
      t.integer :strength
      t.integer :charisma
      t.integer :perception
      t.integer :dexterity
      t.integer :manipulation
      t.integer :intelligence
      t.integer :stamina
      t.integer :appearance
      t.integer :wit

      t.timestamps
    end
  end
end
