class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :publisher
      t.integer :year
      t.string :condition
      t.string :genre
      t.string :platform
      t.string :region
      t.text :description
      t.string :sale_type
      t.string :location
      t.decimal :price, precision: 8, scale: 2
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
