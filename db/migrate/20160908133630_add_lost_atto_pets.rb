class AddLostAttoPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :lost_at, :string
  end
end
