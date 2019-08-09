class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :bottle_size_id
      t.integer :type_id
      t.integer :coutry_id
      t.integer :region_id
      t.integer :producer_id
      t.string :picture

      t.timestamps
    end
  end
end
