class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :wine_id
      t.integer :value
      t.text :comment
      t.integer :vintage_id
      t.integer :size_id

      t.timestamps
    end
  end
end
