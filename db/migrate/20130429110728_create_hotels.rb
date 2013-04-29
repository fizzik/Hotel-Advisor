class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.string :room_description
      t.string :breackfast
      t.integer :price

      t.timestamps
    end
  end
end
