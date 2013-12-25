class AddCreatedAtToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :created_at, :datetime
  end
end
