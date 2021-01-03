class CreateSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :sheets do |t|
      t.references :character, null: false, foreign_key: true
      t.references :stat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
