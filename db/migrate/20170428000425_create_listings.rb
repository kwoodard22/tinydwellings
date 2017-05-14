class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.integer :zip_code
      t.string :summary
      t.text :description
      t.boolean :currently_listed
      t.timestamp :date_last_listed

      t.timestamps
    end
  end
end
