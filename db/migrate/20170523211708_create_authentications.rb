class CreateAuthentications < ActiveRecord::Migration[5.1]
  def change
    create_table :authentications do |t|
      t.integer :user_id
      t.string :email
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
