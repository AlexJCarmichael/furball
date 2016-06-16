class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :username
      t.string :cell_number
      t.string :zip_code

      t.timestamps
    end
  end
end
