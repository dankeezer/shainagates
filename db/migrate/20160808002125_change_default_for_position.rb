class ChangeDefaultForPosition < ActiveRecord::Migration
  def up
  	change_column :artworks, :position, :integer, default: 9999
  end

  def down
  	change_column :artworks, :position, :integer
  end  
end
