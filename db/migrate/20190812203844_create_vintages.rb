class CreateVintages < ActiveRecord::Migration[5.1]
  def change
    create_table :vintages do |t|
      t.integer :year

      t.timestamps
    end
  end
end
