class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :breed
      t.string :auspice
      t.string :tribe
      t.string :concept

      t.timestamps
    end
  end
end
