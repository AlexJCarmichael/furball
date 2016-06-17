class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name, null: false
      t.text :desc, null: false
      t.string :category, null: false
      t.string :breed
      t.string :weight

      t.timestamps
    end
  end
end
