class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.string :strength
      t.string :charisma
      t.string :perception
      t.string :dexterity
      t.string :manipulation
      t.string :intelligence
      t.string :stamina
      t.string :appearance
      t.string :wit

      t.timestamps
    end
  end
end
