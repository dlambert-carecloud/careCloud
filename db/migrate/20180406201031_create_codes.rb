class CreateCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :codes do |t|
      t.string :code
      t.string :title
      t.text :includes
      t.text :section_name
      t.text :excludes1
      t.text :excludes2

      t.text :inclusionCodes
      t.text :inclusionTerm
      t.integer :parent_id
      t.integer :chapter_number, foreign_key: true

      t.timestamps
    end
  end
end
