class ChangeProductIsAliveType < ActiveRecord::Migration[5.2]
  def change
    change_column(:products, :is_alive, :boolean)
  end
end
