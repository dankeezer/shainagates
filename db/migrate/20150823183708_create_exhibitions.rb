class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :location
      t.string :link

      t.timestamps
    end
  end
end
