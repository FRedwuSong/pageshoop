class ChangeStatusName < ActiveRecord::Migration[5.2]
  def change
    rename_column(:products, :status, :is_alive)
  end
end
