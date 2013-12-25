class AddFilepickerUrlToArtworks < ActiveRecord::Migration
  def up
    add_column :artworks, :filepicker_url, :string
  end

  def down
    remove_column :artworks, :filepicker_url
  end

end
