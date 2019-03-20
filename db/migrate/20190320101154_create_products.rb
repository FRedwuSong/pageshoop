class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :status
      t.integer :count

      t.timestamps
    end
  end
end
