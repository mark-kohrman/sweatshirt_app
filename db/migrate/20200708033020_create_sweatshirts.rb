class CreateSweatshirts < ActiveRecord::Migration[6.0]
  def change
    create_table :sweatshirts do |t|
      t.string :fabric
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
