class CreateJoinTableListingFeature < ActiveRecord::Migration[5.1]
  def change
    create_join_table :listings, :features do |t|
      t.index [:listing_id, :feature_id]
      t.index [:feature_id, :listing_id]
    end
  end
end
