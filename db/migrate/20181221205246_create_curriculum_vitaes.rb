class CreateCurriculumVitaes < ActiveRecord::Migration
  def change
    create_table :curriculum_vitaes do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
