class CreateCellars < ActiveRecord::Migration[5.1]
  def change
    create_table :cellars do |t|
      t.integer :user_id
      t.integer :wine_id
      t.integer :transactions_id
      t.integer :amount
      t.integer :vitage_id
      t.string :remark
      t.integer :size_id
      t.date :trans_date

      t.timestamps
    end
  end
end
