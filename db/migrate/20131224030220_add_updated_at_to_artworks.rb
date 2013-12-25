class AddUpdatedAtToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :updated_at, :datetime
  end
end
