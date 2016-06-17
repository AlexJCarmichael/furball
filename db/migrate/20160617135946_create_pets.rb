class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.text :desc
      t.string :type
      t.string :breed
      t.string :weight

      t.timestamps
    end
  end
end
