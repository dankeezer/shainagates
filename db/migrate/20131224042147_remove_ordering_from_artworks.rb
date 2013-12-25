class RemoveOrderingFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :ordering, :int
  end
end
