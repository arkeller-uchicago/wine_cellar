class CreateBottleSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :bottle_sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
